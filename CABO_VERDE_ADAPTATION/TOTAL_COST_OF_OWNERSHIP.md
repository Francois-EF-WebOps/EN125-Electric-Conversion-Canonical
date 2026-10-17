# Total cost of ownership comparison

**Purpose:** compare a specific transport service over the same period and workload. This is a blank model; no local prices or savings are asserted.

## Compare like with like

Compare at least:
1. existing petrol vehicle;
2. suitable factory-built electric vehicle available to the user;
3. conversion, only if a lawful and technically credible route exists;
4. a non-motorised, shared, or trip-consolidation alternative where appropriate.

Use the same route, payload, service hours, number of completed jobs, and evaluation period. State all differences.

## Cost categories

Include costs that are paid directly and costs borne by the operator, customer, workshop, or project sponsor.

- acquisition or donor vehicle purchase;
- engineering, design review, fabrication, conversion labour, and inspection;
- motor, controller, battery, battery-management system, charger, protection, wiring, mounting, and instrumentation;
- shipping, import, duties, taxes, customs, port/handling, and local delivery;
- electricity or fuel, including charging losses and actual tariff;
- routine service, tyres, brakes, consumables, and repairs;
- insurance, registration, licensing, permits, and compliance;
- battery degradation, replacement reserve, safe storage, and end-of-life handling;
- downtime, failed trips, recovery, spare vehicle, and missed deliveries;
- driver/operator wages, dispatch, training, workshop overhead, and data collection;
- financing cost, residual value, and disposal cost.

Do not count unpaid labour as zero cost without explicitly labelling it as a subsidy or volunteer contribution.

## Core measures

Let the evaluation period be (T).

**Total cost of ownership (TCO):**

[
TCO_T = C_{acquisition} + C_{conversion} + C_{energy} + C_{maintenance} + C_{compliance} + C_{labour} + C_{downtime} + C_{end of life} - V_{residual}
]

Avoid double-counting. If financing payments include principal and interest, do not also count the full purchase price without a consistent cash-flow method.

**Cost per completed job:**

[
Cost/job = rac{TCO_T}{	ext{completed jobs during }T}
]

**Energy use per kilometre:**

[
Energy/km = rac{	ext{measured charging energy}}{	ext{measured kilometres}}
]

Use energy measured at the wall where possible so charger and charging losses are included. Report the measurement method.

**Service availability:**

[
Availability = rac{	ext{scheduled service hours available}}{	ext{total scheduled service hours}}
]

Define “available” and “scheduled” before the test. Report cancelled or failed jobs separately.

## Required operating data

For every trip or shift record:
- date and vehicle/build ID;
- route length, elevation/surface notes, and weather;
- payload estimate and stop count;
- starting/ending battery state as measured by the chosen method;
- charging energy and time;
- travel and waiting time;
- completed, late, and failed jobs;
- repairs, faults, downtime, and cause;
- operator hours and all direct costs.

Do not use dashboard range estimates as a substitute for measured energy and route data.

## Sensitivity analysis

At minimum vary:
- annual kilometres / jobs;
- electricity tariff and fuel price;
- battery service life and replacement cost;
- conversion and engineering labour;
- maintenance and downtime;
- utilisation and residual value.

Show a low/base/high case only when each value has a source or is clearly marked as a scenario assumption. Do not present a scenario as a forecast.

## Decision rule

The conversion is not economically justified solely because electricity costs less per kilometre. It must meet legal and safety gates first, then deliver acceptable cost per completed job, availability, payload, range under the actual duty cycle, maintainability, and end-of-life handling.

**Decision record:** select option / reject option / insufficient evidence; period; route; assumptions; source links; reviewer; date; reasons; conditions that would change the decision.
