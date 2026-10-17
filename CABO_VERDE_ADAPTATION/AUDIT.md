# Repository and adaptation audit

**Audit date:** 2026-10-18  
**Branch reviewed:** `louis`  
**Reviewed commit:** `607d3f893a67b279e94d63c67e6f9442b00345b8`  
**Adaptation branch:** `review/cabo-verde-expansion`

## Observed baseline

The repository is a small set of governance and orientation files rather than a complete technical conversion manual. The visible root contains items including `README.md`, `STRUCTURE`, `FREEZE.md`, `LICENSE_CONTEXT.md`, `FORKING_RULES.md`, `CONTRIBUTING`, `NEOCODE`, a student forking checklist, and a `Folder 01` placeholder. The documented structure refers to material that is not present in the observed tree.

This is an observation of the checked tree, not a claim about any unobserved local copy or prior version.

## Findings and treatment

| ID | Finding | Risk | Treatment in this branch |
|---|---|---|---|
| AUD-01 | The stated structure and visible files do not fully match. | Readers may assume technical procedures exist when they do not. | This package explicitly labels its own documents and does not claim to complete the canonical technical framework. |
| AUD-02 | Contribution guidance references paths that were not visible in the tree. | Contributors may follow broken directions. | Record as a canonical-maintenance issue; do not silently rewrite canonical files in this adaptation. |
| AUD-03 | A contact placeholder is present in the conduct document. | Users may not know how to report a concern. | Flag for the maintainer; do not invent a contact address. |
| AUD-04 | The freeze date uses a year that may be interpreted using the Buddhist Era. | Ambiguous chronology across jurisdictions. | Any new record uses ISO 8601 / Gregorian dates and records the source date separately where relevant. |
| AUD-05 | The licence context and conduct language may be read as inconsistent about non-commercial use. | Users may confuse project intent with legal permissions. | This folder makes no new licence grant. The repository's actual licence text governs; obtain legal advice for interpretation. |
| AUD-06 | The NEOCODE naming convention is not self-evident from the visible materials. | Donor vehicle, conversion, and build records may be conflated. | This adaptation recommends separate identifiers for donor, build, component, test, and evidence record. |
| AUD-07 | A tag/release reference has not been verified as part of this audit. | A reader could rely on a nonexistent or incorrect frozen release. | Do not tell readers to use a named tag until the GitHub tag/release list and target commit are verified. |

## Integrity boundary

- The existing `louis` branch is the baseline, not the destination for this adaptation.
- The adaptation is kept under `CABO_VERDE_ADAPTATION/` on a separate review branch.
- No canonical file is intentionally replaced by this package.
- This package must not be merged into the canonical branch until the maintainer has reviewed the content, links, evidence, and intended licence treatment.
- This is a documentary research package. It does not add validated vehicle specifications, a tested conversion design, or an approved bill of materials.

## Next canonical-maintenance tasks (separate from Cabo Verde work)

1. Reconcile `STRUCTURE` with the actual tree; mark absent paths as planned or remove unsupported claims.
2. Verify every cited tag/release and document the exact commit it points to.
3. Resolve the contact placeholder or explain a safe reporting route.
4. Clarify the distinction between licence permissions and project preferences without contradicting the licence.
5. Make date formats unambiguous.
6. Define NEOCODE fields and examples.
7. Add a lightweight automated or manual link/path check and an acceptance checklist.

## Audit acceptance

- [ ] Reviewer compares the baseline commit and branch before merge.
- [ ] Every path claimed to exist is confirmed in GitHub.
- [ ] All new sources are reachable and the claim they support is correctly scoped.
- [ ] No text implies local regulatory approval or engineering certification.
- [ ] No canonical files are modified as a side effect of this package.
