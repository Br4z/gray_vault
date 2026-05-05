---
reviewed_on: 2026-05-04
---

# Notes about PRD

My main concern is that the PRD makes several product and governance decisions that we have not fully validated yet with Verónica or with the mentors. Since this is the first time we are working on a project like this, I think we should be careful not to turn the PRD into a larger enterprise platform specification before we are sure those features are really needed for the MVP.

The PRD is valuable as a long-term product vision, but I think we need to separate what is truly required for the MVP from what should be treated as post-MVP, an open question, or a future governance improvement.

## Roles and permissions

The PRD currently formalizes roles such as `SST_ADMIN` and `VIEWER`. However, from what we have discussed so far, I do not think these should be treated as fully validated business roles yet. They feel more like initial access ideas or permission profiles.

Verónica will need a section in the app to manage user permissions. However, instead of assuming a fixed formal role model from the beginning, I think the MVP should support a simpler approach: personal accounts with permissions assigned according to what each user actually needs to do.

For example, Verónica or SST users may need operational/admin permissions, while other stakeholders may only need read-only access. In that sense, `VIEWER` could exist as a generic MVP read-only profile, but not necessarily as a validated formal business role.

My suggestion is to keep a simple MVP access model: personal accounts, an admin/operator permission profile for Verónica or SST users, and a generic read-only profile only if it is clearly needed. A more detailed role matrix can be treated as post-MVP or as an open question.

### PRD source / examples (roles and permissions)

- The PRD edit history says the MVP role scope was reduced to two product roles: `SST_ADMIN` and `VIEWER`.

- The MVP scope says the product will include a centralized operational workspace for `SST_ADMIN` users plus role-appropriate `VIEWER` read models.

- FR1 through FR6 define access control, role assignment, module scope, sensitive workflow permissions and permission-change history.

- FR2 specifically says administrators can create, assign, activate and deactivate the MVP roles, including `SST_ADMIN` and `VIEWER`.

- This suggests the PRD already treats the role model as a product decision, but we should confirm whether those roles are validated business roles or just implementation assumptions.

## Shared account vs traceability

Verónica mentioned something about a shared account. I understand the operational reason: if she is unavailable, someone else needs to continue the work. However, a shared account weakens traceability because we would not know exactly who performed each action.

My suggestion is to use personal accounts instead. Verónica can have her own account and her backup/replacement can also have a personal account with the necessary permissions ready. That gives us continuity without losing accountability.

### PRD source / examples (shared account vs traceability)

- FR2 mentions assigning roles and scopes to each "user or shared account".

- The PRD also emphasizes auditability and traceability in several places, including the need to retain who created, edited, reviewed, approved, or closed indicator-related records.

- FR30 says SST_ADMIN users must be able to identify who created, updated, reviewed, approved, or closed each relevant record.

## Undefined concepts

The PRD uses concepts such as "workspace", "workflow", "workflow status", "linked evidence", "trend", "incident", and "follow-up actions." Some of these ideas may be useful, but I am not completely sure we all mean the same thing when we use them.

My suggestion is to either define these terms in a small glossary or simplify them. For the MVP, every concept should map to something concrete in the app, the database, or the user flow. If we cannot explain a concept clearly, we should validate it before making it a requirement.

### PRD source / examples (undefined concepts)

- The success criteria mention "workflow status", "linked evidence", "change history", "definition version", and "review trace".

- The user journeys mention module-specific workflows, period status, evidence checkpoints, published-definition visibility, audit trails and VIEWER trend visibility.

- The UX/UI behavior contract says every core workspace must show the active module, reporting period, workflow state and user scope.

- FR10 says users can view pending work, current workflow state and blocking actions by module and reporting period.

- FR27 says VIEWER users can review high-level module, period, publication status, trend context and approved commentary.

These terms appear many times, but the PRD does not always make clear whether they are UI labels, database entities, workflow states, dashboard concepts, or governance concepts.

## Incidents and follow-up operations

The PRD includes a detailed incident-management flow. I think this is valuable for a mature system, especially for privacy/security situations, but I do not think it should be part of the MVP unless the mentors explicitly require it.

My suggestion is to keep basic error handling, logs and support visibility for MVP, but defer a full incident-management workflow and related follow-up operations to a later phase.

### PRD source / examples (incidents and follow-up operations)

- The Compliance & Regulatory section says privacy-sensitive operational incidents must follow a documented containment, escalation, impact-review and incident-record workflow.

- The same section says notification decisions, notified parties, approval owners, timestamps and closure evidence must be recorded when notification obligations apply.

- FR46 says administrators can maintain governance settings for retention and incident handling, including privacy-incident severity categories and escalation owners.

- FR49 says administrators can monitor privacy-incident timers, notification obligations, incident-response drills and retention/legal-hold actions.

- FR50 says administrators can inspect incident records, notification records, legal-hold status history and related workflow events.

This feels like a full operational governance module. It may be important eventually, but it seems heavy for the MVP unless required by security/legal stakeholders.

## Legal, jurisdiction and retention requirements

The PRD includes detailed retention rules, jurisdiction handling, legal holds, disposal evidence and privacy incident notifications. These are good enterprise controls, but we have not received a concrete retention policy or jurisdiction-specific requirement from stakeholders.

My suggestion is not to ignore data responsibility, but to reduce this part for MVP. We can state that records must be stored securely and must not be deleted automatically until a formal retention policy is validated. The full retention/jurisdiction workflow should be an open question or post-MVP feature.

### PRD source / examples (legal, jurisdiction and retention requirements)

- The Compliance & Regulatory section says records-retention rules must define minimum retention duration by jurisdiction, legal-hold override, archive state, authorized disposal action and required disposal evidence.

- The Regulatory Applicability & Review section says each jurisdiction in scope must have a dated applicability decision record.

- The PRD also requires an approved inventory of jurisdictions, legal entities and operating sites in scope for MVP applicability decision records.

- FR46, FR49 and FR50 include retention schedules, legal-hold categories, notification obligations, legal-hold actions and retention state investigation.

- These requirements assume legal and records-management decisions that we have not clearly validated yet.

For MVP, I think we can keep secure storage and no uncontrolled deletion, while treating detailed retention/jurisdiction workflows as open questions.

## Security

I also think NFR9 may be too strict for the MVP if we apply it as a hard 15-minute inactivity timeout across all protected workflows.

I understand the security reason, especially because the application may handle sensitive SST information. However, Verónica’s workflow involves reviewing data, checking evidence, comparing calculations and sometimes pausing while validating information outside the app. If the session expires too quickly, the app may feel frustrating instead of helpful.

My suggestion is not to remove session expiration, but to make it more usable and risk-based. For MVP, we could define a configurable inactivity timeout, show a warning before logout, preserve unsaved work and return the user to the same screen after reauthentication. The 15-minute rule could be reserved for high-risk actions or applied only if corporate security explicitly requires it.

This would keep the security control while reducing friction for the main user.

### PRD source / examples (security)

- NFR9 says user sessions handling protected workflows must expire after no more than 15 minutes of inactivity.

- The PRD also says the product should reduce operational friction and help Verónica move from fragmented manual work to relief and control.

- Verónica’s journey includes reviewing inputs, validating evidence, confirming calculations and closing periods with confidence.

- A strict timeout could interrupt exactly those review workflows, especially if she pauses to check Excel files, evidence, or external information.

I think the requirement should remain security-aware but become more user-friendly and configurable.

## Traceability scope

Traceability is important, especially because the app handles SST information and calculated indicator results. However, I think the current PRD may be going too far by turning traceability into a large audit/governance module.

Verónica’s clearest pain point is the manual calculation and reconciliation work, especially in Excel. So for MVP, I suggest lightweight but useful traceability: who changed a record, when it changed, what changed, which source/evidence was used and which formula or calculation version produced the result. A full audit center can come later if needed.

### PRD source / examples (traceability scope)

- The executive summary says the MVP should be version-traceable and auditable.

- The success criteria say closed periods must include workflow status, linked evidence and change history.

- FR28 through FR33 define evidence, traceability, auditability, history of changes, actor visibility, follow-up actions, audit-oriented views and separation of numeric outputs from commentary.

- FR36 defines audit-oriented views for workflows or periods in review or closed.

- FR50 allows administrators to investigate whether a result, status, record, retention state, incident state, or notification state changed after review.

- This is a strong traceability model, but it may be larger than the minimum needed to prove the MVP.

I think we should keep core traceability for calculation and data changes, but defer advanced audit-center behavior unless explicitly required.

## MVP focus

In general, I think the PRD is excellent as a long-term product vision, but it may be too large for what we can realistically build in the internship timeline.

For the MVP, I think we should focus on proving the core value:

- Ingestion or controlled loading of the required source files.

- Formula/calculation engine.

- Validation against the existing Excel logic.

- Simple user and permission management.

- Clear dashboards/results for stakeholders.

- Minimal but real traceability.

- Documentation and tests that show we understand what we built.

I know we will use AI heavily to accelerate development, but I do not want us to blindly "vibe code" a system we do not understand. AI should help us generate artifacts, tests, code drafts and documentation, but we should still own the scope, validate the outputs and understand the implementation.

### PRD source / examples (MVP focus)

- The MVP Strategy section says Phase 1 should focus on a coherent first operational experience across the three selected module families.

- The PRD says the scope is focused but not trivial and that scope discipline is needed because the delivery horizon is short.

- The MVP Feature Set includes many must-have capabilities, including controlled migration, 13 indicators, centralized workspace, governed engine workflows, protected definition-governance backoffice, automated calculation, period lifecycle handling, evidence, traceability, role-aware views and basic governance.

- The Phase 1 Simplification Principles explicitly say the first release may defer advanced validations, richer dashboard analytics, deeper workflow sophistication and higher-comfort administrative utilities.

- The Risk Mitigation Strategy says the main technical risk is trying to deliver the three selected modules and the governed engine core with too much implementation depth in a short release horizon.

- This supports my concern: the PRD itself already recognizes that the MVP needs scope discipline.
