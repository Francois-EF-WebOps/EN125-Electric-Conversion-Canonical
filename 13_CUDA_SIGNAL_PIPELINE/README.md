# CUDA signal pipeline — low-cost applied GPU workstream

**Status:** implementation scaffold committed; GPU execution and performance claims remain unverified until a public GPU notebook run is captured.

## Why this belongs in the EN125 dossier

The vehicle control concept includes measured signals (for example, throttle-position and temperature channels). This workstream uses a synthetic, explicitly non-vehicle dataset to demonstrate a transferable signal-processing workload: offset/gain calibration followed by a causal FIR filter. It is a software portfolio exercise only; it does not control a vehicle or establish safety suitability.

## Reuse-first approach

Do not clone or vendor the full CUDA Toolkit or NVIDIA sample tree into this repository. Use upstream examples as reference material and preserve attribution:

- [NVIDIA CUDA Samples](https://github.com/NVIDIA/cuda-samples) — official examples for kernel launch, memory handling, reductions, device queries and performance concepts.
- [NVIDIA CUDA Library Samples](https://github.com/NVIDIA/CUDALibrarySamples) — Apache-2.0 examples for CUDA libraries including cuFFT and NPP.
- [CUDA C++ Programming Guide](https://docs.nvidia.com/cuda/cuda-c-programming-guide/)
- [CUDA C++ Best Practices Guide](https://docs.nvidia.com/cuda/cuda-c-best-practices-guide/)

The small FIR kernel in this folder is original project code, not copied NVIDIA sample code. The current implementation is intentionally simple so correctness and data movement can be inspected before attempting optimization.

## Run without buying hardware

1. Open [Kaggle Notebooks](https://www.kaggle.com/code).
2. Create a notebook and enable a GPU accelerator in notebook settings (availability and quotas are controlled by Kaggle).
3. Clone this repository in a notebook cell:
   `!git clone https://github.com/Francois-EF-WebOps/EN125-Electric-Conversion-Canonical.git`
4. Change into the portfolio branch checkout or download this branch's source file directly from GitHub.
5. Compile and run:
   ```bash
   nvcc -O3 -std=c++17 13_CUDA_SIGNAL_PIPELINE/fir_benchmark.cu -o fir_benchmark
   ./fir_benchmark
   ```
6. Preserve the complete stdout, GPU model, driver version, CUDA compiler version, notebook date and accelerator type in `evidence/` before making any performance claim.

Kaggle's GPU is optional and not guaranteed at every moment. If no GPU is available, the CPU reference can still be compiled with a standard C++17 compiler, but that is not CUDA execution evidence.

## Workload definition

For input sample (x[n]), calibration parameters offset (b) and gain (g), and FIR taps (h[k]):

`u[n] = (x[n] - b) * g`

`y[n] = sum(k=0..T-1) h[k] * u[n-k]`

Samples before index zero are treated as zero. This is a synthetic benchmark; coefficients and inputs are not validated vehicle sensor parameters.

## Acceptance gates

- [ ] Compile with NVIDIA `nvcc` on an available CUDA GPU runtime.
- [ ] CPU and CUDA results agree within the tolerance in the source.
- [ ] Run at multiple input sizes and tap counts.
- [ ] Record GPU model, driver and CUDA versions.
- [ ] Report both kernel-only timing and end-to-end timing including host/device copies.
- [ ] Profile at least one run with Nsight Compute if available; otherwise explicitly mark profiling as pending.
- [ ] Only claim a speedup if repeated measurements support it; explain small-workload transfer overhead.

## Evidence status

No GPU execution, profiler capture, benchmark result or speedup is claimed by this commit. Add raw logs and a concise report only after a real run. Never substitute a simulated result or upstream sample output for project evidence.
