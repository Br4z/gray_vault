# Data dictionary

## Shared

### `workers`

|      column       |    type     | required |       default       | meaning                                                              | notes   |
|:-----------------:|:-----------:|:--------:|:-------------------:|:-------------------------------------------------------------------- |:------- |
|    `worker_id`    |   `UUID`    |   yes    | `gen_random_UUID()` | -                                                                    | -       |
| `document_number` |  `VARCHAR`  |   yes    |          -          | -                                                                    | Unique. |
|   `discipline`    |  `VARCHAR`  |   yes    |          -          | Discipline, department, or business line associated with the worker. | -       |
|    `job_title`    |  `VARCHAR`  |   yes    |          -          | Job title or position of the worker.                                 | -       |
|     `gender`      |  `VARCHAR`  |    no    |          -          | -                                                                    | -       |
|    `is_active`    |  `BOOLEAN`  |   yes    |       `true`        | -                                                                    | —       |
|   `created_at`    | `TIMESTAMP` |   yes    |       `now()`       | -                                                                    | —       |
|   `updated_at`    | `TIMESTAMP` |   yes    |       `now()`       | -                                                                    | —       |


TODO: consider constraining `discipline`, perhaps, the `gender` too.

### `workforce_snapshots`

|         column          |    type     | required |       default       |                   meaning                    | notes                                 |
|:-----------------------:|:-----------:|:--------:|:-------------------:|:--------------------------------------------:|:------------------------------------- |
| `workforce_snapshot_id` |   `UUID`    |   yes    | `gen_random_UUID()` |                      -                       | -                                     |
|     `period_month`      |   `DATE`    |   yes    |          -          | Month represented by the workforce snapshot. | Stored as the first day of the month. |
|     `total_workers`     |    `INT`    |   yes    |          -          |                      -                       | —                                     |
|       `is_active`       |  `BOOLEAN`  |   yes    |       `true`        |                      -                       | —                                     |
|      `created_at`       | `TIMESTAMP` |   yes    |       `now()`       |                      -                       | —                                     |
|      `updated_at`       | `TIMESTAMP` |   yes    |       `now()`       |                      -                       | —                                     |

#### Validations (`workforce_snapshots`)

- `total_workers >= 0`.

- `period_month` **must** be the the first day of a month.

### `labor_calendars`

|       column        |    type     | required |       default       | meaning | notes   |
|:-------------------:|:-----------:|:--------:|:-------------------:|:------- |:------- |
| `labor_calendar_id` |   `UUID`    |   yes    | `gen_random_UUID()` | -       | -       |
|   `calendar_year`   |   `YEAR`    |   yes    |          -          | -       | Unique. |
|    `created_at`     | `TIMESTAMP` |   yes    |       `now()`       | -       | —       |
|    `updated_at`     | `TIMESTAMP` |   yes    |       `now()`       | -       | —       |

### `labor_calendar_days`

|         column          |    type     | required | default | meaning                                 | notes                                           |
|:-----------------------:|:-----------:|:--------:|:-------:|:--------------------------------------- |:----------------------------------------------- |
| `labor_calendar_day_id` |   `UUID`    |   yes    |    -    | -                                       | -                                               |
|   `labor_calendar_id`   |   `UUID`    |   yes    |    -    | -                                       | FK -> `labor_calendar.labor_calendar_id`.       |
|     `calendar_date`     |   `DATE`    |   yes    |    -    | -                                       | -                                               |
|       `day_type`        |  `VARCHAR`  |   yes    |    -    | -                                       | `WORKING_DAY`<br>`HOLIDAY`<br>`NON-WORKING_DAY` |
|     `holiday_name`      |  `VARCHAR`  |    no    |    -    | Holiday name when the day is a holiday. | -                                               |
|      `created_at`       | `TIMESTAMP` |   yes    | `now()` | -                                       | —                                               |
|      `updated_at`       | `TIMESTAMP` |   yes    | `now()` | -                                       | —                                               |

TODO: validate is those are all the day types.

## Operational

### `absence_cases`

|         column          |    type     | required | default | meaning                                                             | notes                        |
|:-----------------------:|:-----------:|:--------:|:-------:|:------------------------------------------------------------------- |:---------------------------- |
|    `absence_case_id`    |   `UUID`    |   yes    |    -    | -                                                                   | -                            |
|       `worker_id`       |   `UUID`    |   yes    |    -    | -                                                                   | FK -> `workers.worker_id`.   |
|     `absence_type`      |  `VARCHAR`  |   yes    |    -    | -                                                                   | `CN`<br>`EG`<br>`LM`<br>`LP` |
|  `absence_start_date`   |   `DATE`    |   yes    |    -    | -                                                                   | -                            |
|   `absence_end_date`    |   `DATE`    |   yes    |    -    | -                                                                   | -                            |
|  `case_classification`  |  `VARCHAR`  |   yes    |    -    | Business classification of the absence case.                        | `INITIAL`<br>`EXTENSION`     |
|    `diagnosis_code`     |  `VARCHAR`  |    no    |    -    | Medical diagnosis code linked to the absence, if stored.            | -                            |
| `diagnosis_description` |  `VARCHAR`  |    no    |    -    | Medical diagnosis description linked to the absence, if stored.     | -                            |
|    `health_insurer`     |  `VARCHAR`  |    no    |    -    | Health insurer/EPS associated with the case.                        | -                            |
|  `subject_to_recovery`  |  `BOOLEAN`  |   yes    | `false` | Whether the case enters a recovery/reimbursement process.           | —                            |
| `recovery_request_date` |   `DATE`    |    no    |    —    | Date when the recovery request was filed, if applicable.            | —                            |
|    `radicado_number`    |  `VARCHAR`  |    no    |    —    | Filing/radicado number used in the recovery process, if applicable. | —                            |
|      `created_at`       | `TIMESTAMP` |   yes    | `now()` | -                                                                   | —                            |
|      `updated_at`       | `TIMESTAMP` |   yes    | `now()` | -                                                                   | —                            |

TODO: ask about the meaning of the options in `absence_type`.

TODO: are we going to do validate `diagnosis_code`? in the Excel file they used the CIE-10 standard.

#### Validations (`absence_cases`)

- `absence_end_date >= absence_start_date`.

#### Open questions or assumptions (`absence_cases`)

- `subject_to_recovery` is a **derived field**, not a user-entered one: incapacities of 3 or more days go into the EPS validation/recovery flow, which supports deriving this flag from business rules rather than asking the user to enter it manually.

- Are `recovery_request_date` and `radicado_number` ("FECHA SOLICITUD" and "RADICADO") always related with the recovery process?

### `work_plans`

|     column     |    type     | required |       default       | meaning                             | notes |
|:--------------:|:-----------:|:--------:|:-------------------:|:----------------------------------- |:----- |
| `work_plan_id` |   `UUID`    |   yes    | `gen_random_uuid()` | -                                   | PK.   |
|  `plan_year`   |   `YEAR`    |   yes    |          —          | Year that the work plan belongs to. | —     |
|  `created_at`  | `TIMESTAMP` |   yes    |       `now()`       | -                                   | —     |
|  `updated_at`  | `TIMESTAMP` |   yes    |       `now()`       | -                                   | —     |

TODO: If we are not going to do computations with `plan_year`, consider change its type to `VARCHAR`.

### `work_plan_sections`

|         column         |    type     | required |       default       | meaning                                                             | notes                                   |
|:----------------------:|:-----------:|:--------:|:-------------------:|:------------------------------------------------------------------- |:--------------------------------------- |
| `work_plan_section_id` |   `UUID`    |   yes    | `gen_random_uuid()` | -                                                                   | PK.                                     |
|     `work_plan_id`     |   `UUID`    |   yes    |          —          | Annual work plan that owns this section.                            | FK -> `work_plans.work_plan_id`.        |
|        `topic`         |  `VARCHAR`  |   yes    |          —          | -                                                                   | —                                       |
|   `section_activity`   |  `VARCHAR`  |   yes    |          —          | -                                                                   | —                                       |
|      `frequency`       |  `VARCHAR`  |    no    |          —          | -                                                                   | `ON_DEMAND`<br>`SEMIANNUAL`<br>`ANNUAL` |
|     `responsible`      |  `VARCHAR`  |    no    |          —          | Area or person responsible for executing the activity.              | —                                       |
|      `sort_order`      |    `INT`    |   yes    |          0          | Display order of the section inside the plan.                       | —                                       |
|      `is_active`       |  `boolean`  |   yes    |       `true`        | Whether this section is currently active/usable in the application. | —                                       |
|      `created_at`      | `TIMESTAMP` |   yes    |       `now()`       | -                                                                   | —                                       |
|      `updated_at`      | `TIMESTAMP` |   yes    |       `now()`       | -                                                                   | —                                       |

TODO: consider defining what constitutes an "activity", since that term is used in all tables related to the work plan.

TODO: are we really going to use `sort_order`.

#### Open questions or assumptions (`work_plan_activities`)

- How is related `responsible` with `work_plan_activities.responsible`?

### `work_plan_activities`

|         column          |    type     | required |       default       | meaning                                                | notes                                            |
|:-----------------------:|:-----------:|:--------:|:-------------------:|:------------------------------------------------------ |:------------------------------------------------ |
| `work_plan_activity_id` |   `UUID`    |   yes    | `gen_random_uuid()` | Identifier of the related work plan activity record.   | PK                                               |
| `work_plan_section_id`  |   `UUID`    |   yes    |          —          | section that owns this activity.                       | FK -> `work_plan_sections.work_plan_section_id`. |
|     `indicator_id`      |   `UUID`    |   yes    |          —          | Identifier of the indicator related to this activity.  | FK -> `catalog.indicators.indicator_id`.         |
|     `activity_name`     |  `VARCHAR`  |   yes    |          —          | Name of the work plan activity.                        | —                                                |
|     `activity_type`     |  `VARCHAR`  |    no    |          —          | Business type/category of the activity.                | `CAP`<br>`ACT`<br>`MAT`                          |
|      `responsible`      |  `VARCHAR`  |    no    |          —          | Area or person responsible for executing the activity. | —                                                |
|      `created_at`       | `TIMESTAMP` |   yes    |       `now()`       | -                                                      | —                                                |
|      `updated_at`       | `TIMESTAMP` |   yes    |       `now()`       | -                                                      | —                                                |

TODO: ask about the meaning of the options in `activity_type`.

### `work_plan_schedule_entries`

|            column             |    type     | required |       default       | meaning                                                 | notes                                               | -   |
|:-----------------------------:|:-----------:|:--------:|:-------------------:|:------------------------------------------------------- |:--------------------------------------------------- | --- |
| `work_plan_schedule_entry_id` |   `UUID`    |   yes    | `gen_random_uuid()` | -                                                       | PK.                                                 | -   |
|    `work_plan_activity_id`    |   `UUID`    |   yes    |          —          | Work plan activity that this schedule entry belongs to. | FK -> `work_plan_activities.work_plan_activity_id`. | -   |
|            `month`            |   `DATE`    |   yes    |          —          | Date when the activity occurrence was planned.          | Stored as the first day of the month.               | -   |
|        `planned_count`        |    `INT`    |   yes    |          -          | -                                                       | -                                                   | -   |
|       `executed_count`        |    `INT`    |    no    |          -          | Number actually executed for this schedule entry.       | —                                                   | -   |
|    `invited_people_count`     |    `INT`    |    no    |          —          | Number of invited people                                | —                                                   | -   |
|    `attended_people_count`    |    `INT`    |    no    |          —          | Number of attending people                              | —                                                   | -   |
|         `recorded_by`         |   `UUID`    |    no    |          —          | User who created or updated the schedule this entry.    | FK -> `aspnet_users.user_id`.                       | -   |
|         `created_at`          | `TIMESTAMP` |   yes    |       `now()`       | -                                                       | —                                                   | -   |
|         `updated_at`          | `TIMESTAMP` |   yes    |       `now()`       | -                                                       | —                                                   | -   |

TODO: since we will have robust log management, I do not think `recorded_by` is necessary.

#### Open questions or assumptions (`work_plan_schedule_entries`)

- In the Excel file, the most basic "activities" are not "activities" (such as specific meetings or events) in and of themselves, but rather another way of grouping items; for now, there are not any months with more than one "activity" scheduled, but I think there could be more than one; in any case, this needs to be verified.

## Identity and access

### `aspnet_users`

|         column         |    type     | required |       default       | meaning                                                                                   | notes   |
|:----------------------:|:-----------:|:--------:|:-------------------:|:----------------------------------------------------------------------------------------- |:------- |
|       `user_id`        |   `UUID`    |   yes    | `gen_random_uuid()` | -                                                                                         | PK      |
|      `user_name`       |  `VARCHAR`  |   yes    |          —          | Login username.                                                                           | —       |
| `normalized_user_name` |  `VARCHAR`  |   yes    |          —          | Upper/lowered normalized username used for lookup and uniqueness.                         | Unique. |
|        `email`         |  `VARCHAR`  |    no    |          —          | Email associated with the user.                                                           | —       |
|   `normalized_email`   |  `VARCHAR`  |    no    |          —          | normalized email used by Identity lookups.                                                | Unique. |
|    `password_hash`     |   `text`    |    no    |          —          |  -                                                                                        | —       |
|     `display_name`     |  `VARCHAR`  |   yes    |          —          | Human-readable name shown in the application.                                             | -       |
|  `is_shared_account`   |  `boolean`  |   yes    |       `false`       | Whether this user is the shared Health and Safety account rather than a personal account. | -       |
|      `is_active`       |  `boolean`  |   yes    |       `true`        | Whether the account is active for product use.                                            | -       |
|      `created_at`      | `TIMESTAMP` |   yes    |       `now()`       | -                                                                                         | —       |
|      `updated_at`      | `TIMESTAMP` |   yes    |       `now()`       | -                                                                                         | —       |

TODO: I would say that the best login method is by email (we can get rid of `user_name`).

TODO: Verónica mentioned the "shared account" during the meetings, but I think it's a bad idea for the traceability we want to maintain.

### `aspnet_roles`

|  column   |   type    | required |       default       | meaning | notes |
|:---------:|:---------:|:--------:|:-------------------:|:------- |:----- |
| `role_id` |  `UUID`   |   yes    | `gen_random_uuid()` | -       | PK.   |
|  `name`   | `VARCHAR` |   yes    |          —          | -       | —     |

### `aspnet_user_roles`

|     column     |    type     | required |       default       | meaning |             notes             |
|:--------------:|:-----------:|:--------:|:-------------------:|:------- |:-----------------------------:|
| `user_role_id` |   `UUID`    |   yes    | `gen_random_uuid()` | -       |              PK.              |
|   `user_id`    |  `VARCHAR`  |   yes    |          —          | -       | FK -> `aspnet_users.user_id`. |
|   `role_id`    |  `VARCHAR`  |   yes    |          —          | -       | FK -> `aspnet_roles.role_id`. |
|  `valid_from`  |   `DATE`    |   yes    |          -          | -       |               —               |
|   `valid_to`   |   `DATE`    |   yes    |          -          | -       |               —               |
|  `created_at`  | `TIMESTAMP` |   yes    |       `now()`       | -       |               —               |
|  `updated_at`  | `TIMESTAMP` |   yes    |       `now()`       | -       |               —               |

#### Validations (`aspnet_user_roles`)

- `valid_from < valid_to`.

## Catalog

### `catalog.modules`

|        column         |    type     | required |       default       | meaning | notes                                                                             |
|:---------------------:|:-----------:|:--------:|:-------------------:|:------- |:--------------------------------------------------------------------------------- |
|      `module_id`      |   `UUID`    |   yes    | `gen_random_UUID()` | -       | PK.                                                                               |
|        `name`         |  `VARCHAR`  |   yes    |          —          | -       | —                                                                                 |
| `operational_pattern` |  `VARCHAR`  |    no    |          —          | -       | `CASE_MANAGEMENT`<br>`EVENT_REGISTRATION`<br>`PROGRAM_BOARD`<br>`MATRIX_TRACKING` |
|      `is_active`      |  `BOOLEAN`  |   yes    |       `true`        | -       | —                                                                                 |
|     `created_at`      | `TIMESTAMP` |   yes    |       `now()`       | -       | —                                                                                 |
|     `updated_at`      | `TIMESTAMP` |   yes    |       `now()`       | -       | —                                                                                 |

TODO: we need to have documentation about `operational_pattern`.

### `catalog.objectives`

|     column     |    type     | required |       default       | meaning                                    | notes |
|:--------------:|:-----------:|:--------:|:-------------------:|:------------------------------------------ |:----- |
| `objective_id` |   `UUID`    |   yes    | `gen_random_UUID()` | -                                          | PK.   |
| `description`  |   `TEXT`    |    no    |          —          | -                                          | —     |
|  `sort_order`  |    `INT`    |   yes    |          0          | Display order used in lists or UI layouts. | —     |
|  `is_active`   |  `BOOLEAN`  |   yes    |       `true`        | -                                          | —     |
|  `created_at`  | `TIMESTAMP` |   yes    |       `now()`       | -                                          | —     |
|  `updated_at`  | `TIMESTAMP` |   yes    |       `now()`       | -                                          | —     |

TODO: are we really going to use `sort_order`.

### `catalog.indicators`

|          column           |    type     | required |       default       | meaning                                                                     | notes                                    |
|:-------------------------:|:-----------:|:--------:|:-------------------:|:--------------------------------------------------------------------------- |:---------------------------------------- |
|      `indicator_id`       |   `UUID`    |   yes    | `gen_random_UUID()` | -                                                                           | PK                                       |
|      `objective_id`       |   `UUID`    |   yes    |          —          | Objective related to this indicator                                         | FK -> `catalog.objectives.objective_id`. |
|        `module_id`        |   `UUID`    |   yes    |          —          | Functional module of the app where this indicator is operated.              | FK -> `catalog.modules.module_id`.       |
|       `created_by`        |   `UUID`    |   yes    |          —          | User that created the indicator.                                            | FK -> `aspnet_users.user_id`.            |
|          `code`           |  `VARCHAR`  |   yes    |          —          | Short code of the indicator (for example A, ACP, PAT).                      | Unique                                   |
|          `name`           |  `VARCHAR`  |   yes    |          —          | Business name of the indicator.                                             | —                                        |
|     `indicator_type`      |  `VARCHAR`  |   yes    |          —          | Type/category of the indicator used by the SST domain.                      | `PROCESS`<br>`RESULT`                    |
|        `frequency`        |  `VARCHAR`  |   yes    |          —          | How often the indicator is measured: monthly, semiannual, or annual.        | `MONTHLY`<br>`SEMIANNUAL`<br>`ANNUAL`    |
|    `measurement_unit`     |  `VARCHAR`  |   yes    |          —          | Unit in which the final result is expressed.                                | `NUMBER`<br>`PERCENTAGE`                 |
|       `owner_area`        |  `VARCHAR`  |    no    |          —          | Business area that owns or maintains the indicator.                         | `SST_RESPONSIBLE`<br>`CCL_SECRETARY`     |
| `weight_within_objective` |   `float`   |    no    |          —          | Relative weight of the indicator inside its objective, if used for rollups. | -                                        |
|      `is_sensitive`       |  `BOOLEAN`  |   yes    |       `false`       | Whether the indicator relates to sensitive data.                            | —                                        |
|        `is_active`        |  `BOOLEAN`  |   yes    |       `true`        | -                                                                           | —                                        |
|       `created_at`        | `TIMESTAMP` |   yes    |       `now()`       | -                                                                           | —                                        |
|       `updated_at`        | `TIMESTAMP` |   yes    |       `now()`       | -                                                                           | —                                        |

TODO: `owner_area` confuses me with the application roles, are we just having it because it is on the Excel file.

#### Restrictions (`catalog.indicators`)

- The sum of all records, in the `weight_within_objective` field **must not** exceed 100.

### `catalog.indicator_targets`

|              column               |    type     | required |       default       | meaning | notes                                                                        |
|:---------------------------------:|:-----------:|:--------:|:-------------------:|:------- |:---------------------------------------------------------------------------- |
|            `target_id`            |   `UUID`    |   yes    | `gen_random_UUID()` | -       | PK                                                                           |
|          `indicator_id`           |   `UUID`    |   yes    |          -          | -       | FK -> `catalog.indicator.indicator_id`                                       |
| `indicator_definition_version_id` |   `UUID`    |   yes    |          -          | -       | FK -> `engine.indicator_definition_versions.indicator_definition_version_id` |
|           `valid_from`            |   `DATE`    |   yes    |       `now()`       | -       | -                                                                            |
|            `valid_to`             |   `DATE`    |    no    |                     | -       | -                                                                            |
|          `target_value`           |   `FLOAT`   |   yes    |                     | -       | -                                                                            |
|         `target_operator`         |  `VARCHAR`  |   yes    |                     | -       | `>=`<br>`>`<br>`<=`<br>`<`<br>`=`                                            |
|           `created_at`            | `TIMESTAMP` |   yes    |       `now()`       | -       | —                                                                            |
|           `updated_at`            | `TIMESTAMP` |   yes    |       `now()`       | -       | —                                                                            |

#### Validations (`catalog.indicator_targets`)

- `valid_to >= valid_from`.

## Engine

The `engine` family does not store the business’s operational data. It stores the **governed definition of the calculation**.

This solves the problem with the current fixed model: today, the indicator has its formula "attached" to the catalog; with `engine`, the indicator keeps a stable identity, but the calculation version changes in a controlled way.

### `engine.formula_templates`

It defines the **formula families that the engine allows**. It does not store a specific business formula yet; it stores the "template".


|        column         |    type     | required |       default       | meaning                                      | notes   |
|:---------------------:|:-----------:|:--------:|:-------------------:|:-------------------------------------------- |:------- |
| `formula_template_id` |   `UUID`    |   yes    | `gen_random_uuid()` | -                                            | PK.     |
|        `code`         |  `VARCHAR`  |   yes    |          -          | Código estable del template.                 | Unique. |
|        `name`         |  `VARCHAR`  |   yes    |          -          | Nombre legible.                              | -       |
|     `description`     |  `VARCHAR`  |   yes    |          -          | Qué patrón resuelve.                         | -       |
|     `output_type`     |  `VARCHAR`  |   yes    |          -          |                                              | -       |
| `supports_zero_valid` |  `VARCHAR`  |   yes    |          -          | Si soporta cero válido como regla explícita. | -       |
|      `is_active`      |  `BOOLEAN`  |    no    |       `true`        | -                                            | -       |
|     `created_at`      | `TIMESTAMP` |   yes    |       `now()`       | -                                            | —       |
|     `updated_at`      | `TIMESTAMP` |   yes    |       `now()`       | -                                            | —       |

|        `code`         | indicators            |
|:---------------------:|:--------------------- |
|  `RATIO_PERCENTAGE`   | A, FA, PAT, COPASST   |
|  `COMPOSITE_AVERAGE`  | PC, EEV, PVE          |
|  `RATE_PER_WORKERS`   | FA, SA, PEL, IEL      |
| `COUNT_CLOSURE_RATIO` | ACP, DES              |
|  `PLAN_VS_EXECUTION`  | PAT, INS, GE, COPASST |
