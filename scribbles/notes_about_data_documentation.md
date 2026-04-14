---
reviewed_on: 2026-04-05
---

# Notes about data model review

- `is_active` is a frequent field across tables, so it need more information in the "notes" section to fit the meaning in each table.

## High-priority modeling concerns

### `indicators`

- `module` is constrained in the DDL, but not in the data dictionary.

- `measurement_unit` should be constrained to "number" or "percentage".

- `manual_commentary_required` needs business validation. In the schema it defaults to `true`, and the broader product/business material says expert interpretation remains manual at reporting cut points, so this may not be a real per-indicator distinction unless the business can clearly define exceptions.

- `formula_expression` needs a note in the data dictionary saying that it will be the textual formula of the Excel dashboard.

### `workers`

- `discipline` should be constrained to the disciplines of the company.

- `job_title` could also be constrained, but I am not sure.

- Does `is_active` mean that the worker is currently hired or what?

### Labor calendar

Thinking deeper it does not make sense having this table, I know the this would be in most part for the absenteeism indicator, but the calculation of the days does not require two tables `labor_calendars` and `labor_calendar_days`.

- Since the application scope is Colombia-only, `country_code` may be unnecessary over-modeling.

	If `country_code` remains, the business reason for keeping it should be explicitly documented.

- `source_type` is constrained in the DDL, but not in the data dictionary.

- `day_type` is constrained in the DDL, but not in the data dictionary.

## Health cases

### `medical_evaluations`

- `evaluation_type` should be constrained.

- The current design of `generates_restriction` and `generates_recommendation` may be too weak to actual store content/detail of the restriction.

	> I am assuming that the second field is related with the first one.

### `health_follow_up_cases`

- This part of the model is still highly assumption-based.

- `follow_up_status`: is constrained in the DDL, but not in the data dictionary.

- This also needs role clarification: business notes indicate these cases are followed through a medical monitoring process where a doctor tracks the person's evolution, so it is still unclear how much of this process should be operated by SST users versus medical users.

### `health_follow_up_events`

- This part of the model is still highly assumption-based.

- `status_after_follow_up`: is constrained in the DDL, but not in the data dictionary.

### `occupational_disease_cases`

- The table design itself is reasonable.

- The main concern is operational reality: these indicators do not appear to come from a robust structured source today in the same way as other modules.

- This creates a risk that the schema is modeling a clean transactional flow that does not yet exist in practice.

### `rehabilitation_cases`

- This part of the model is still highly assumption-based.

- Business notes confirm that they currently do **not** have a real rehabilitation matrix because they have not had cases that required it.

- `case_status`: is constrained in the DDL, but not in the data dictionary.

- The expected future logic sounds closer to:

	- One rehabilitation case.

	- One rehabilitation plan

	- Multiple activities/goals per case.

- Validation of the `source_case_type` with `occupational_accident_id` and `occupational_disease_case_id` is done in the DDL, but not specified in the data dictionary.

### `rehabilitation_case_activities`

- This part of the model is still highly assumption-based.

- `activity_status`: is constrained in the DDL, but not in the data dictionary.

### `health_programs`

- This table is not required for those indicators ("EEV" and "PVE"), they only require specific sections of the work plan.

	- "Estilo de vida y entornos saludables".

	- "Actividades de Promoción y Prevención en Salud".

### `health_program_schedule_entries`

- This table is not required for those indicators ("EEV" and "PVE"), they only require specific activities of the work plan.

	- "Pausas activas".
	.
	.
	.
	- "Comunicación del material de Uso seguro de morrales".

	- "Ergonomia para la vida (Pausas visuales)".

	- "Entrevista caso centinela".
	.
	.
	.
	- "Análisis e informe de resultados".

	- "Gestión del estres".

	- "Adaptación al cambio".

	- "Prevención de enfermedades de trasmisión sexual".

	- "Salud visual - pasuas visuales".

	- "Cuidao de tus ojos".

	- "Cuidado de tu piel".

## Occupational accidents

### `occupational_accidents`

- `hazard_origin_category` is constrained in the DDL, but not in the data dictionary.

- The fields `is_fatal`, `lost_days`, and `charged_days` should still be validated with the indicator owners, because the open issue is business relevance/usage, not data type.

## Absenteeism

### `absence_cases`

- `case_classification` should be constrained to predefined options. If this really refers to the recovery-cycle classification I suspect, then the likely options are something like:

	- `INITIAL`.

	- `EXTENSION` / `PRORROGA`.

	But this must be confirmed with the business.

- `subject_to_recovery` is a **derived field**, not a user-entered one: incapacities of 3 or more days go into the EPS validation/recovery flow, which supports deriving this flag from business rules rather than asking the user to enter it manually.

	> This is a annotation, not an error.

- `recovery_request_date` and `radicado_number` should remain open questions until it is confirmed that "FECHA SOLICITUD" and "RADICADO" always belong to the same recovery process being modeled here.

## Work plan

### `work_plans`

- The `name` field is unnecessary.

- What does it mean the `status` field exactly what options it can store?

### `work_plan_sections`

- If this models the "PDT" tab, it should also have an "activity" field.

### `work_plan_activities`

- The activities in the "PDT" tab in Excel are different from those in the "CRON" tab; I think we should have a `work_plan_items` for the first ones, and the actual activities should be those in the "CRON" tab.

- We need validation for the `activity_type`, in the Excel, there are three options:

	- `Cap`.

	- `Act`.

	- `Mat`.

- The `frequency_label` should be in the `work_plan_sections`, that the way it is on the Excel.

- We need to validate the `responsible_party` field, maybe they are a fixed set.

- Again what does `is_active` field mean?

### `work_plan_activity_indicator_map`

- "One activity can feed more than one indicator", that is true if we are talking about the "PDT", but it is false in the "CRON" tab. I think it is better if it represents the second case.

- `contribution_type` is not necessary, all de activities are the same: they worth the same. We just talk in terms of:

	- "No. actividades ejecutadas".

	- "No. actividades programadas".

	- "No. Trabajadores asistentes".

	- "No. Trabajadores invitados".

### `work_plan_schedule_entries`

- If desired we can merge the fields of this table with the `work_plan_activity_indicator_map`, and change the name of the resulting table.

## Continuous improvement and closure

### `acp_findings` and `acp_actions`

This part of the model is still highly assumption-based, but due to complexity I suggest to let this out of the scope (the calculation), we would be receiving the counts directly:

- "No. de acciones preventivas, correctivas y de mejora cerradas".

- "No. de acciones preventivas, correctivas o de mejora generadas".

### `acp_findings`

- `origin_type` and `finding_classification`: are constrained in the DDL, but not in the data dictionary.

### `acp_actions`

- `action_status` and `effectiveness_status`: is constrained in the DDL, but not in the data dictionary.

### `deviation_records`

This part of the model is still highly assumption-based, but due to complexity I suggest to let this out of the scope (the calculation), we would be receiving the counts directly:

- "No. de acciones preventivas, correctivas y de mejora cerradas".

- "No. de acciones preventivas, correctivas o de mejora generadas".

### `change_records` and `change_record_actions`

This part of the model is still highly assumption-based, but due to complexity I suggest to let this out of the scope (the calculation), we would be receiving the counts directly:

- "No. ánálisis de cambios ejecutados".

- "No. ánálisis de cambios generados".

- "No. de actividades realizadas".

- "No. de actividades propuestas".

### `change_records`

- `analysis_status` is constrained in the DDL, but not in the data dictionary.

### `change_record_actions`

- `action_status` is constrained in the DDL, but not in the data dictionary.

## Contractors, providers and facilities

### `contractor_provider_entities`

- `entity_type` is constrained in the DDL, but not in the data dictionary.

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
