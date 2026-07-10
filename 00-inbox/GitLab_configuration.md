---
reviewed_on: 2026-04-06
---

# GitLab configuration

A solid project-level setup is this:

## Protect the `main` and `develop` branch

1. Go to "Project" -> "Settings" -> "Repository" -> "Branch rules" -> "Add branch rule".

2. Create the following rule for `main` and `develop`:

    - Set "Allowed to merge" (controls who can click the Merge button on a merge request whose target branch is protected) to "Maintainers only".

    - Set "Allowed to push and merge" (controls who can update the protected branch directly with Git) to "No one".

## Configure merge request approvals

Required approval rules are a Premium/Ultimate feature; on GitLab Free, approvals are optional and do not block merging.

1. Go to "Project" -> "Settings" -> "Merge requests" -> "Merge request approvals" -> "Add approval rule".

2. Create the following rule:

    - Set "Approvals required" to "1 or more".

3. Go to "Project" -> "Settings" -> "Merge requests" -> "Approval settings".

4. Keep or enable:

    - "Prevent approval by merge request creator".

    - "Prevent approvals by users who add commits".

    - "Prevent editing approval rules in merge requests".

    That stops authors or committers from approving their own work and prevents people from weakening the rules inside an individual merge request.

## Require CI and resolved review threads

1. Go to "Settings" -> "Merge requests" -> "Merge checks".

2. Enable:

    - "Pipelines must succeed": this requires a successful pipeline to exist, not just "no failed pipeline", so your CI should run for every merge request.

    - "All threads must be resolved": open review threads block the merge.

---

If you want to test the merged result before merging, enable merged results pipelines under Settings -> Merge requests -> Merge options; this is Premium/Ultimate. If you use third-party controls, GitLab Ultimate also supports external status checks, and you can block merges unless those checks pass by enabling Status checks must succeed.
