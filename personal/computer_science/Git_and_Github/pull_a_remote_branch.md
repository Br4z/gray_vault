---
reviewed_on: "2026-02-10"
---

# Pull a remote branch

1. `git fetch origin`.

2. `git checkout <remote branch name>`.

3. `git pull origin <remote branch name>`.

---

1. `git fetch <remote source> <remote branch>:<local branch>`.

2. `git branch --set-upstream-to=origin/<remote branch> <local branch>`.
