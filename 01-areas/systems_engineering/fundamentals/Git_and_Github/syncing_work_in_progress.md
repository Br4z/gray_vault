---
reviewed_on: 2026-07-09
---

# Syncing work in progress

The recommended default workflow is to use a normal feature branch, make small work-in-progress commits, push that branch to "origin", pull it on the other computer and clean the commit history before the merging it.

## recommended default workflow

The safest general workflow is:

1. Create or continue a feature branch from `develop`.

2. Commit work in small work-in-progress commits.

3. Push the feature branch to "origin".

4. Pull the same feature branch on the other computer.

5. Continue working.

6. Before final merge, clean the branch history with interactive rebase if the team expects tidy commits.

7. Open a pull request.

This keeps unfinished work away from `develop`, makes the work available from both computers and still supports a clean final pull request.

Example flow from the first computer:

```bash
git switch develop
git pull origin develop
git switch -c feature/login-form
git status
git add .
git commit -m "wip: start login form"
git push -u origin feature/login-form
```

Example flow from the second computer:

```bash
git fetch origin
git switch feature/login-form
git pull
git status
```

If the branch does not exist locally yet:

```bash
git fetch origin
git switch --track origin/feature/login-form
```

Before finalizing the pull request:

```bash
git fetch origin
git switch feature/login-form
git rebase -i origin/develop # Starts an interactive rebase of the feature branch on top of the latest remote `develop`. This can be used to squash, reorder, edit or rename commits
git push --force-with-lease # Updates the remote branch after history was rewritten. It is safer than `git push --force` because it refuses to overwrite remote changes that were not already present locally.
```

The important rule is that unfinished work can be pushed to the feature branch, but it should not be merged into `develop` until the pull request is ready.

## Patch files using `git diff > work.patch` and `git apply work.patch`

1. Create a patch from unstaged changes: `git diff > work.patch`.

    Plain `git diff` only includes tracked files. New untracked files are not included unless they are staged first or handled separately.

2. Create a patch from staged changes: `git diff --cached > work.patch`.

3. Create a patch from both staged and unstaged tracked changes: `git diff HEAD > work.patch`.

4. Copy `work.patch` to the other computer.

5. On the other computer, confirm the branch and working tree:

    ```bash
    git switch feature/my-work
    git status
    ```

6. Check whether the patch can apply cleanly:

    ```bash
    git apply --check work.patch
    ```

7. Apply the patch:

    ```bash
    git apply work.patch
    ```

8. Review the result:

    ```bash
    git status
    git diff
    ```
