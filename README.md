# Suzuki EN125 Electric Conversion — Engineering Portfolio

**Status:** Engineering dossier in development; desk-study and simulation scope only until evidence, competent review and applicable approvals are complete.  
**Canonical baseline:** `louis` branch, preserved.  
**Portfolio workstream:** `portfolio/en125-engineering-dossier`.

This repository documents an evidence-led engineering study of converting a Suzuki EN125 motorcycle from internal-combustion propulsion to battery-electric propulsion. It is also a practical portfolio demonstrating systems engineering, requirements traceability, electrical/mechanical integration, embedded-control design, safety engineering, procurement resilience, verification planning, cost modelling and technical documentation.

> **Safety and legal boundary:** This repository is not a certified conversion design, construction manual, approved kit, roadworthiness certificate or permission to modify or operate a vehicle. No traction-battery assembly, high-voltage wiring, energisation, road testing or public-road use is authorised by these documents. Obtain current written guidance from the relevant authority and qualified, appropriately licensed professionals before physical work.

## Project navigation

| Area | Purpose |
|---|---|
| [Project brief](PORTFOLIO/PROJECT_BRIEF.md) | Scope, outputs, status and portfolio claims |
| [Engineering claims](PORTFOLIO/ENGINEERING_CLAIMS.md) | What can and cannot be claimed |
| [Requirements register](01_REQUIREMENTS/REQUIREMENTS_REGISTER.csv) | Traceable requirements and evidence status |
| [Baseline measurements](01_REQUIREMENTS/BASELINE_MEASUREMENTS.csv) | Vehicle-specific inputs; blanks are intentional |
| [System architecture](02_ARCHITECTURE/SYSTEM_ARCHITECTURE.md) | System boundary and interfaces |
| [Mechanical design basis](03_MECHANICAL/MECHANICAL_DESIGN_BASIS.md) | Mass, packaging, mounting and drivetrain evidence |
| [Electrical design basis](04_ELECTRICAL/ELECTRICAL_DESIGN_BASIS.md) | Power domains, protection and control boundaries |
| [Battery/BMS requirements](05_BATTERY/BATTERY_BMS_REQUIREMENTS.md) | Battery evidence and safety requirements |
| [Hazard register](06_SAFETY/HAZARD_REGISTER.csv) | Risks, controls and verification |
| [Procurement strategy](07_PROCUREMENT/PROCUREMENT_STRATEGY.md) | Local and external sourcing with alternates |
| [Verification plan](08_VERIFICATION/VERIFICATION_PLAN.md) | Staged evidence and acceptance |
| [Thailand regulatory gate](11_LOCALIZATION/THAILAND_REGULATORY.md) | Jurisdiction-specific research |
| [CUDA signal pipeline](13_CUDA_SIGNAL_PIPELINE/README.md) | Reuse-first CUDA/C++ signal-processing workstream |
| [Career case study](12_CAREER/CASE_STUDY.md) | Employer-readable engineering narrative |

## Current engineering decision

**HOLD — design definition and evidence gathering only.** The repository does not yet contain verified EN125-specific baseline dimensions, a confirmed conversion configuration, supplier-approved component pairings, calculations signed by a competent engineer or vehicle test results. These are explicit gaps, not assumed facts.

## How to use this repository

1. Read [KIT.md](KIT.md), [LICENSE_CONTEXT.md](LICENSE_CONTEXT.md) and [project scope](00_CONTEXT/PROJECT_SCOPE.md).
2. Confirm the exact donor model/year and gather measured baseline data.
3. Populate requirements and evidence registers before selecting components.
4. Obtain written jurisdiction-specific guidance before procurement or modification.
5. Have mechanical and electrical designs reviewed by competent professionals.
6. Execute only approved, staged tests and preserve raw evidence.

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
