---
reviewed_on: "2026-02-11"
---

# Pull a remote branch

1. `git fetch origin`.

2. `git checkout <remote_branch_name>`.

3. `git pull origin <remote_branch_name>`.

---

1. `git fetch <remote_source> <remote_branch>:<local_branch>`.

2. `git branch --set-upstream-to=origin/<remote_branch> <local_branch>`.
