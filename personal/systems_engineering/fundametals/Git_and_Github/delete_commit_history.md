---
reviewed_on: "2026-04-08"
---

# Delete commit history

1. `git checkout --orphan new_branch`.

2. Commit all files.

3. `git branch -d main`.

4. `git branch -m main`.

5. `git push -f origin main`.
