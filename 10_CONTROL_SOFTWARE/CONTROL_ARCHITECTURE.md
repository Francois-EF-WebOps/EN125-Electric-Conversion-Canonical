# Embedded control architecture

**Status:** platform-neutral functional specification. No MCU or firmware implementation selected.

## Control objectives
- Prevent unintended propulsion.
- Require a deliberate enable sequence.
- Detect implausible rider-demand signals and critical interlock faults.
- Coordinate controller enable with battery/BMS permission.
- Enter a defined safe state on critical fault or loss of required signal.
- Provide clear status and diagnostic records.
- Avoid automatic restart after a latched critical fault without deliberate reset.

## Conceptual states
`POWERED_OFF → SELF_CHECK → READY_DISABLED → DRIVE_ENABLED`
Any critical fault transitions to `FAULT_LATCHED`. Charging state is separate and must inhibit propulsion. State transitions require explicit, verified interlock conditions.

## Required inputs (TBD)
Throttle channels and plausibility; brake switch; enable/key state; neutral/clutch/stand interlocks as applicable; BMS discharge permission; controller fault; pack temperature/voltage/current; emergency stop.

## Required outputs (TBD)
Controller enable request, status indicators, warning signal, diagnostic event record and low-voltage shutdown request. The architecture must not bypass certified protections or the BMS.

## Failure analysis
For each input define open-circuit, short-to-ground, short-to-supply, out-of-range, stale communication and contradictory-state behaviour. Safe response must be reviewed against the exact controller interface.

## Software evidence expected
State-transition table and interface contract; unit tests for transition logic; fault-injection tests in a software simulator; hardware-in-the-loop plan after platform and safe test equipment are selected; versioned firmware source, reproducible build, test logs and code review.

No claim of embedded firmware implementation or functional-safety compliance is made until those artefacts exist and are reviewed.