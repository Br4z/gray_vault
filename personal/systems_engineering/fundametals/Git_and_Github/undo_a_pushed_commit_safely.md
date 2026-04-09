---
reviewed_on: 2026-04-08
---

# Undo a pushed commit safely

```bash
git revert HEAD`
```

Create a new commit that reverses the last commit.

> This is safer than `git reset` when the original commit has already been pushed.
