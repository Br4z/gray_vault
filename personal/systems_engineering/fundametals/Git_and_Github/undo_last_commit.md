---
reviewed_on: "2026-04-21"
---

# Undo last commit

- `git reset --soft HEAD~1`: undo the last commit and keep the changes staged.

- `git reset HEAD~1`: undo the last commit and keep the changes in the workspace, but unstage them.

- `git reset --hard HEAD~1`: undo the last commit and discard the local changes.

> `git reset HEAD~1` is equivalent to `git reset --mixed HEAD~1`.
