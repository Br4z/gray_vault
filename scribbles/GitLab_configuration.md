---
reviewed_on: 2026-04-05
---

# Gitlab configuration

A solid project-level setup is this:

## Protect the `main` and `develop` branch

Go to Project → Settings → Repository → Branch rules → Add branch rule, then create a rule for main or your default branch. For a strict workflow, GitLab recommends settings like Allowed to merge = Maintainers only and Allowed to push and merge = No one for production-style branches. GitLab also says that to block direct pushes, Allowed to push and merge must be explicitly set to No one.
Require approvals
Go to Project → Settings → Merge requests → Merge request approvals → Add approval rule. Set a rule name, choose users or groups, and set Approvals required to 1 or more. GitLab says 0 makes the rule optional, while any value above 0 makes it required, and you can add multiple rules. Required approval rules are a Premium/Ultimate feature; on GitLab Free, approvals are optional and do not block merging.
Stop self-approval and rule overrides
In Settings → Merge requests → Approval settings, keep or enable:
Prevent approval by merge request creator
Prevent approvals by users who add commits
Prevent editing approval rules in merge requests

That stops authors or committers from approving their own work and prevents people from weakening the rules inside an individual merge request.

Require CI and resolved review threads
In Settings → Merge requests → Merge checks, enable Pipelines must succeed. GitLab notes this requires a successful pipeline to exist, not just “no failed pipeline,” so your CI should run for every merge request. You can also enable All threads must be resolved so open review threads block the merge.
Add stronger checks if needed
If you want to test the merged result before merging, enable merged results pipelines under Settings → Merge requests → Merge options; this is Premium/Ultimate. If you use third-party controls, GitLab Ultimate also supports external status checks, and you can block merges unless those checks pass by enabling Status checks must succeed.