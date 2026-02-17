---
reviewed_on: "2026-02-16"
---

# Commit message naming conventions

```
<type>[(<scope>)]: <short_summary>

[<body>]
```

## Types

It says **what kind of change** it is:

- `feat`: new feature.

- `fix`: bug fix.

- `docs`: documentation only.

- `style`: formatting (no logic change).

- `perf`: performance improvement.

- `test`.

- `build`.

- `chore`: maintenance tasks. It does not add a user-facing feature (so not feat) nor does fix a user-facing bug (so no fix), It is usually **internal**.

	> "Keeping the project healthy".

- `revert`: revert a commit.

## Scopes

It says **where the change happened**, while the type stays generic:

### Code areas

- `api`: the "edge" of your app that receives requests and returns responses.

	> Routes, controllers, request handlers and endpoint definitions.

- `service`: business logic orchestration, code that coordinates rules and calls other modules.

	> Service classes/functions that call repositories and validators.

- `core`: shared utilities used across many modules, not specific to one feature.

	> Helpers, shared types and error classes.

- `config`: application configuration and environment setup.

- `db`: database access and schema changes.

- `auth`: login security rules and permission checks.

	> Middleware/filters, token validation and roles/permissions.

- `ui`: frontend components and user interactions.

### Quality and maintenance

- `test`.

- `docs`.

- `lint`: linting/formatting config.

- `deps`: dependency updates.

- `build`.

- `ci`: pipelines/workflows.

- `release`.
