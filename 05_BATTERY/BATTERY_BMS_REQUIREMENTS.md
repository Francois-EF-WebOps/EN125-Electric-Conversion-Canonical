# Traction battery and BMS requirements

## Selection is blocked pending system definition
Battery chemistry, series/parallel arrangement, nominal voltage, maximum voltage, capacity, discharge current, charge current, mass and enclosure cannot be responsibly selected before the duty cycle, motor/controller envelope, packaging and legal route are defined.

## Evidence required from pack supplier/manufacturer
- Cell manufacturer and exact cell model; no relabelled or mixed-cell pack without traceability.
- Pack configuration, nominal and maximum voltage, capacity and energy.
- Continuous/peak discharge and charge limits with duration and temperature conditions.
- BMS model, cell-level monitoring, temperature sensing and documented fault responses.
- Overvoltage, undervoltage, overcurrent, short-circuit and over/under-temperature protection.
- Cell/pack safety test reports and applicable transport documentation.
- Charger model and explicit compatibility with pack/BMS.
- Enclosure, ingress, vibration, impact and thermal design evidence.
- Warranty, service process, serial/lot traceability and end-of-life pathway.

## Chemistry trade study
Compare only supplier-documented candidate chemistries. Evaluate energy density, mass, cycle-life conditions, thermal behaviour, discharge capability, charging limits, availability, serviceability, safety evidence and total landed cost. Do not declare LFP, NMC or LTO universally “best”.

## BMS interface
Specify cell voltage and temperature telemetry; charge/discharge permission and limits; fault states and latching/reset behaviour; communication protocol and failure response; low-voltage supply and quiescent consumption; charger coordination; diagnostic logging.

## Release rule
No battery purchase or build release until pack configuration is supported by traceable manufacturer evidence, system compatibility is reviewed and jurisdictional requirements are confirmed. A generic BMS board or cell listing is not a vehicle traction battery.