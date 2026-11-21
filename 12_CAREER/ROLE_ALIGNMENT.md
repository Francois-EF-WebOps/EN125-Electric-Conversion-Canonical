# Role alignment — evidence from this project

## Strongest demonstrated alignment at current stage

- Systems / Solution Architecture: requirements, system boundaries, interface contracts, trade-offs and design gates.
- Technical Project / Delivery Engineering: work packages, evidence ownership, supplier qualification and acceptance criteria.
- Platform / DevOps Engineering: Git-based versioning, repository integrity checks, automated CI and traceable artefacts.
- Embedded / Controls Engineering: conceptual control-state model and fault-response requirements; implementation remains future work.
- Electrical / Mechanical Integration: design-basis and verification framework; calculations and professional review remain open.
- Applied CUDA / C++ GPU computing: a small calibrated FIR benchmark scaffold is present; actual GPU execution, correctness logs, profiling and optimization evidence remain pending.

## Honest skills matrix

| Capability | Evidence status | Next evidence to create |
|---|---|---|
| Requirements traceability | Demonstrated in repo | Link each requirement to tests and evidence |
| Architecture/interface definition | Conceptual artefact present | Complete ICD with exact component interfaces |
| Embedded C/C++ | Prior academic exposure reported by owner; not yet evidenced in this repo | Add a small simulator/test harness only after confirming prior code details |
| Electronics/signal conditioning | Academic experience reported by owner; synthetic calibration/FIR workload now modelled in source | Capture actual CUDA execution and numerical comparison logs |
| CUDA C++ | Original FIR kernel and CPU reference scaffold committed | Run on a real NVIDIA GPU, preserve environment metadata, validate outputs and benchmark |
| GPU performance engineering | Not yet demonstrated | Profile with Nsight Compute and justify one measured optimization |
| Mechanical engineering | Design framework present | Measured CAD and reviewed calculations |
| Electrical power systems | Requirements framework present | Reviewed schematics and coordination calculations |
| Battery systems | Requirements framework present | Manufacturer evidence and specialist review |
| Procurement and supply resilience | Process and candidate leads present | Written RFQs, quotes and qualified alternates |
| DevOps automation | CI workflow and validator planned | Confirm workflow execution and preserve run evidence |

## Application rule

Use this repository as a systems-engineering and delivery case study. Do not claim professional CUDA/GPU performance experience until a real GPU run and profiler evidence are available. Do not use it as proof of professional EV-conversion, high-voltage, battery-pack or road-vehicle certification experience.
