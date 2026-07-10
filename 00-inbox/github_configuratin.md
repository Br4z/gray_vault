---
reviewed_on: 2026-07-03
---

# GitHub configuration

## Protect the `main` and `develop` branches

GitHub has two ways to do this:

- Classic branch protection rules.

- Repository rulesets.

For newer repositories, repository rulesets are usually cleaner because multiple rulesets can apply at the same time. Classic branch protection works fine too, but only one matching branch protection rule applies to a branch.

## Repository rulesets

1. Go to "Repository" -> "Settings" -> "Rules" -> "Rulesets" -> "New ruleset" -> "New branch ruleset".

2. Set the target branches to:

   - `main`.

   - `develop`.

3. Enable the following rules:

   - "Restrict updates" if only specific users, teams, or apps should be able to update these branches.

    - "Restrict deletions".

   - "Require a pull request before merging", with the followings rules set:

        - Set "Required approvals" count to `1` or more.

        - "Require conversation resolution before merging".

        To reduce the risk of someone approving a pull request and then having the code changed afterward, enable:

        - "Dismiss stale pull request approvals when new commits are pushed".

        - "Require approval of the most recent reviewable push".

   - "Block force pushes".

4. Keep the bypass list empty unless there is a strong reason to allow specific admins, teams, or automation apps to bypass the rules.

## Require CI before merging

1. Make sure the repository has CI configured.

    For GitHub Actions, this usually means workflows under:

    ```text
    .github/workflows/
    ```

2. In the branch protection rule or ruleset, enable:

    - "Require status checks to pass".

3. Select the checks that must pass before a pull request can be merged.

## Require resolved review conversations

Enable "Require conversation resolution before merging" in "Require a pull request before merging".

This blocks merging while there are unresolved pull request review conversations.

## Test the merged result before merging

There are two common options.

### Simpler option (require the branch to be up to date)

Enable "Require branches to be up to date before merging" in "Require status checks to pass".

This forces the pull request branch to be updated with the latest version of the target branch before merging.

This is useful, but it can create extra CI runs when many pull requests are active.

### Stronger option (use merge queue)

Enable "Require merge queue".

Merge queue tests pull requests as they would exist after being merged into the target branch, including other pull requests already waiting in the queue.

If using GitHub Actions with merge queue, include the `merge_group` event:

```yaml
name: CI

on:
  pull_request:
  merge_group:

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Run tests
        run: echo "Run your test command here"
```

Without the `merge_group` event, required checks may not run correctly for merge queue entries.
