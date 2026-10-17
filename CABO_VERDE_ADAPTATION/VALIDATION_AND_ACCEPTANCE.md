# Validation and acceptance checklist

This checklist separates checks that can be completed from repository evidence now from checks that require external actors, local legal confirmation, qualified engineering, funding, or physical testing. It is not a vehicle certification.

## A. Repository integrity — perform now

- [ ] Confirm the branch and commit under review.
- [ ] Confirm all adaptation files are under `CABO_VERDE_ADAPTATION/`.
- [ ] Check every internal Markdown link against the actual tree.
- [ ] Parse `EVIDENCE_REGISTER.csv`; verify headers, row widths, required fields, unique evidence IDs, and valid URL syntax.
- [ ] Verify that every cited source URL is present in the register and every register entry has a stated status/limitation.
- [ ] Search for placeholders, unsupported certainty, and claims of completed work without evidence.
- [ ] Confirm no adaptation document says the package is currently isolated on a review branch after it has been merged.
- [ ] Record command/tool used, result, date, and commit. Do not mark a box complete based only on reading this checklist.

**Pass condition:** checks above are recorded against a specific commit; all failures are fixed or listed as blocking defects.

## B. Evidence quality — perform now where sources are accessible

- [ ] Each material factual claim has a stable source or is explicitly labelled an assumption/hypothesis.
- [ ] Source type, publication date (if available), date checked, jurisdiction, and limitations are recorded.
- [ ] Government targets are distinguished from achieved outcomes.
- [ ] National infrastructure counts are distinguished from locally usable infrastructure.
- [ ] Estimates and scenario assumptions are visibly labelled.
- [ ] Unsupported savings, emissions, range, safety, market, and job-creation claims are removed or marked unresolved.
- [ ] Open questions are marked OPEN; conflicting sources remain visible rather than being silently reconciled.

**Pass condition:** another contributor can trace each decision-relevant claim to evidence and understand what that evidence does not establish.

## C. Use-case and economic evidence — partly external

- [ ] One island/municipality and one bounded recurring task are identified.
- [ ] Route, payload, stops, schedule, weather, terrain, and duty cycle are recorded from a real use case.
- [ ] Demand is evidenced by a real operator/customer or a documented baseline.
- [ ] Existing transport and practical alternatives are compared on the same workload.
- [ ] Charging access and service/parts support are verified for the chosen location.
- [ ] Costs use local quotes or clearly labelled scenario assumptions.
- [ ] Labour, downtime, compliance, battery replacement, and end-of-life are included.
- [ ] Cost per completed job and availability can be calculated from recorded data.
- [ ] Sensitivity analysis identifies which assumptions change the decision.

**External evidence required:** local operator records, dated supplier quotes, charging/site confirmation, and observed operating data. If unavailable, publish the data collection sheet and leave the decision OPEN; do not fabricate values.

## D. Legal and engineering gates — external approval required

- [ ] Current legal requirements for the exact modified vehicle are confirmed in writing by the competent local authority or qualified legal adviser.
- [ ] Required registration, inspection, homologation, or approval steps are completed.
- [ ] Insurance coverage for the exact configuration and intended use is confirmed in writing.
- [ ] A competent engineer reviews the design and the relevant failure modes.
- [ ] Battery, charging, electrical, mechanical, braking, thermal, and emergency risks are assessed.
- [ ] A controlled test plan includes instruments, acceptance thresholds, abort conditions, operator responsibilities, and incident reporting.
- [ ] No public-road or commercial test occurs before required approvals.

**Stop condition:** absent legal permission, insurance confirmation, engineering sign-off, or required safety controls means HOLD. Documentation alone cannot satisfy these gates.

## E. Pilot execution — physical evidence required

- [ ] Record the exact vehicle/build/component identifiers and as-built configuration.
- [ ] Record instrument IDs, calibration status where applicable, test environment, date, operators, and raw observations.
- [ ] Record failed runs, incidents, deviations, maintenance, and missing measurements.
- [ ] Compare results with predeclared acceptance thresholds; do not change thresholds after seeing results without documenting a formal revision.
- [ ] Keep raw data, calculation method, and summary results linked.
- [ ] Publish only conclusions supported by the actual test conditions and sample size.

**External evidence required:** a qualified test operator, suitable equipment, approved test environment, and actual test records. If these are unavailable, pilot status remains NOT RUN; the repository can still be ready for a future pilot.

## F. Stage decision

Select exactly one and attach evidence:

- [ ] **HOLD** — key evidence or approvals are missing.
- [ ] **STOP** — legal, safety, demand, or economic case fails.
- [ ] **REDESIGN** — a defined gap may be resolved and re-reviewed.
- [ ] **PROCEED TO NEXT STAGE** — every gate for that stage passed; this does not authorize a later stage.

Decision owner:
Date:
Stage reviewed:
Evidence/commit reference:
Conditions and unresolved issues:

## Minimum public-claim standard

A public statement must state what was tested, where, when, by whom (including relevant role/qualification), under what conditions, with what sample size, and what was not established. Do not use “certified”, “approved”, “road legal”, “safe”, “sustainable”, or “profitable” unless exact evidence and the competent authority support that precise claim.
