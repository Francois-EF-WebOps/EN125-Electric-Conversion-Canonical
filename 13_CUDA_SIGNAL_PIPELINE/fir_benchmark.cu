// Original project benchmark: calibrated causal FIR on synthetic signals.
// This is a portfolio exercise, not vehicle-control or safety-certified software.
#include <cuda_runtime.h>
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>

#define CUDA_CHECK(call) do { \
    cudaError_t err = (call); \
    if (err != cudaSuccess) { \
        std::cerr << "CUDA error at " << __FILE__ << ":" << __LINE__ \
                  << ": " << cudaGetErrorString(err) << "\n"; \
        return 2; \
    } \
} while (0)

constexpr float OFFSET = 0.125f;
constexpr float GAIN = 1.75f;
constexpr float TOLERANCE = 2.0e-4f;

__global__ void calibrated_fir(const float* input, const float* taps,
                               float* output, int n, int tap_count,
                               float offset, float gain) {
    const int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i >= n) return;

    float acc = 0.0f;
    for (int k = 0; k < tap_count; ++k) {
        const int j = i - k;
        if (j >= 0) {
            const float calibrated = (input[j] - offset) * gain;
            acc += taps[k] * calibrated;
        }
    }
    output[i] = acc;
}

static void cpu_reference(const std::vector<float>& input,
                          const std::vector<float>& taps,
                          std::vector<float>& output) {
    const int n = static_cast<int>(input.size());
    for (int i = 0; i < n; ++i) {
        float acc = 0.0f;
        for (int k = 0; k < static_cast<int>(taps.size()); ++k) {
            const int j = i - k;
            if (j >= 0) {
                const float calibrated = (input[j] - OFFSET) * GAIN;
                acc += taps[k] * calibrated;
            }
        }
        output[i] = acc;
    }
}

int main(int argc, char** argv) {
    const int n = (argc > 1) ? std::max(1, std::atoi(argv[1])) : (1 << 20);
    const int tap_count = (argc > 2) ? std::max(1, std::atoi(argv[2])) : 31;
    const int repeats = (argc > 3) ? std::max(1, std::atoi(argv[3])) : 10;

    std::mt19937 rng(20261122);
    std::uniform_real_distribution<float> dist(-1.0f, 1.0f);
    std::vector<float> input(n), taps(tap_count), cpu(n), gpu(n);
    for (auto& v : input) v = dist(rng);
    for (auto& v : taps) v = 1.0f / static_cast<float>(tap_count);

    const auto cpu_start = std::chrono::steady_clock::now();
    cpu_reference(input, taps, cpu);
    const auto cpu_end = std::chrono::steady_clock::now();
    const double cpu_ms =
        std::chrono::duration<double, std::milli>(cpu_end - cpu_start).count();

    float *d_input = nullptr, *d_taps = nullptr, *d_output = nullptr;
    CUDA_CHECK(cudaMalloc(&d_input, n * sizeof(float)));
    CUDA_CHECK(cudaMalloc(&d_taps, tap_count * sizeof(float)));
    CUDA_CHECK(cudaMalloc(&d_output, n * sizeof(float)));

    cudaEvent_t kernel_start, kernel_end;
    CUDA_CHECK(cudaEventCreate(&kernel_start));
    CUDA_CHECK(cudaEventCreate(&kernel_end));

    const int threads = 256;
    const int blocks = (n + threads - 1) / threads;
    double kernel_ms_total = 0.0;
    double end_to_end_ms_total = 0.0;

    for (int r = 0; r < repeats; ++r) {
        const auto total_start = std::chrono::steady_clock::now();
        CUDA_CHECK(cudaMemcpy(d_input, input.data(), n * sizeof(float), cudaMemcpyHostToDevice));
        CUDA_CHECK(cudaMemcpy(d_taps, taps.data(), tap_count * sizeof(float), cudaMemcpyHostToDevice));

        CUDA_CHECK(cudaEventRecord(kernel_start));
        calibrated_fir<<<blocks, threads>>>(d_input, d_taps, d_output,
                                             n, tap_count, OFFSET, GAIN);
        CUDA_CHECK(cudaGetLastError());
        CUDA_CHECK(cudaEventRecord(kernel_end));
        CUDA_CHECK(cudaEventSynchronize(kernel_end));

        float one_kernel_ms = 0.0f;
        CUDA_CHECK(cudaEventElapsedTime(&one_kernel_ms, kernel_start, kernel_end));
        kernel_ms_total += one_kernel_ms;

        CUDA_CHECK(cudaMemcpy(gpu.data(), d_output, n * sizeof(float), cudaMemcpyDeviceToHost));
        const auto total_end = std::chrono::steady_clock::now();
        end_to_end_ms_total +=
            std::chrono::duration<double, std::milli>(total_end - total_start).count();
    }

    float max_abs_error = 0.0f;
    for (int i = 0; i < n; ++i)
        max_abs_error = std::max(max_abs_error, std::fabs(cpu[i] - gpu[i]));

    int device = 0;
    cudaDeviceProp prop{};
    CUDA_CHECK(cudaGetDevice(&device));
    CUDA_CHECK(cudaGetDeviceProperties(&prop, device));

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "GPU: " << prop.name << "\n";
    std::cout << "Input samples: " << n << "\n";
    std::cout << "FIR taps: " << tap_count << "\n";
    std::cout << "Repeats: " << repeats << "\n";
    std::cout << "CPU reference: " << cpu_ms << " ms\n";
    std::cout << "CUDA kernel mean: " << kernel_ms_total / repeats << " ms\n";
    std::cout << "CUDA end-to-end mean (H2D + kernel + D2H): "
              << end_to_end_ms_total / repeats << " ms\n";
    std::cout << "Maximum absolute error: " << max_abs_error << "\n";
    std::cout << "Correctness: "
              << (max_abs_error <= TOLERANCE ? "PASS" : "FAIL") << "\n";

    CUDA_CHECK(cudaEventDestroy(kernel_start));
    CUDA_CHECK(cudaEventDestroy(kernel_end));
    CUDA_CHECK(cudaFree(d_input));
    CUDA_CHECK(cudaFree(d_taps));
    CUDA_CHECK(cudaFree(d_output));

    return (max_abs_error <= TOLERANCE) ? 0 : 1;
}
