---
reviewed_on: 2026-04-05
---

# Indicators meeting notes

Assigned indicators and reference timestamps in the recordings

- IND-001 (SS): 20/03 → 10:55.

- IND-002 (RH): 20/03 → 12:06.

- IND-003 (PEL): 16/03 → 13:13.

- IND-003 (IEL): 16/03 → 13:18.

- IND-005 (EEV): 18/03 → 13:29 and 19:45.

- IND-006 (A): 13/03 → 16:20.

## Absenteeism

- This seems to be the indicator that is updated most frequently and also the one that requires the most manual work.

- When a person goes on medical leave, Verónica follows up on the case.

- To calculate the numerator of the indicator, meaning the number of absences or absence days, the count is done manually.

- The file is updated day by day.

- The same file includes other fields used for health diagnoses and behavior analysis, but for this indicator only the part related to absence days is used.

- If a medical leave lasts 3 days or more, it must go through a validation process with the EPS.

- What we are seeing is only one part of the full process; the overall process is much larger and is probably outside the scope of the current project.

- Absenteeism data directly affects payroll, and since Endava is publicly traded, the process must be fully traceable and transparent.

- The same person may have multiple medical leave cases.

- Recobro is another part of the process, separate from the indicator.

- Source file / database: 2025 Absences Project.xlsx.

## Indicators without their own database

Some indicators do not have their own database and are filled in on demand, meaning only when the event or situation that triggers them occurs.
PEL and IEL do not have their own database; they are handled on demand.

## Other indicators

- EEV is fed from the Work Plan, specifically from the "CRON" table, row 104: "Total lifestyles and work".

- SS is fed from the medical follow-up matrix. The idea is to track how people evolve with their medical conditions or occupational health restrictions.

- I still have a question about why absenteeism cases are also included in the denominator for SS.

- RH depends on a separate matrix, but it currently does not exist because there have not been any rehabilitation cases yet, or at least that matrix has not been shared with us.

## Main scope question

My main question is whether, at least for absenteeism, the real scope of the project is to automate only the counting of days.  For now, that seems to be the case, because the other fields in the file belong to broader processes that, due to the project's current limitations, will probably not be integrated in this phase.
