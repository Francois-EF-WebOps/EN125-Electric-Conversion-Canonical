# Proven conversion cases and evidence register

This document distinguishes completed conversions, academic engineering methods, component-supplier claims and general technical guidance. A successful donor conversion is evidence of feasibility, not a ready-made EN125 design.

## A. XAMK eBandit — university engineering conversion

**Source:** Miikael Riuttaskorpi, *Electrical motorcycle conversion — Motor, motor controller & electrics*, South-Eastern Finland University of Applied Sciences, 2022.  
**Donor:** 1996 Suzuki GSF 600 Bandit.  
**Evidence class:** university thesis documenting a conversion project and its design/implementation.

Reported design:
- HPEVS AC-20 three-phase induction motor.
- Curtis 1238E-7622 controller.
- Motor operating range reported as 72–130 V.
- Steel motor mounts attached at the original engine-mount locations.
- Single-speed arrangement with chain drive; gearbox omitted.
- Motor placed so its drive shaft was close to the original output-sprocket position.
- Final sprocket ratio reported as 15-tooth front / 66-tooth rear (4.4:1).
- Controller positioned close to motor to reduce motor cable length.
- Complete electrical redesign with labelled/shielded wiring, diagrams, programmable components and CAN communication.
- BMS, charger, interlocks and control-system wiring documented in the thesis.

**Transferable lessons:** use the original engine bay and mounting zones as packaging references; design mounts around actual load paths; use a calculated single reduction; create a complete wiring and interface document set; make controller/BMS/charger interfaces explicit.

**Not transferable without calculation:** the AC-20 motor, Curtis controller, 72–130 V system, 4.4:1 ratio, mount geometry and 600-class donor packaging. The Bandit is a much larger motorcycle than the EN125.

Source URL: https://www.theseus.fi/bitstream/handle/10024/753552/Riuttaskorpi_Miikael.pdf?isAllowed=y&sequence=2

## B. ZEVA Honda NSR150 — documented chain-drive conversion

**Source:** Zero Emission Vehicles Australia, *Honda NSR150 Electric Conversion*, Ian Hooper, June 2014, with later updates.  
**Donor:** 2001 Honda NSR150.  
**Evidence class:** detailed builder project record with component specifications, photographs, design calculations and post-build observations.

Reported system:
- Motenergy ME1003 brushed DC motor, 72 V nominal, 200 A continuous / 400 A for one minute as reported by the builder.
- ZEVA MC600C controller, with motor-current capability substantially higher than the battery-current limit.
- 264 K2 26650EV cells, 44S6P, approximately 140 V and 19.2 Ah / 2.7 kWh.
- BMS modules, EV management system, contactor, fuse, DC/DC, charger and instrumentation.
- Chain drive; builder calculated a 3.3:1 ratio for the target motor RPM and wheel speed.
- Cardboard mockups used to verify motor and battery packaging before buying/fabricating.
- Steel motor plate attached at three chassis points, including original engine mounting points.
- Battery enclosure designed around the available central frame/fuel-tank volume.
- Controller and battery current limits were treated separately.

Performance evidence and limitations:
- Builder estimated approximately 40 km city range from the initial 2.7 kWh pack.
- A later update reported calculated consumption around 47 Wh/km at 50–60 km/h and a theoretical range around 57 km from 2.703 kWh. This is a calculation from reported consumption, not a controlled full-range certification test.
- The 2016 update reported degraded cells and approximately 35 km range, illustrating why cell condition and pack performance matter.
- Builder reported chain rattle during coasting and DC/DC backfeed that drained the low-voltage battery. These are valuable real-world integration defects, not details to omit.

**Transferable lessons:** calculate ratio before procurement; mock up motor and battery envelopes; use a purpose-designed battery enclosure; log battery-side current separately from motor current; test low-voltage standby consumption and chain behaviour; preserve service access.

Source URL: https://www.zeva.com.au/Projects/NSR/

## C. Indonesian 125-class motorcycle — measured conversion study

**Source:** Firmansyah et al., *Performance Testing of Electric Motorcycle Conversion*, ICEVT 2022, DOI 10.1109/ICEVT55516.2022.9924921.  
**Evidence class:** conference-paper abstract describing a converted 2010 manual motorcycle and dynamometer testing.

Reported system:
- 2 kW / 72 V BLDC mid-drive motor.
- 72 V / 20 Ah battery.
- 100 A / 72 V controller.
- Dynamometer testing to compare power, torque and emissions.

**Transferable lessons:** a small 125-class motorcycle conversion has been implemented with a mid-drive architecture and tested instrumentally. Dyno testing is an appropriate part of the verification plan.

**Limitations:** the available abstract does not provide enough detailed performance, range, thermal or durability data to use the system as an EN125 specification. The 2 kW rating is not adopted as the project target.

Source URL: https://doi.org/10.1109/ICEVT55516.2022.9924921

## D. Yamaha CVT scooter conversion — road-test precedent, not EN125 architecture

**Source:** *Scientific Experiences in Applied Sciences*, Yamaha 5TL conversion study.  
**Evidence class:** published conversion study reporting fabrication, bench and road tests.

Reported results include a BLDC motor integrated with a retained CVT, a fabricated motor bracket, modified transmission components and a road test at approximately 35 km/h with a 69 kg rider load over 5.08 km. Reported electric consumption was approximately 0.0272 kWh/km under the study's test conditions.

**Transferable lessons:** record rider/load and route conditions; measure energy consumption rather than claiming range from battery capacity alone; inspect motor/controller temperatures during testing.

**Limitations:** the donor is a CVT scooter, not a manual chain-drive EN125. Its results are not directly comparable.

Source URL: https://journal.aisindonesia.id/index.php/seat/article/view/16

## E. Motorcycle powertrain sizing method — Warwick Manufacturing Group

**Source:** Kirca, McGordon and Dinh, *Rapid Decision-Making Tool for Electric Powertrain Sizing for Motorcycles during New Product Development*, Energies 2024, 17(2), 330.  
**Evidence class:** peer-reviewed engineering method.

The work frames motorcycle sizing as a multi-variable design-space problem covering battery, inverter, motor, gearbox, mass, range and acceleration. It uses requirements-based design, sensitivity analysis and drive-cycle modelling. A related Warwick paper reports an Excel model for battery, inverter, traction motor and gearbox sizing, with energy-use prediction error of 5% for low-speed drive cycles in its validation cases.

**Transferable lessons:** freeze mission requirements before component choice; model range and acceleration together; analyse sensitivity to uncertain cell resistance, efficiency and gearing; do not size the battery from range alone or peak power alone.

Source URLs:
- https://www.mdpi.com/1996-1073/17/2/330
- https://wrap.warwick.ac.uk/id/eprint/165173/1/WRAP-rapid-decision-making-tool-powertrain-sizing-Kirca-2022.pdf

## F. 2026 critical evidence review — conversion system integration

**Source:** *Gasoline-to-Electric Vehicle Conversion as a Circular and Safety-Critical Pathway for Transport Electrification: A Structured Critical Evidence Review*, 2026.  
**Evidence class:** recent structured review.

The review reinforces that motor/controller choice must follow vehicle purpose and original-platform limits. Important variables include converted mass, acceleration, maximum speed, gradient, wheel radius, gearing, continuous/peak power, cooling, inverter voltage/current and battery/BMS compatibility.

**Transferable lessons:** start from road-load estimation; evaluate the converted motorcycle as a whole system; assess thermal limits and battery power capability as well as energy capacity.

Source URL: https://www.mdpi.com/2032-6653/17/9/486

## G. Regional component sourcing lead

**Supplier:** Batt-Tech-SA, Durban, South Africa.  
**Evidence class:** supplier's own public capability statement; not independent product validation.

The supplier advertises 48–96 V e-motorcycle/e-bike battery packs, LFP or NMC options, BMS matched to controller current, chargers, traction motors, controllers, contactors, LV harnesses and motor cradles. It invites customers to provide system voltage, controller current, battery-space dimensions, range target and charger status.

**Potential use:** request a preliminary system review after the EN125 measurements and requirements are available. Obtain exact cell/model data, datasheets, test records, warranty, shipping and import details before qualification.

Source URL: https://batt-tech-sa.co.za/conversions/

## H. Safety design reference

**Source:** SESA EU-Africa technical/functional requirements report, 2025.  
**Evidence class:** technical requirements reference; not a Mauritius legal determination.

Its prototype motorcycle guidance identifies pack fusing, independent traction isolation, battery retention under foreseeable impact, enclosure protection, cell voltage/temperature monitoring, service disconnect, contactors and protection of high-voltage terminals as important design considerations.

Source URL: https://sesa-euafrica.eu/wp-content/uploads/2025/09/D3.2-Tech-and-functional-requirements.pdf

## Evidence rules

- A vendor page is evidence that a service or product is advertised, not that it is independently qualified.
- A builder's range estimate is not a controlled test result.
- A dynamometer test is not proof of road range, durability or safety.
- A donor case study is not an EN125 design approval.
- Record exact source, date accessed, model/revision, test conditions and limitations for every adopted design input.
