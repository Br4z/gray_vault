---
reviewed_on: 2026-04-25
---

# Style guidelines

This document describes the writing and formatting conventions used in this vault.

The goal is to keep notes clear, portable, easy to edit and comfortable to read in plain Markdown.

## General writing style

- Notes use valid Markdown.

- The writing style is direct, concise and readable.

    Bad:

    ```md
    It is important to take into consideration the fact that Git is a tool that can be used for controlling different versions of files.
    ```

    Good:

    ```md
    Git controls file versions.
    ```

- Connected paragraphs are preferred when they make an explanation easier to follow.

    Bad:

    ```md
    - Git stores snapshots.

    - Commits represent changes.

    - Branches allow parallel work.
    ```

    Good:

    ```md
    Git stores snapshots of a project. Each commit represents a specific change and branches allow parallel work without modifying the main line directly.
    ```

- Lists are used for steps, checklists, grouped ideas or cases where visual separation improves clarity.

    Bad:

    ```md
    First check the current branch, then create the new branch, then push it to the remote repository, then open the pull request.
    ```

    Good:

    ```md
    To create a new branch:

    1. Check the current branch.

    2. Create the new branch.

    3. Push it to the remote repository.

    4. Open the pull request.
    ```

- The Oxford comma is not used.

    Bad:

    ```md
    Git, Docker, and Linux are useful tools.
    ```

    Good:

    ```md
    Git, Docker and Linux are useful tools.
    ```

- Second-person language is avoided. Explanations use passive voice, impersonal constructions or neutral phrasing instead.

    Bad:

    ```md
    You can use `grep` to search text inside files.
    ```

    Good:

    ```md
    The `grep` command can be used to search text inside files.
    ```

- Existing mixtures of English and Spanish are part of the note's original context and voice.

    Bad:

    ```md
    El comando `ls` muestra los archivos del directorio actual.
    ```

    Good:

    ```md
    El comando `ls` muestra los archivos del current directory.
    ```

    The mixed wording is kept when it already belongs to the original note. It is changed only when the note is being intentionally translated or normalized.

- Bold text is rare and reserved for emphasis that is genuinely necessary.

    Bad:

    ```md
    **Git** is a **version control system** used to **track changes**.
    ```

    Good:

    ```md
    Git is a version control system used to track changes.
    ```

- Em dashes are not used for parenthetical information.

    Bad:

    ```md
    Markdown is portable — especially when notes are stored as plain text.
    ```

    Good:

    ```md
    Markdown is portable, especially when notes are stored as plain text.
    ```

    Also good:

    ```md
    Markdown is portable (especially when notes are stored as plain text).
    ```

## Lists

- Bullet and numbered lists use one empty line between items.

    Bad:

    ```md
    - First item.
    - Second item.
    - Third item.
    ```

    Good:

    ```md
    - First item.

    - Second item.

    - Third item.
    ```

- List items end with a period, unless the item already contains a question mark.

    Bad:

    ```md
    - First item

    - Second item

    - Is this a question?.
    ```

    Good:

    ```md
    - First item.

    - Second item.

    - Is this a question?
    ```

## Capitalization

Capital letters are used only in the following cases:

- After a period.

    Bad:

    ```md
    Git tracks changes. it stores project history.
    ```

    Good:

    ```md
    Git tracks changes. It stores project history.
    ```

- At the beginning of a paragraph.

    Bad:

    ```md
    markdown files are easy to read.

    plain text works well with version control.
    ```

    Good:

    ```md
    Markdown files are easy to read.

    Plain text works well with version control.
    ```

- At the start of a list item.

    Bad:

    ```md
    - this item starts with a lowercase letter.

    - this one also starts with a lowercase letter.
    ```

    Good:

    ```md
    - This item starts with a capital letter.

    - This one also starts with a capital letter.
    ```

- At the start of a list item, except when the item continues a previous sentence.

    Bad:

    ```md
    The main goals are:

    - Portability.

    - Readability.

    - Easy editing.
    ```

    Good:

    ```md
    The main goals are:

    - portability.

    - readability.

    - easy editing.
    ```

- For proper names.

    Bad:

    ```md
    obsidian, linux, github and python are proper names.
    ```

    Good:

    ```md
    Obsidian, Linux, GitHub and Python are proper names.
    ```
