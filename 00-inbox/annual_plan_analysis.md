---
reviewed_on: 2026-07-13
---

# Annual plan analysis

## Current Excel structure

The annual plan spreadsheet is primarily organized around two worksheets:

- **PDT**: the main plan containing the higher-level activities.

- **CRON**: the detailed sub-schedules that feed or support specific activities in the PDT.

### What must be validated

The spreadsheet structure needs to be analyzed to determine:

1. How each CRON record is connected to a PDT activity.

2. Whether the connection is represented by a stable identifier, a title, a row position, or another field.

Without clearly defined relationships, automatically importing and grouping the spreadsheet data would be unreliable.

## Current application workflow

The application currently reproduces the fields provided in the Excel workbook through an activity-entry form.

The demonstrated workflow is:

1. Open a period for the month that will be processed.

2. Register activities and associate them with an indicator in that period.

3. Calculate the indicator values for the open period.

4. Close the period once the calculation has been completed.

5. Prevent new activities from being added to months whose periods have already been closed.

6. Allow corrections to existing records in the current opened period.

7. Recalculate affected indicators after a correction in the current period.

8. Preserve the original calculation, recalculations, contributing records and data changes in the history.

The annual plan is managed by year, while its indicator calculations are performed monthly.

The calculation history provides traceability by showing which records contributed to a result. When an activity is corrected, the application creates a new recalculation entry and retains evidence of the change.

## Main stakeholder feedback.

Her main concern was the **annual plan module**, which requires additional refinement because the source spreadsheet contains:

- A main PDT plan.

- Sub-schedules in CRON.

- Connections between the main plan and the sub-schedules.

- A large amount of information.

Therefore, the issue is not necessarily that the application is fundamentally incorrect. The main risk is that the current representation may not yet capture all the relationships and levels of detail present in the operational spreadsheet.

## Key design questions

### Relationship between PDT and CRON

The application needs a clear business rule for connecting a detailed CRON activity to its corresponding PDT activity.

Questions to validate include:

- Is every CRON activity required to belong to a PDT activity?

- Can a PDT activity exist without a CRON sub-schedule?

- Are there sub-schedules below the CRON level?

## Possible improvement to the annual plan interface

A possible improvement would be to represent the annual plan hierarchically:

```text
Annual plan
└── PDT activity
    ├── CRON sub-schedule
    │   ├── Detailed activity
    └── └── Detailed activity
```

## Import and automation considerations

Automating the import will require stable identifiers and explicit relationship rules.

The import process should not depend only on activity names because names may contain:

- Typographical differences.

- Abbreviations.

- Formatting variations.

A maintainable import process would ideally use:

- A unique PDT activity identifier.

- A unique CRON activity identifier.

- A parent or related-activity identifier.
