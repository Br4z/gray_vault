# Gray vault

Notes on everything I have learned and have not been too lazy to write down.

This is my personal knowledge vault: a collection of notes about college, software engineering, math, statistics, books, courses, projects, random discoveries and ideas that probably started as "I should write this down before I forget it."

The main idea is simple: I want control over my notes.

That is why this vault is based on plain text files, mostly Markdown. Markdown is portable, easy to read, easy to version control and can be opened with almost anything. No database hostage situation. No mystery binary format. Just files.

I started by using VS Code to manage my notes, but later gave [Obsidian](https://obsidian.md) a try. Obsidian is now my main tool for note management because it is focused on linked notes, navigation and knowledge organization. I know VS Code can be turned into something similar with extensions, but that would require too many plugins and probably writing some myself.

All Obsidian-related configuration lives in `.obsidian`.

## Organization philosophy

This vault separates two things:

1. **Where I learned something**.

2. **What the thing is actually about**.

A class note preserves the context where I learned something.

A concept note preserves the reusable knowledge.

For example, a topic may first appear in a college course, but if it becomes useful long-term, it should eventually become a permanent note in one of the knowledge areas.

The rule is:

> Course notes preserve context. Concept notes preserve knowledge.

Instead of duplicating the same explanation in many places, related notes should be connected with links.

Example:

```md
## Related notes

- [[dynamic_programming]]
- [[knapsack]]
- [[greedy_algorithm]]
```

## Structure

The vault is organized like this:

```text
.
├── 00-inbox/
├── 01-areas/
├── 02-resources/
├── 90-archive/
├── templates/
├── journal.md
└── README.md
```

## `00-inbox/`

Temporary notes.

This is where raw, messy, unfinished, or uncategorized notes start.

The inbox is not meant to be permanent. It is a buffer.

A note in `00-inbox/` should eventually become one of these:

```text
01-college/
02-areas/
03-resources/
04-projects/
90-archive/
```

Or it should be deleted.

The rule is:

> Capture quickly, organize later, but do organize later.

## `01-college/`

Academic notes.

This directory contains semester-based notes, class notes, homework, thesis-related material and notes created while helping other students.

Example:

```text
01-college/
├── ASES/
├── semesters/
└── thesis/
```

Semester notes preserve the original academic context. They are not always meant to be perfect evergreen explanations. Sometimes they are snapshots of what I was learning at the time.

## `02-areas/`

Long-term knowledge.

This is the actual knowledge base of the vault.

Notes in this directory are organized by topic instead of by source, semester, book, course, or temporary context.

Example:

```text
02-areas/
├── math/
├── statistics/
├── systems_engineering/
├── english/
└── career/
```

If a note explains something I expect to reuse, improve, or connect with other ideas, it belongs here.

Examples:

```text
02-areas/systems_engineering/algorithms/dynamic_programming.md
02-areas/systems_engineering/problems/knapsack.md
02-areas/math/number_theory/euclidean_algorithm.md
02-areas/systems_engineering/web/REST_API.md
```

## `03-resources/`

Notes based on external sources.

This includes books, courses, videos, documentation, articles and other learning material.

Example:

```text
03-resources/
├── books/
├── courses/
└── references/
```

Resources are sources of knowledge, but they are not always the final home for knowledge.

If something from a book or course becomes reusable, it should be extracted into `02-areas/` and linked back to the original resource note when useful.

The rule is:

> Resources are where ideas come from. Areas are where ideas live.

## `04-projects/`

Active work.

This directory contains notes related to projects, experiments, internships, thesis work, prototypes and anything with a practical goal or deliverable.

Example:

```text
04-projects/
├── thesis/
├── internship/
└── experiments/
```

A project note can contain planning, meeting notes, implementation decisions, debugging logs, diagrams and references.

When a project teaches something reusable, that knowledge should be extracted into `02-areas/`.

## `90-archive/`

Old or inactive material.

This directory contains notes that are no longer active but are still worth keeping.

The archive is not trash. It is cold storage.

A note belongs here when it is no longer part of the main working system but may still be useful later.

## `templates/`

Reusable note templates.

Templates help keep note structure consistent without turning the vault into paperwork hell.

Example:

```text
templates/
└── default.md
```

## Index notes

Important directories should have an `index.md`.

An index is not just a table of contents. It is a map.

A good index may include:

```md
# Systems Engineering

## Main topics

- [[algorithms/dynamic_programming]]
- [[problems/knapsack]]
- [[web/REST_API]]
- [[programming_languages/Python/module]]

## Useful references

- [[git/commit_message_conventions]]
- [[linux/useful_commands_for_creating_scripts]]
- [[latex/cheatsheet]]

## Notes that need work

- [[some_unfinished_note]]
```

The purpose of an index is to make navigation easier without depending only on search.

## Naming conventions

File and folder names should be terminal-friendly.

Preferred style:

```text
lowercase_snake_case.md
```

Examples:

```text
dynamic_programming.md
matrix_chain_multiplication.md
commit_message_conventions.md
```

For ordered notes, use numeric prefixes:

```text
01-introduction.md
02-basic_concepts.md
03-examples.md
```

Avoid:

```text
spaces in file names.md
VeryInconsistentCapitalization.md
super-long-file-names-that-try-to-say-everything.md
```

The goal is to keep files easy to search, rename, script and manipulate from the terminal.

## Assets

Images and other assets should live close to the notes that use them.

Preferred pattern:

```text
topic/
├── assets/
│   └── image.svg
├── 01-introduction.md
└── 02-examples.md
```

This keeps notes easier to move, review and maintain.

A global assets directory is avoided unless the asset is truly shared across many unrelated notes.

## Note types

Not every note has the same purpose.

Common note types:

```text
class_note      Notes from a class or lecture
concept         A reusable explanation of an idea
problem         A specific problem and its solution
book_note       Notes from a book
course_note     Notes from an online course
reference       Commands, syntax, shortcuts, or examples
project_note    Notes related to active work
scribble        Rough notes that need cleanup
```

For structured notes, YAML frontmatter can be used:

```md
---
type: concept
status: evergreen
area: systems_engineering
tags:
  - algorithms
  - dynamic_programming
created: 2026-05-01
updated: 2026-05-01
---

# Dynamic Programming
```

Possible statuses:

```text
raw
processed
evergreen
needs_review
archived
```

Metadata should be useful, not bureaucratic.

If metadata does not help with search, filtering, review, or maintenance, it probably does not belong there.

## Workflow

The basic workflow is:

```text
capture -> process -> connect -> improve
```

## 1. Capture

New notes can start messy.

They usually begin in:

```text
00-inbox/
```

A rough note is better than a forgotten idea.

## 2. Process

When a note becomes useful, it should move to the right place.

Examples:

```text
00-inbox/unit_test.md
```

Can become:

```text
02-areas/systems_engineering/testing/unit_testing.md
```

And:

```text
00-inbox/gitlab_configuration.md
```

Can become:

```text
04-projects/internship/gitlab_configuration.md
```

Or, if it becomes reusable knowledge:

```text
02-areas/systems_engineering/git/gitlab_configuration.md
```

## 3. Connect

Related notes should link to each other.

Example:

```md
## Related

- [[gitflow]]
- [[commit_message_conventions]]
- [[stash_changes]]
```

Links are better than copying the same explanation everywhere.

## 4. Improve

Notes are allowed to be incomplete.

The goal is not to make every note perfect immediately. The goal is to make knowledge easier to capture, revisit, connect and improve.

A useful note can start as:

```md
# Topic

I do not fully understand this yet, but here is what I know.
```

Then it can improve over time.

## Maintenance commands

Because this vault is just files, it can be inspected with normal Unix tools.

Count Markdown notes:

```bash
find . -name '*.md' | wc -l
```

Find files with spaces:

```bash
find . -name '* *'
```

Find empty directories:

```bash
find . -type d -empty
```

Find duplicate file names:

```bash
find . -type f -printf '%f\n' | sort | uniq -d
```

Find old Markdown notes:

```bash
find . -name '*.md' -mtime +180
```

Find possible typo names:

```bash
find . -iname '*definiton*' -o -iname '*fundametals*' -o -iname '*languajes*'
```

The vault should be manageable from the terminal, not only from Obsidian.

## General rules

These are the rules of the vault:

1. New messy notes go to `00-inbox/`.
2. Course notes stay in `01-college/`.
3. Long-term reusable knowledge goes in `02-areas/`.
4. Books and courses live in `03-resources/`.
5. Active work lives in `04-projects/`.
6. Old inactive material goes to `90-archive/`.
7. Important folders should have an `index.md`.
8. Assets should live close to the notes that use them.
9. Links are better than duplicated explanations.
10. File names should be terminal-friendly.
11. The system should stay simple enough to maintain with plain text tools.

## Contributing

Pull requests are welcome.

Useful contributions include:

- fixing typos
- improving explanations
- fixing broken links
- correcting wrong information
- suggesting better organization
- pointing out questionable bullshit I wrote while half asleep

This is a personal vault, so not everything is meant to be polished or universally useful, but improvements are appreciated.
