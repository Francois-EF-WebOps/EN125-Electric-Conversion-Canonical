# EN125 powertrain and battery sizing method

## 1. Published donor reference — verify exact variant

Publicly indexed EN125-2A specifications report approximately:
- 124 cc, air-cooled, single-cylinder, four-stroke engine.
- 8.9 kW / 12 hp at 9,000 rpm.
- 9.7 Nm at 9,000 rpm.
- Five-speed transmission.
- 122 kg curb mass for the listed variant.

A service-manual listing reports primary reduction 3.470 (59/17), final reduction 3.214 (45/14), and individual gearbox ratios. These figures are references only until the actual motorcycle year/variant and matching manual are confirmed.

Sources:
- https://www.suzukicycles.org/EN-series/EN125.shtml
- https://www.manualslib.com/manual/1233199/Suzuki-En125-2a.html

**Important:** the 45/14 final reduction is not the total engine-to-wheel ratio. The original primary reduction and selected gearbox ratio also contribute. If the gearbox is removed for a single-speed conversion, the new motor-to-wheel ratio must be calculated from the motor speed/torque curve and wheel requirements. Do not copy the stock final ratio as the new motor ratio.

## 2. Mission profile inputs

Required inputs:
- target cruising speed and maximum speed;
- desired acceleration / gradeability;
- total rider + passenger + luggage mass;
- donor mass and expected converted mass;
- wheel loaded radius and tyre circumference;
- rolling resistance estimate or measurement;
- aerodynamic drag estimate;
- route distance, speed profile, gradient and stop/start pattern;
- ambient temperature and cooling assumptions;
- target usable range and charging time.

Do not freeze a motor or battery from engine displacement or nominal horsepower alone.

## 3. Road-load model

For a first-order longitudinal model:

F_total = F_roll + F_aero + F_grade + F_accel

F_roll = Crr × m × g

F_aero = 0.5 × rho × CdA × v²

F_grade = m × g × sin(theta)

F_accel = m × a

P_wheel = F_total × v

T_wheel = F_total × r_wheel

Use SI units. Record the source and uncertainty for Crr, CdA, air density, mass, gradient and wheel radius. At low speed, acceleration and gradient may dominate; at higher speed, aerodynamic drag rises approximately with speed squared and aerodynamic power approximately with speed cubed.

Required outputs:
- wheel force vs speed;
- wheel torque vs speed;
- wheel power vs speed;
- motor speed vs vehicle speed for each candidate ratio;
- continuous thermal duty;
- peak acceleration/gradient duty;
- energy per route cycle (Wh/km).

## 4. Motor and reduction selection

For a candidate motor:
- use manufacturer torque-speed and power-speed curves;
- distinguish continuous from peak ratings and peak duration;
- check maximum RPM and overspeed limits;
- check cooling at low vehicle speed;
- check motor/controller compatibility and sensor/encoder interface;
- select a chain ratio that satisfies both target wheel speed and required wheel torque;
- verify sprocket size, chain pitch, wrap angle, chain line, adjustment range and guarding.

The XAMK eBandit case used 4.4:1 single-speed chain reduction; the ZEVA NSR150 case used approximately 3.3:1. These are examples, not EN125 recommendations.

Motor speed at target vehicle speed:

motor_rpm = wheel_rpm × reduction_ratio

wheel_rpm = (vehicle_speed_m_per_s / (2 × pi × loaded_wheel_radius_m)) × 60

At low speed, calculate available wheel torque after reduction and drivetrain efficiency. At top speed, verify that the motor can reach the required RPM without exceeding its limits.

## 5. Battery energy and power sizing

Nominal pack energy:

E_nominal_kWh = V_nominal × Ah / 1000

Required usable energy:

E_usable_kWh = route_distance_km × consumption_Wh_per_km / 1000

Nominal pack capacity must be larger than required usable energy by a declared allowance for operating SOC window, ageing, temperature, reserve and conversion losses. Do not assume the full nameplate capacity is available in normal operation.

Battery power is a separate constraint:
- calculate battery-side current from DC power and pack voltage;
- use controller manufacturer battery-current limits, not motor phase-current values;
- verify cell discharge capability at the relevant temperature and SOC;
- verify BMS continuous and peak current with duration;
- verify voltage sag and low-SOC performance;
- verify conductor, connector, fuse and contactor ratings against the fault and operating envelope.

## 6. Evidence-based range calibration

The ZEVA NSR150 builder reported approximately 47 Wh/km calculated from suburban use at 50–60 km/h with a 2.703 kWh pack, yielding about 57 km theoretical range. The builder later reported cell degradation and about 35 km range. This is a useful reference showing how real consumption and cell condition affect range; it is not an EN125 prediction.

The project must calibrate its own Wh/km using:
1. a defined route and load;
2. measured pack energy delivered/recharged;
3. recorded speed profile and elevation;
4. ambient temperature and tyre pressure;
5. repeated runs;
6. uncertainty and battery SOC window.

## 7. Component compatibility matrix

No component is approved until all relevant interfaces are checked.

| Interface | Required compatibility evidence |
|---|---|
| Motor ↔ controller | Motor type, voltage, phase current, encoder/Hall/temp sensors, control firmware, cooling |
| Controller ↔ battery | Voltage range, battery current, peak duration, regenerative current, pre-charge requirements |
| Battery ↔ BMS | Cell chemistry/model, series count, cell voltage limits, temperature sensors, current capability |
| BMS ↔ controller | Charge/discharge permission, current limits, fault output, CAN/UART/other protocol if used |
| Battery ↔ charger | Chemistry, maximum charge voltage/current, temperature limits, charge termination and interlock |
| Traction ↔ 12 V system | DC/DC rating, low-voltage battery/load budget, fuse and isolation |
| Motor ↔ chain drive | RPM, torque, sprocket fit, chain rating, ratio, alignment, tension and guarding |
| Pack ↔ chassis | Mass, envelope, retention loads, isolation, impact, vibration, water and service access |

## 8. Worked example — illustrative only

If a future measured duty cycle were 47 Wh/km and the required route were 50 km:

E_usable = 47 × 50 = 2,350 Wh = 2.35 kWh.

This is usable route energy before adding the project's declared reserve, ageing, temperature and SOC-window allowances. It does not establish that a 2.35 kWh nominal pack is sufficient.

## 9. Decision rule

Do not release a motor, controller or battery purchase until:
- donor variant and dimensions are verified;
- mission profile is approved;
- road-load model is reproducible;
- candidate motor meets torque, speed and thermal requirements;
- candidate controller and battery are matched;
- battery fits the measured envelope and mass distribution;
- supplier provides exact datasheets and written compatibility;
- mechanical/electrical reviews are complete.
