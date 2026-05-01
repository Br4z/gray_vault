---
reviewed_on: "2026-04-08"
---

# Discard workspace changes

- `git restore --worktree <file>`: for a specific modified tracked file.

- `git restore --worktree .`: for all tracked files under the current directory.

> Run the second command from the repository root to affect the whole project.

> Legacy equivalent: `git checkout -- <file>` and `git checkout -- .`.
