# Git and GitHub

## Pull a remote branch

1. `git fetch origin`.

2. `git checkout <remote branch name>`.

3. `git pull origin <remote branch name>`.

---

1. `git fetch <remote source> <remote branch>:<local branch>`.

2. `git branch --set-upstream-to=origin/<remote branch> <local branch>`.

## Stash changes

```BASH
git stash
```

> Optional, you can add a message adding `save <message>`.

## Unstash changes

1. The stashed will be removed after you apply them to the code you are working on.

    ```BASH
    git stash pop
    ```

2. The stashed will not be removed after you apply them to the code you are working on.

    ```BASH
    git stash apply
    ```

## Delete files from the staging area without deleting them from the workspace

```BASH
git rm --cached <file>
```

> To discard all, use the wildcard `*`.

> Without the `--cached` would also remove the file from the workspace.

## Delete commits history

1. `git checkout --orphan new_branch`.

2. Commit all files.

3. `git branch -d main`.

4. `git branch -m main`.

5. `git push -f origin main`.

## Deactivate automatic end-of-line conversion

```BASH
git config --global core.autocrlf false`
```

## Pull a remote repository by overwriting the local one

1. `git fetch origin`.

2. `git reset --hard origin/main`.

## Replace a remote branch with a local one

```BASH
git push -f origin <branch name>
```

## Add files to the last commit

1. `git add -A`.

2. `git commit --amend`.

## Remove file(s) from the staging area without discarding changes from the workspace

- `git reset HEAD <file>`: for a specific added file.

- `git reset HEAD .`: for all added files.

## Remove file(s) from the staging and the workspace

- `git checkout -- <file>`: for a specific added file.

- `git checkout -- .`: for all added files.

## Remove directories and files from tracking

```BASH
git rm -r --cached <file or directory>
```
