---
reviewed_on: "2026-04-08"
---

# Check out a remote branch locally

1. `git fetch <remote_source>`

2. `git switch <branch_name>`

> If the branch exists on the remote but not locally, Git will usually create a local tracking branch automatically.

> Explicit form: `git switch -c <branch_name> --track origin/<branch_name>`.
