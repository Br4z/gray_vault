---
reviewed_on: 2026-07-13
---

# Annual plan analysis

## Current Excel structure

The annual plan spreadsheet is primarily organized around two worksheets:

- **PDT**: the main plan containing the higher-level activities.

- **CRON**: the **optional** detailed sub-schedules that feed or support specific activities in the PDT.

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
