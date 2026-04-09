---
reviewed_on: 2026-04-05
---

# Notes about data documentation

- In the table `indicator` and the field `formula_expression`, is that value only metadata or somehow will it interact in the calculation of the indicator.

- I know the headcount is necessary to calculate some KPIs, but we can calculate that using `workers`, filter by `is_active = true` in a period and count those records. About the traceability we can store the "headcount" is some metadata of the indicator when it is calculated.

- The application is build for Colombia having a `country_code` in `labor_calendars` does not make sense, we can even delete that table completely.

	If it stays ask about `source_type` and `source_reference` fields.