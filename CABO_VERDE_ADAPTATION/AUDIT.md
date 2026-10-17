# Repository and adaptation audit

**Audit date:** 2026-10-18  
**Branch reviewed:** `louis`  
**Reviewed commit:** `bd0ca985d50f4ba0e6ce0fbd17a87a7d3815c214`  
**Audit scope:** repository tree and the Cabo Verde adaptation package visible at that commit.

## Observed baseline

The visible repository is a small set of governance/orientation files plus the `CABO_VERDE_ADAPTATION/` research package. The root contains `README.md`, `STRUCTURE`, `FREEZE.md`, `LICENSE_CONTEXT.md`, `FORKING_RULES.md`, `CONTRIBUTING`, `NEOCODE`, a student forking checklist, and a `Folder 01` placeholder. The documented structure refers to material that is not present in the observed tree.

This is an observation of the checked Git tree, not a claim about any unobserved local copy or earlier version.

## Findings and treatment

| ID | Finding | Risk | Required treatment / acceptance evidence |
|---|---|---|---|
| AUD-01 | The stated structure and visible files do not fully match. | Readers may assume technical procedures exist when they do not. | Reconcile each documented path against the tree; label absent paths as planned or remove unsupported claims. Acceptance: path inventory reviewed against the live tree. |
| AUD-02 | Contribution guidance references paths that were not visible in the tree. | Contributors may follow broken directions. | Check every referenced path and link. Acceptance: all internal links resolve, or are explicitly marked as planned. |
| AUD-03 | A contact placeholder is present in the conduct document. | Users may not know how to report a concern. | Maintainer supplies a valid reporting route or documents why one is not provided. Do not invent a contact address. |
| AUD-04 | The freeze date uses a year that may be interpreted using the Buddhist Era. | Ambiguous chronology across jurisdictions. | State calendar system and ISO 8601/Gregorian equivalent only when verified against the intended date. |
| AUD-05 | Licence context and conduct language may be read as inconsistent about non-commercial use. | Users may confuse legal permissions with project preferences. | Quote the actual licence accurately; separate legal text from project preference and seek legal review where needed. |
| AUD-06 | The NEOCODE naming convention is not self-evident from the visible materials. | Donor vehicle, build, component, test, and evidence records may be conflated. | Define fields and provide valid examples before asking contributors to create records. |
| AUD-07 | A frozen tag/release was not verified in the original audit. | Readers could rely on a nonexistent or incorrect release. | Verify the tag/release list and exact target commit before naming a frozen version. |
| AUD-08 | The adaptation checklist remains unchecked and no GitHub Actions workflow runs were returned for this repository at audit time. | Readers may mistake planned review for completed validation. | Run the repository checks in `CONTRIBUTOR_HANDOVER.md`; report the exact checks performed and results. Do not claim CI passed when no workflow ran. |
| AUD-09 | The adaptation documents were merged to `louis` in commit `bd0ca985d50f4ba0e6ce0fbd17a87a7d3815c214`. | Older text may incorrectly describe the package as isolated on a separate review branch. | Treat `louis` at that commit as the current observed state. Historical descriptions of the review branch must be labelled historical, not current. |

## Integrity boundary

- The observed baseline is branch `louis` at commit `bd0ca985d50f4ba0e6ce0fbd17a87a7d3815c214`.
- The Cabo Verde material is a documentary research package. It does not provide validated vehicle specifications, a tested conversion design, an approved bill of materials, legal approval, or vehicle certification.
- The presence of a checklist or protocol is not evidence that the corresponding inspection, road test, legal review, or economic test has occurred.
- No local regulatory approval or engineering certification is implied.

## Canonical-maintenance tasks

1. Reconcile `STRUCTURE` with the actual tree.
2. Verify every cited tag/release and record its target commit.
3. Resolve the contact placeholder without inventing an address.
4. Clarify licence permissions versus project preferences.
5. Make dates unambiguous.
6. Define NEOCODE fields with examples.
7. Run and record the checks in `CONTRIBUTOR_HANDOVER.md`.
8. Update this audit when evidence changes; do not leave stale branch-state claims in place.

## Audit acceptance

- [ ] Every path claimed to exist is confirmed in GitHub.
- [ ] Internal links are checked, with unresolved links listed explicitly.
- [ ] Evidence register columns and records are validated.
- [ ] Source links are reachable and the claim they support is correctly scoped.
- [ ] No text implies local regulatory approval or engineering certification.
- [ ] Any changed repository state is described accurately with branch and commit.
