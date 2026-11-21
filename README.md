# Suzuki EN125 Electric Conversion — Engineering Portfolio

**Implementation location:** Mauritius.  
**Status:** Engineering dossier in development; desk-study and simulation scope only until evidence, competent review and applicable approvals are complete.  
**Canonical baseline:** `louis` branch, preserved.  
**Portfolio workstream:** `portfolio/en125-engineering-dossier`.

This repository documents an evidence-led engineering study of converting a Suzuki EN125 motorcycle from internal-combustion propulsion to battery-electric propulsion. The implementation is intended for Mauritius. The dossier combines documented conversion precedents, EN125-specific sizing, local capability discovery, supplier qualification, mechanical/electrical integration, safety and verification planning.

> **Safety and legal boundary:** This repository is not a certified conversion design, construction manual, approved kit, roadworthiness certificate or permission to operate a vehicle. Engineering feasibility, packaging, sourcing and prototype planning can proceed as separate workstreams. Traction-battery assembly, high-voltage work, energisation and vehicle testing require qualified personnel, appropriate facilities and approved procedures. Public-road use requires separate statutory and insurance clearance.

## Project navigation

| Area | Purpose |
|---|---|
| [Project brief](PORTFOLIO/PROJECT_BRIEF.md) | Scope, outputs, status and portfolio claims |
| [Engineering claims](PORTFOLIO/ENGINEERING_CLAIMS.md) | What can and cannot be claimed |
| [Integrated proven conversion path](14_PROVEN_CONVERSION_PATH/INTEGRATED_DESIGN_PATH.md) | Evidence-led architecture and end-to-end implementation sequence |
| [Proven conversion cases](14_PROVEN_CONVERSION_PATH/PROVEN_CASES_AND_EVIDENCE.md) | University, builder and measured conversion precedents |
| [EN125 sizing method](14_PROVEN_CONVERSION_PATH/EN125_SIZING_METHOD.md) | Road-load, motor, gearing and battery sizing |
| [Mauritius implementation](11_LOCALIZATION/MAURITIUS_IMPLEMENTATION.md) | Local work packages and supplier qualification |
| [Mauritius supplier leads](11_LOCALIZATION/MAURITIUS_SUPPLIER_LEADS.csv) | Discovery register; all leads unqualified |
| [Requirements register](01_REQUIREMENTS/REQUIREMENTS_REGISTER.csv) | Traceable requirements and evidence status |
| [Baseline measurements](01_REQUIREMENTS/BASELINE_MEASUREMENTS.csv) | Vehicle-specific inputs; blanks are intentional |
| [System architecture](02_ARCHITECTURE/SYSTEM_ARCHITECTURE.md) | System boundary and interfaces |
| [Mechanical design basis](03_MECHANICAL/MECHANICAL_DESIGN_BASIS.md) | Mass, packaging, mounting and drivetrain evidence |
| [Electrical design basis](04_ELECTRICAL/ELECTRICAL_DESIGN_BASIS.md) | Power domains, protection and control boundaries |
| [Battery/BMS requirements](05_BATTERY/BATTERY_BMS_REQUIREMENTS.md) | Battery evidence and safety requirements |
| [Hazard register](06_SAFETY/HAZARD_REGISTER.csv) | Risks, controls and verification |
| [Procurement strategy](07_PROCUREMENT/PROCUREMENT_STRATEGY.md) | Local and external sourcing with alternates |
| [Verification plan](08_VERIFICATION/VERIFICATION_PLAN.md) | Staged evidence and acceptance |
| [CUDA signal pipeline](13_CUDA_SIGNAL_PIPELINE/README.md) | Reuse-first CUDA/C++ signal-processing workstream |
| [Career case study](12_CAREER/CASE_STUDY.md) | Employer-readable engineering narrative |

## Current engineering decision

**HOLD — design definition and evidence gathering only.** A mid-drive motor with a single chain reduction is the preferred baseline concept because it is demonstrated in documented motorcycle conversions. It is not yet an EN125-specific approved design. Exact donor dimensions, mission profile, motor/controller pairing, battery design, fabrication drawings and tests remain open.

## How to use this repository

1. Read [KIT.md](KIT.md), [LICENSE_CONTEXT.md](LICENSE_CONTEXT.md) and [project scope](00_CONTEXT/PROJECT_SCOPE.md).
2. Confirm the exact EN125 year/variant and gather measured baseline data in Mauritius.
3. Freeze the intended duty cycle and calculate road load before selecting components.
4. Use documented conversions as evidence, not as parts lists to copy.
5. Qualify local fabricators and specialist component/battery suppliers against exact requirements.
6. Have mechanical and electrical designs reviewed by competent professionals.
7. Execute only controlled, staged tests and preserve raw evidence.
8. Maintain statutory approval and insurance as a separate road-use release workstream.

## Evidence vocabulary

- **VERIFIED:** primary/authoritative evidence checked for the stated scope and date.
- **SUPPORTED:** credible evidence exists, but a limitation remains.
- **OPEN:** not established; must not be used as a design or release basis.
- **REJECTED:** evidence or review shows the item does not meet the requirement.
- **NOT APPLICABLE:** reason recorded and reviewed.

## Portfolio integrity

This work demonstrates the process and artefacts actually present in the repository. It must not be represented as a completed physical conversion, validated vehicle, certified design, completed GPU benchmark or professional engineering approval. The CUDA folder contains an implementation scaffold, but GPU execution and profiling evidence remain pending. See [engineering claims](PORTFOLIO/ENGINEERING_CLAIMS.md).

## License

The repository's existing CC0 licensing context remains in place. See [LICENSE](LICENSE) and [LICENSE_CONTEXT.md](LICENSE_CONTEXT.md). CC0 does not transfer responsibility for safety, legal compliance or professional approval.
