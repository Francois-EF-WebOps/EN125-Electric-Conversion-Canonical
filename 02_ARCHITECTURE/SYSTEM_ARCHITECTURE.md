# System architecture — concept baseline

**Status:** conceptual; no final ratings or components selected.

## System boundary
The conversion system includes donor chassis, electric traction motor, motor controller/inverter, traction battery/REESS, BMS, charger, low-voltage supply, rider controls, interlocks, instrumentation, protection, mechanical mounts, thermal/environmental enclosures and service interfaces.

## Functional blocks
1. Energy storage: traction battery, BMS, enclosure, retention and service isolation.
2. Power conversion: controller/inverter matched to motor and pack.
3. Traction: motor and mechanical coupling to existing drive train or engineered alternative.
4. Vehicle control: rider demand, brake/neutral/clutch/stand interlocks as applicable, enable logic, fault handling and safe shutdown.
5. Auxiliary power: regulated low-voltage supply for lights, horn, instruments and control electronics.
6. Charging: charger matched to pack chemistry, voltage, current and BMS; charge interlock and approved supply connection.
7. Vehicle structure: motor mount, battery enclosure, guards, cable supports and mass distribution.
8. Monitoring: pack voltage/current/temperature, controller status, faults and energy indication.

## Interface-control matrix
| Interface | Information to freeze | Evidence required |
|---|---|---|
| Battery ↔ controller | Voltage window, peak/continuous current, connector, isolation, precharge needs | Both manufacturers' datasheets and reviewed calculations |
| Controller ↔ motor | Motor type, phase/hall/encoder interface, speed/torque envelope, thermal limits | Motor/controller compatibility statement |
| BMS ↔ charger | Chemistry, charge voltage/current, temperature limits, cut-off and communications | Pack/BMS/charger documents |
| BMS ↔ controller | Discharge permission, current limits, fault signalling | Interface specification and fault test |
| DC/DC ↔ auxiliaries | Input range, output voltage/current, transient behaviour | Load budget and datasheet |
| Rider controls ↔ controller | Throttle signal, brake cut-off, enable, fault state | Control logic and failure analysis |
| Mechanical mount ↔ frame | Geometry, material, load path, fatigue/vibration, fasteners | Measured CAD, calculations and review |
| Battery ↔ chassis | Retention, isolation, impact, water ingress, service access | Packaging and safety review |

## Power-domain separation
Traction domain, low-voltage domain and signal/control domain are not yet rated. Charging earthing, interlock and charge-state indication must be resolved for the selected charger and jurisdiction.

## Architecture decisions still open
Motor topology and coupling; battery chemistry, pack voltage and capacity; controller family and communications; regenerative braking; retention and packaging; auxiliary supply; diagnostic interface; exact rider interlocks and safe-state definition.

## Design rule
No component may be selected in isolation. Size the system from a defined duty cycle, verified donor baseline and coupled mechanical/electrical calculations. A supplier's “kit” label does not replace interface verification.