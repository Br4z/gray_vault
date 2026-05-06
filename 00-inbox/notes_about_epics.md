---
reviewed_on: 2026-05-05
---

# Notes about epics

My main concern is that the backlog is still too ambitious for the MVP timeline. It contains many valuable ideas, but several of them look more like a mature product vision than the first version we can realistically build and understand.

I think the MVP should prioritize the core value already validated with Verónica: reducing manual Excel work, automating the calculations, validating results against the current workbooks and giving users a clear way to see the results. Some governance, traceability and audit features should remain in the data model or logs, but not necessarily as independent user-facing screens in the first release.

## Epic 8 (evidence, traceability and audit)

I think we can drop **Epic 8 as an independent user-facing view or section** for the MVP.

Traceability is important, but for the first version it can be shown as simple fields inside the records: created by, updated by, updated at, source file, calculation version and related result. That gives us useful traceability without building a full audit center.

My suggestion is to keep the backend foundations for traceability, but avoid building a separate module in the MVP. The audit-oriented screens, evidence drawer, traceability bundle and follow-up records can be post-MVP features.

### Backlog source (evidence, traceability and audit)

- Epic 8 is defined as a full cross-cutting epic for evidence attachment, audit history, follow-up records, traceability bundles and audit-oriented views.

- FR28 through FR32 define evidence linking, dated history, actor visibility, follow-up actions and full audit-review bundles.

- Epic 8 also introduces specific UI components such as the Evidence Drawer, Sensitive Access Boundary Indicator, Audit/History Panels and Table-to-Drawer pattern.

- This is useful for a mature system, but too large if the MVP goal is to prove calculation, controlled loading and result visibility first.

## Database and ORM portability

I am worried that the backlog treats the PostgreSQL DDL as if it were the final persistence contract. My understanding is different: we created the PostgreSQL DDL as a guidance artifact to understand the data model, relationships, and possible structure, not because the MVP requires PostgreSQL-specific features.

For the MVP, I think the database model should be represented mainly through the ORM. The domain model, entities, relationships, and constraints should live in the application through EF Core mappings and migrations. The DDL can still be useful as a reference, but it should not force us into PostgreSQL-specific implementation decisions.

My suggestion is:

- Use EF Core as the primary way to represent the persistence model.

- Do not describe the DDL as "authoritative" unless the team has validated that decision.

### Backlog source (database and ORM portability)

- AR4 defines PostgreSQL 17 as the MVP deployment baseline.

- AR5 defines EF Core with Npgsql and schema-first SQL migrations.

- AR6 says the system should use one primary `DbContext` with explicit mappings and avoid generic repository layers.

- So the realistic concern is not "make it database-agnostic now", but "do not leak PostgreSQL-specific persistence details into business logic".

## Migration should be a Python worker / script feature, not a normal API feature

I would manage migration as a Python worker or controlled script feature, not as a normal API/product workflow.

The migration process is supposed to run once, or only in exceptional controlled cases. If we expose too much migration behavior through the application backend. That would confuse the product model.

### Backlog source (migration should be a Python worker / script feature, not a normal API feature)

- AR33 says historical Excel migration should be treated as a controlled implementation activity, not a runtime business domain.

- Epic 10 defines migration as controlled one-time historical migration, reconciliation, cutover readiness and transition records.

- Story 10.1 allows migration through a controlled CLI or admin-only API endpoint, but the key point is that it should remain a controlled activity, not a normal operational workflow.

## Roles, permissions and the generic VIEWER role

Reading the user stories, I am realizing that `VIEWER` is treated as a generic role for the whole app. At the same time, the backlog also says permissions can be assigned by user, module and capability. That feels a little contradictory.

If permissions are managed per user, then some people may not fit cleanly into a formal role. In that case, `VIEWER` should probably be treated as a simple MVP permission preset, not as a fully validated business role.

### Backlog source (roles, permissions and the generic VIEWER role)

- The backlog says the MVP is bounded by two product roles: `SST_ADMIN` and `VIEWER`.

- FR2 says administrators can create, assign, activate and deactivate the MVP roles, including `SST_ADMIN` and `VIEWER`.

- FR3 and FR4 introduce module scope and separate permissions for read, create, update, review, approve and export.

- Story 1.4 also says permissions are independently configurable per user and module.

- This suggests that `VIEWER` should be treated as a useful MVP preset, not necessarily as a final formal business role.

## Story 1.5 (audit history baseline for authentication and access-change events)

For the moment, I think we can defer the **user-facing audit history view** from Story 1.5.

I know audit history is important. However, we do not have time to build a full audit screen for this version. For MVP, we can keep authentication and access-change events in the database as audit records or structured logs and create the view in a later iteration if stakeholders actually need it.

My suggestion is:

- Avoid spending MVP time on a screen Verónica probably does not care about right now.

### Backlog source (story 1.5)

- Story 1.5 requires dated audit history for login success, login failure, token refresh, logout, session timeout, forced revoke, role assignment, module-scope assignment and sensitive-workflow capability changes.

- NFR8 requires sensitive actions to create audit records with actor, timestamp and action context.

## Story 2.9 (responsive design baseline)

If Story 2.9 becomes too expensive, I think we should prioritize desktop/laptop only.

This product is mainly an internal operational tool. Verónica's workflow is Excel-heavy, table-heavy and review-heavy. That kind of work is naturally better on desktop. Tablet support is nice, but it should not block the MVP.

### Backlog source (story 2.9 )

- Story 2.9 requires desktop, laptop, tablet and graceful degradation below 768px.

- UX-DR23 defines desktop-first behavior at 1280px+.

- UX-DR24 asks for tablet usability from 768px to 1279px, while UX-DR25 says sub-768px is not part of release approval.

## Story 2.11 (Spanish localization scaffold)

Story 2.11 makes it look like we are supporting localization. I think the whole app should simply be in Spanish for the MVP.

If the localization scaffold is easy, we can keep it because it helps avoid hardcoded strings. But we should not build a multi-language feature, language selector, or translation workflow unless someone explicitly asks for it.

### Backlog source (story 2.11)

- UX-DR30 requires Spanish (`es-CO`) localization for MVP.

- Story 2.11 says all user-facing strings should come from the `es-CO` resource set and that there should be no hardcoded English strings.

- This does not necessarily mean multi-language support. It can simply mean Spanish-first UI with maintainable string management.

## Epic 3 (definition governance engine)

The strongest measure against our time problem would be to drop **epic 3 as user-facing functionality** from the MVP.

I think we should keep the database open for this logic, but we should not expose draft/validate/approve/publish/supersede/retire definition management to Verónica right now. That workflow is powerful, but it is also complex. It introduces concepts such as formula templates, reusable metrics, source bindings, internal test cases, approval evidence and publication states.

For the MVP, Verónica probably needs reliable formulas, not a formula-governance product.

My suggestion is:

- Keep indicator definitions and formula versions in the database.

- Seed the approved formulas from code, configuration, or migration scripts.

- Show the active formula/version as read-only metadata.

- Defer user-facing definition authoring, approval, publication, supersession and retirement.

- Revisit this only after the core calculation flow works and users trust the system.

### Backlog source (epic 3)

- The overview says the MVP includes a governed engine core with definition versioning, approvals, publication, supersession and retirement.

- FR16 and FR17 define draft/edit/validate/approve/publish/supersede/retire behavior for indicator-definition versions.

- Epic 3 is dedicated to the definition governance engine.

- Story 3.2 requires creating draft indicator-definition versions from approved formula templates and reusable metrics.

- This is excellent for a mature system, but it is probably too much user-facing governance for this MVP.

## Story 3.2 (drafting new indicator-definition versions)

I would reconsider how formulas will be updated.

I do not think Verónica is willing to learn how to use an "engine" for formula templates, reusable metrics and internal test cases. This is a good technical capability, but it should not be a user-facing feature right now.

My suggestion is:

- Formula changes should be handled by the development team or a controlled admin script during MVP.

- The UI should show formula/version information as read-only.

- Formula changes should still be traceable in the database.

### Backlog source (story 3.2)

- Story 3.2 says `SST_ADMIN` can create draft indicator-definition versions using approved formula templates and reusable metrics.

- Story 3.3 adds internal test cases for draft formula validation.

- The PRD describes the administrator drafting a new definition version, attaching validation rules and internal test cases, approving and publishing it without disturbing prior results.

- This is powerful, but it may confuse the main user and expand MVP scope too much.

## Story 4.3 (recalculation after every source-record change)

Story 4.3 says the Absenteeism indicator is recalculated whenever a source record is created, updated, or deleted. I am not sure this is the behavior we want.

If every record change creates a new calculated result and the previous result is superseded, we may end up with many previous calculated results for the same period. That can make the history noisy and harder to understand.

### Backlog source (story 4.3)

- Story 4.3 says a calculation work item is enqueued whenever a relevant absence record is created, updated, or deleted.

- The same story says any prior calculated result for the same period transitions to a superseded state after successful calculation.

- This supports using an internal recalculation mechanism, but not necessarily recalculating and superseding on every minor edit.

## Story 4.8 (absenteeism continuity across periods)

Story 4.8 sounds like it is about carrying unresolved follow-up items into the next period. I initially thought it might explain how overlapping absence records are managed, but I do not think that is what it actually does.

Overlapping absence records should be solved by calculation logic, not by a user action. If an absence crosses months, the system should allocate days to the correct month automatically. Verónica should not need to manually "resolve" a carry-forward action unless there is a real data-quality issue.

### Backlog source (story 4.8)

- Story 4.8 says prior-period status, carry-forward tasks and unresolved follow-up items carry forward into the next reporting period.

- So the overlap problem should primarily belong to calculation/validation logic, while carry-forward should only exist for real unresolved exceptions.

## Story 5.8 (re-evaluation flow after correction for FA, SA and PAM)

Story 5.8 expects a full operational accident-event model. I am not sure we actually have that source database and from the available materials it looks like we probably will not have it for MVP.

For accidents, I think the MVP should be simpler: controlled monthly input or controlled event capture only when an event occurs, plus explicit zero-event confirmation when there are no accidents.

### Backlog source (story 5.8)

- Epic 5 currently says the module includes event registration, zero-event handling, FA/SA/PAM calculation and result provenance.

- Story 5.1 requires registering accident and incident events with type categorization, severity, lost time and other required fields.

- Story 5.8 then re-evaluates FA/SA/PAM after corrected accident events.

- However, the indicator documentation says accident indicators are still manually entered when events occur and the exact upstream transactional source for accident counts is not explicitly documented.

- For SA specifically, the documentation also says no separate dedicated base was explicitly confirmed and recommends manual entry or controlled captured event input unless a reliable source path is confirmed.

## Story 6.2 (guided monthly grid)

I would avoid trying to recreate Excel inside the application. Against Excel, we cannot win if we copy it cell by cell.

A guided monthly grid is useful, but it should not become a full spreadsheet clone. The app should provide a better structured workflow: sections, monthly planned/executed totals, validation and calculation. The "activity" mentioned in the user story may actually be closer to a work-plan section.

### Backlog source (story 6.2)

- Story 6.2 defines a guided monthly grid with rows per activity and columns per month for planned, executed and evidence indicators.

- UX-DR10 also describes the Annual Plan Execution workspace as a guided grid with rows by activity and monthly P/E/evidence columns.

## Story 6.3 (activity execution recording with evidence linking)

I do not think Verónica currently links evidence for every activity in the actual workflow. The annual plan workbook tracks planned and executed values, but evidence may live elsewhere or may not be consistently attached to each activity.

For MVP, I would avoid making evidence mandatory for every activity unless stakeholders confirm it is required.

### Backlog source (story 6.3)

- Story 6.3 requires recording execution status and linking evidence for any activity in the annual plan.

- Story 6.1 also says each activity captures a required evidence type.

- The work-plan indicator documentation mentions evidence/support references as useful for traceability, but several sections still require validation about what evidence is mandatory and what is only operational support.

- This suggests evidence should be optional or configurable in MVP, not universally required.

## Story 6.8 (annual Plan continuity across years)

I am not fully sure what "carry-forward" means in the context of the annual work plan.

### Backlog source (story 6.8)

- Story 6.8 says the system can carry forward the prior year's plan structure into the next year.

- It also says unresolved follow-up items or carry-forward tasks appear in the new annual plan.

- The work-plan documentation says the format is generally stable, but activities can change year by year due to legal changes or annual planning decisions.

## Story 7.4 (review states before close)

Story 7.4 defines a workflow process with states like `draft → in review → approved` before close. I am not sure this is necessary for every module or every period.

If "workflow" means the process of opening and closing a reporting period, then maybe we do not need draft and review states. We may only need simple states such as open, ready to close, closed and blocked.

### Backlog source (story 7.4)

- Epic 7 defines period management as open, manage, review, identify blockers, transition through review states and close.

- FR25 says `SST_ADMIN` users can move results or workflows through defined review states before final close.

- Story 7.4 gives `draft -> in review -> approved` as an example of workflow transitions before close.

- This may be more governance than the MVP needs if the real user goal is simply to validate calculated results and close the period.
