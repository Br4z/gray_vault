---
reviewed_on: "2025-01-30"
sources:
  - author: NA
    url: https://www.gitkraken.com/learn/git/git-flow
    language: English
---

# GitFlow

Git flow is a popular Git branching strategy aimed at simplifying release management, and was introduced by software developer Vincent Driessen in 2010. Fundamentally, Git flow involves isolating your work into different types of Git branches.

In the Git flow workflow, there are two principal branches and three supporting branches.

## Principal branches

### Main

The purpose of the main branch in the Git flow workflow is to contain production-ready code that can be released.

In Git flow, the main branch is created at the start of a project and is maintained throughout the development process. The branch can be tagged at various commits in order to signify different versions or releases of the code, and other branches will be merged into the main branch after they have been sufficiently vetted and tested.

### Develop

The develop branch is created at the start of a project and is maintained throughout the development process, and contains pre-production code with newly developed features that are in the process of being tested.

Newly-created features should be based off the develop branch, and then merged back in when ready for testing.

## Supporting branches

### Feature

It is used when adding new features to your code.

When working on a new feature, you will start a feature branch off the develop branch, and then merge your changes back into the develop branch when the feature is completed and properly reviewed.

### Release

The release branch should be used when preparing new production releases. Typically, the work being performed on release branches concerns finishing touches and minor bugs specific to releasing new code, with code that should be addressed separately from the main develop branch.

### Hotfix

It is used to quickly address necessary changes in your main branch.

The base of the hotfix branch should be your main branch and should be merged back into both the main and develop branches. Merging the changes from your hotfix branch back into the develop branch is critical to ensure the fix persists the next time the main branch is released.

## How to use it

1. How to create the repository: `git flow init`.

2. Feature creation: `git flow feature start <name>`.

	This will create a new branch based on **develop** and switch to it automatically.

3. Feature finalization: `git flow feature finish <feature name`.

	This merges the changes from the **feature** branch to **develop** and deletes the feature branch.

4. Release creation: `git flow release start <version>`.

	This creates a new **release** branch from the **develop** branch.

5. Release finalization: `git flow release finish <release version>`.

	This merges the **release** branch to **main** and **develop**, tags the **main** branch and deletes the **release** branch.

6. Hotfix creation: `git flow hotfix start <version>`.


	This creates a new **hotfix** branch from **main** and switch to it automatically.

7. Hotfix finalization: `git flow finish <hotfix version>`.

	This merges the **hotfix** branch to **main** and **develop**, tags the **main** branch and deletes the **hotfix** branch.
