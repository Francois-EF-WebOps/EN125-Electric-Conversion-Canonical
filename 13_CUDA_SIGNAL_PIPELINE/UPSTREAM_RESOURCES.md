# Upstream CUDA resources and reuse register

| Resource | What we reuse | What we do not claim | Licence / attribution action |
|---|---|---|---|
| [NVIDIA/cuda-samples](https://github.com/NVIDIA/cuda-samples) | Learning reference for launch geometry, device queries, memory transfers, reductions and performance patterns | The sample suite is not our implementation or our test evidence | Keep source link and inspect the exact sample-level licence before copying any code |
| [NVIDIA/CUDALibrarySamples](https://github.com/NVIDIA/CUDALibrarySamples) | Reference for cuFFT/NPP and library integration if a later workload requires them | We do not claim to have implemented or benchmarked these libraries merely by linking them | Repository states Apache-2.0; retain notices if any source is reused |
| [CUDA C++ Programming Guide](https://docs.nvidia.com/cuda/cuda-c-programming-guide/) | API and programming-model reference | Reading documentation is not practical CUDA experience | Cite documentation in technical report |
| [CUDA Best Practices Guide](https://docs.nvidia.com/cuda/cuda-c-best-practices-guide/) | Memory, occupancy, measurement and optimization methodology | No optimization claim without measured evidence | Cite documentation in technical report |
| [Kaggle Notebooks](https://www.kaggle.com/code) | Browser-based GPU execution environment when available | No guarantee of accelerator allocation or persistent session | Record actual accelerator and runtime metadata per run |

## Provenance rule

The `fir_benchmark.cu` source in this repository is original project code. If future work adapts an upstream file, record the exact repository URL, commit/tag, file path, licence, local modifications and required notices here before merging it.
