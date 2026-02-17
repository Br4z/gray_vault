---
reviewed_on: "2026-02-10"
---

# Delete files from the staging area without deleting them from the workspace

```bash
git rm --cached <file>
```

> To discard all, use the wildcard `*`.

> Without the `--cached` would also remove the file from the workspace.
