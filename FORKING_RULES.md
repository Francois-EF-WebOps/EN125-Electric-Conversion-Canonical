FORKING RULES — BRAND ADAPTATIONS

This repository may be forked to support motorcycles other than the Suzuki EN125.

These rules exist to maintain safety, clarity, and comparability across adaptations.

1. REFERENCE INTEGRITY
Forks MUST:
- Preserve the original documentation unchanged
- Clearly state the reference version (v1.0.0-canonical)
- Acknowledge the EN125 as the baseline model

2. BRAND-SPECIFIC SCOPE
Forks MUST explicitly document:
- Frame differences (stressed vs non-stressed engine)
- Mounting geometry changes
- Chain line differences
- Electrical system variations
- Local regulatory constraints

3. NO SILENT SUBSTITUTIONS
Forks MUST NOT:
- Replace safety-critical components without explanation
- Downgrade specifications (e.g., BMS, wiring, fusing)
- Remove inspection or maintenance requirements

4. SAFETY PRIORITY
Any deviation involving:
- Battery chemistry
- Controller limits
- Torque output
- Structural reinforcement

MUST be documented with rationale and risk assessment.

5. NAMING CONVENTION (REQUIRED)
Fork repositories SHOULD be named as:
- `ENGINE-EV-BRAND-NEOCODE`
- `EN125-EV-Honda-ACE125`
- `EN125-EV-Yamaha-YC125`
- `EN125-EV-Generic-125`

This preserves lineage and traceability.

6. EDUCATIONAL INTENT
Forks are encouraged for:
- Learning
- Teaching
- Research
- Local adaptation

Commercialization, if any, must occur independently and without implying endorsement from the canonical repository.

7. VERSIONING DISCIPLINE
If a fork evolves into a mature framework, it should:
- Introduce its own versioning
- Maintain a clear changelog
- Avoid back-porting changes into the canonical repository

The canonical repository is a reference anchor.
Forks are where evolution happens.
