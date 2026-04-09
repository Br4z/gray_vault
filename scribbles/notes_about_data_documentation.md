---
reviewed_on: 2026-04-05
---

# Notes about data model review

## High-priority modeling concerns

### `indicators`

- `module` should ideally be modeled as a controlled catalog (lookup table / FK) instead of plain text, because it is a core functional grouping used by the product.

	> This was done in the DDL (with a `CHECK` to the 8 approved module values) but not in the documentation.

- `measurement_unit` should ideally be modeled as a controlled catalog (lookup table / FK) instead of plain text.

- `manual_commentary_required` needs business validation. In the schema it defaults to `true`, and the broader product/business material says expert interpretation remains manual at reporting cut points, so this may not be a real per-indicator distinction unless the business can clearly define exceptions.

- `formula_expression` needs a precise definition: is it only descriptive metadata for documentation/traceability, or is it intended to be executable input for the indicator engine?

### `workers`

- Does `is_active` mean that the worker is currently hired or what?

### Shared workforce / denominator modeling

- It must be clearly defined what `workers` represents:

	- The full workforce master.

	- Only workers that appear in operational SST records.

- If `workers` is only a partial operational registry, it cannot be used as the source of truth for headcount.

- If `workers` is intended to represent the full workforce, then `is_active` alone is not enough for historical calculations (we should create more fields in the `indicator_results`).

- The current v4 design already separates this concern through `workforce_snapshots`, which suggests the model is leaning toward **explicit monthly headcount snapshots** rather than deriving headcount from `workers`.

### Labor calendar

- Since the application scope is Colombia-only, `country_code` may be unnecessary over-modeling.

	If `country_code` remains, the business reason for keeping it should be explicitly documented.

- `source_type` should ideally be modeled as a controlled catalog (lookup table / FK) instead of plain text.

	> This was done in the DDL (`API` or `MANUAL_LOAD`) but not in the documentation. Those options are still pending for validation.

- `day_type` should ideally be modeled as a controlled catalog (lookup table / FK) instead of plain text.

	> This was done in the DDL (`WORKING_DAY`, `HOLIDAY` or `NON_WORKING_DAY`) but not in the documentation.

## Health cases module

### `medical_evaluations`

- `evaluation_type` should ideally be modeled as a controlled catalog (lookup table / FK) instead of plain text.

- The current design of `generates_restriction` and `generates_recommendation` may be too weak to actual store content/detail of the restriction.

	> I am assuming that the second field is related with the first one.

### `health_follow_up_cases`

- `follow_up_status`: should ideally be modeled as a controlled catalog (lookup table / FK) instead of plain text.

	> This was done in the DDL (`OPEN`, `IN_FOLLOW_UP` or `CLOSED`) but not in the documentation. Those options are still pending for validation.

- This also needs role clarification: business notes indicate these cases are followed through a medical monitoring process where a doctor tracks the person's evolution, so it is still unclear how much of this process should be operated by SST users versus medical users.

### `occupational_disease_cases`

- The table design itself is reasonable.

- The main concern is operational reality: these indicators do not appear to come from a robust structured source today in the same way as other modules.

- This creates a risk that the schema is modeling a clean transactional flow that does not yet exist in practice.

### `rehabilitation_cases`

- This part of the model is still highly assumption-based.

- Business notes confirm that they currently do **not** have a real rehabilitation matrix because they have not had cases that required it.

- The expected future logic sounds closer to:

	- One rehabilitation case.

	- One rehabilitation plan

	- Multiple activities/goals per case.

- The current design with `source_case_type` plus two nullable foreign keys is not protected.

	> This was done in the DDL (`CHECK` that forces exactly one source link) but not in the documentation.

- Even so, the design still deserves validation, because it solves the FK integrity problem but not necessarily possible invalid states.

## Occupational accidents

### `occupational_accidents`

- `hazard_origin_category` is already constrained in v4, so this note should be reframed as "validate the business categories", not "add restrictions".

	> This was done in the DDL (`'BIOLOGICAL'`, `BIOMECHANICAL`...`OTHER`) but not in the documentation. Those options are still pending for validation.

- The fields `is_fatal`, `lost_days`, and `charged_days` should still be validated with the indicator owners, because the open issue is business relevance/usage, not data type.

## Absenteeism

### `absence_cases`

- `case_classification` should be constrained to predefined options. If this really refers to the recovery-cycle classification I suspect, then the likely options are something like:

	- `INITIAL`.

	- `EXTENSION` / `PRORROGA`.

	But this must be confirmed with the business.

- `subject_to_recovery` is a **derived field**, not a user-entered one: incapacities of 3 or more days go into the EPS validation/recovery flow, which supports deriving this flag from business rules rather than asking the user to enter it manually.

	> This would be a annotation, not an error.

- `recovery_request_date` and `radicado_number` should remain open questions until it is confirmed that "FECHA SOLICITUD" and "RADICADO" always belong to the same recovery process being modeled here.

## Work plan

### `work_plans`

- The `name` field is unnecessary.

- What does it mean the `status` field exactly what options it can store?

### `work_plan_activities`

- We need validation for the `activity_type`, in the Excel, there are three options:

	- `Cap`.

	- `Act`.

	- `Mat`.

- The `frequency_label` should be in the `work_plan_sections`, that the way it is on the Excel.

- We need to validate the `responsible_party` field, maybe they are a fixed set.

- Again what does `is_active` field mean?

### Additional observation

- The current schema only validates that `recovery_request_date >= absence_start_date`. It does **not** validate internal consistency such as:

	- If `subject_to_recovery = true`, then `recovery_request_date` should probably exist.

	- If there is a `radicado_number`, it should likely imply a recovery workflow state

## Controlled vocabularies / fields that should be reviewed as option-based

### Still unconstrained in v4

- `indicators.measurement_unit`.

- `medical_evaluations.evaluation_type`.

- `absence_cases.case_classification`.

### Already constrained in v4, but still worth validating with the business

- `indicators.module`.

- `indicators.frequency`.

- `workers.gender`.

- `labor_calendars.source_type`.

- `labor_calendar_days.day_type`.

- `health_follow_up_cases.follow_up_status`.

- `health_follow_up_events.status_after_follow_up`.

- `occupational_accidents.hazard_origin_category`.

- `rehabilitation_cases.source_case_type`.

- `rehabilitation_cases.case_status`.

- `rehabilitation_case_activities.activity_status`.

- `health_programs.program_code`.

- `health_program_schedule_entries.execution_status`.
