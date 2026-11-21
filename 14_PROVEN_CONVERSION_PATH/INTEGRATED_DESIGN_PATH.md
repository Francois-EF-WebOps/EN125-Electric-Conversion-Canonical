# Integrated EN125 conversion path — evidence-led

**Implementation country:** Mauritius.  
**Project stage:** engineering definition / desk study.  
**Decision status:** preferred concept identified; no component selection or physical work released.  
**Regulatory workstream:** tracked separately. It does not block engineering feasibility, packaging studies, costing or supplier discovery; it remains a gate before any road-use claim or public-road operation.

## 1. Engineering conclusion

A petrol-to-electric conversion of a conventional chain-drive motorcycle is technically demonstrated by multiple independent projects. The most directly reusable architecture for the EN125 is:

- Remove the combustion engine and its integrated gearbox.
- Install a traction motor in the engine bay, positioned so the motor output sprocket is near the original countershaft line where packaging permits.
- Use a single fixed chain reduction to the existing rear wheel.
- Fabricate engineered motor mounts using existing structural mounting locations only after load-path assessment.
- Place the controller close to the motor while protecting it from impact, water, heat and chain debris.
- Install a purpose-designed battery enclosure in the available central frame volume, potentially using part of the former fuel-tank volume after measured packaging work.
- Replace and document the electrical architecture, including BMS, fuse, contactor, pre-charge, isolation, charger, DC/DC and low-voltage controls.

This is a **baseline concept for comparison**, not a released design. It is supported by the XAMK eBandit conversion and the ZEVA Honda NSR150 conversion. Both used motor-in-frame, chain-drive layouts and engineered mounts. Neither donor is an EN125, so dimensions, ratios, component sizes and loads must be recalculated.

## 2. Architecture choices

| Architecture | Evidence / advantages | Main limitations | Project position |
|---|---|---|---|
| Mid-drive motor + single chain reduction | Demonstrated on XAMK eBandit and ZEVA NSR150; keeps rear wheel and swingarm; allows motor placement and sprocket ratio selection | Requires motor mounts, chain alignment, reduction calculation, guarding and packaging | **Preferred baseline** |
| Hub motor in rear wheel | Available in conversion markets; may simplify motor mounting and remove chain reduction | Wheel/spoke/axle compatibility, unsprung mass, torque reaction, brake and swingarm constraints; no EN125-specific evidence yet | Alternative only if mid-drive packaging fails |
| Retain original 5-speed gearbox | Could retain selectable ratios and some original transmission geometry | Adds clutch/gearbox integration, mechanical interfaces and losses; not the architecture used in the strongest reference cases | Not baseline; assess only if calculations justify it |
| CVT-based conversion | Published scooter conversion demonstrates motor integration with a retained CVT | EN125 is a manual chain-drive motorcycle, so this is not directly transferable | Reference only |

## 3. Engineering sequence

### Gate A — donor facts
Obtain exact year, variant and market; inspect frame condition; measure mass and axle loads; record wheel/tyre sizes, brake configuration, sprockets, chain pitch, wheel radius, wheelbase, engine mass and mounting coordinates. Photograph every datum with a scale. Keep private registration and identity numbers out of the public repository.

### Gate B — mission profile
Define rider and payload mass, target cruising and maximum speed, acceleration expectation, route distance, gradient, stop/start frequency, ambient temperature, rain/water exposure and charging access. Record the intended duty cycle, not just a desired top speed.

### Gate C — road-load and powertrain sizing
Calculate rolling resistance, aerodynamic drag, gradient force, acceleration force, wheel torque, wheel power and energy over the intended duty cycle. Derive motor continuous power from sustained operation and thermal limits; derive peak power from acceleration and short-duration load. Select motor speed and chain ratio together.

### Gate D — physical architecture and packaging
Create dimensioned 2D/3D envelopes for motor, controller, battery, charger, contactors and cables. Make non-energised cardboard/wood/foam mockups before ordering parts. Check steering/suspension travel, ground clearance, rider ergonomics, wheel access, chain service, cooling and removal paths.

### Gate E — matched component system
Obtain written motor/controller compatibility; calculate battery current separately from motor phase current; select cell chemistry and pack configuration against energy, peak/continuous current, mass, volume and thermal needs. Match BMS, charger, contactor, fuse, pre-charge, DC/DC and instrumentation as a system.

### Gate F — mechanical engineering
Produce motor-mount drawings and load calculations, chain alignment/tension geometry, battery enclosure and retention design, fastener/material specifications, mass-property model and brake/tyre/suspension assessment. Fabrication drawings require competent review before manufacture.

### Gate G — procurement and fabrication
Qualify each supplier against exact model/revision, datasheet, test evidence, traceability, warranty and service route. Fabricate mounts and enclosure to reviewed drawings. Inspect dimensions, welds, materials, alignment and fasteners before installation.

### Gate H — integration and verification
Build an as-built electrical schematic and harness schedule. Conduct non-energised inspection first. Qualified personnel then complete controlled bench tests, protection/interlock tests, thermal tests and low-speed closed-area vehicle tests under an approved test plan. Record raw data, configuration, instruments, conditions, faults and corrective actions.

### Gate I — release
Produce final BOM, as-built drawings, battery record, wiring diagrams, maintenance/charging instructions, emergency isolation procedure, test report and unresolved-defect register. Legal/registration/insurance release is separate and must be completed before public-road use.

## 4. Sizing principles

- Do not convert 125 cc directly into an electric motor rating.
- The EN125's published engine output is a reference for the original vehicle's performance envelope, not a continuous electric-motor requirement.
- Do not copy a 72 V, 2 kW, 20 Ah conversion kit simply because it has been used on another 125-class motorcycle.
- Do not copy a donor's sprocket ratio. Motor maximum RPM, wheel circumference, target speed, torque curve and chain geometry determine the ratio.
- Battery energy (kWh) is selected from measured/estimated Wh/km and required route energy; battery power capability (kW) is selected from current and acceleration/gradient demand. These are different constraints.
- Controller battery current and motor phase current are not interchangeable. The BMS and battery must be sized against battery-side current and the controller's documented battery-current limits.
- A theoretical range calculation is not a road-tested range result.

## 5. Required deliverables before design freeze

1. Verified EN125 donor baseline.
2. Signed mission profile and performance requirements.
3. Reproducible road-load and powertrain sizing workbook/script.
4. Motor/controller shortlist with written compatibility.
5. Battery pack specification and supplier evidence.
6. Packaging model and full-scale mockup record.
7. Motor-mount and battery-enclosure drawings/calculations.
8. Electrical single-line diagram and protection coordination.
9. Mauritius supplier qualification and landed-cost register.
10. Staged verification plan and acceptance criteria.

## 6. Current blockers

- Exact EN125 year/variant and donor condition not confirmed.
- No measured packaging envelope or axle loads.
- Mission profile not frozen.
- No motor/controller pair selected.
- No battery chemistry, capacity or pack topology selected.
- No fabrication partner has accepted a reviewed drawing.
- No supplier has been qualified for the actual system.
- No physical prototype or test result exists.

## 7. Evidence boundary

The reference projects demonstrate that motorcycle conversion is achievable. They do not prove that a particular component fits the EN125, that the EN125 frame is suitable without analysis, that a Mauritius workshop can complete the conversion, or that a proposed range/speed will be achieved. Every EN125-specific claim remains OPEN until measured or tested.

## Sources

See [PROVEN_CASES_AND_EVIDENCE.md](PROVEN_CASES_AND_EVIDENCE.md) for source descriptions, limitations and URLs.
