---
reviewed_on: "2025-06-30"
---

# Working with commands

- `type`: indicate how a command name is interpreted.

- `which`: display which executable program will be executed.

- `help`: get help for shell built-ins.

- `man`: display a command's manual page.

- `apropos`: display a list of appropriate commands.

- `info`: display a command's info entry.

- `whatis`: display one-line manual page descriptions.

- `alias`: create an alias for a command.

	> Executed without arguments, it displays all aliases defined in the environment.

## What exactly are commands?

A command can be one of four different things.

1. An executable program.

2. A command built into the shell itself.

	> Like `cd` command.

3. A shell function.

4. An alias.

## Identifying commands

### `type` display a command's type

It is a shell built-in that displays the kind of command the shell will execute, given a particular command name.

```bash
# type <command>

# ----------------------------------------------------------------------- #

type type

# type is a shell builtin

# ----------------------------------------------------------------------- #

type ls

# ls is aliased to `ls --color=tty'

# ----------------------------------------------------------------------- #

type cp

# cp is /bin/cp
```

### `which` display an executable's location

It is used to determine the exact location of a given executable.

```bash
which ls

/bin/ls
```

`which` only works for executable programs, not built-ins or aliases that are substitutes for actual executable programs...

## Getting a command's documentation

### `help` get help for shell built-ins

```bash
# help <command>

# ----------------------------------------------------------------------- #

help cd

# cd: cd [-L|[-P [-e]] [-@]] [dir]...
```

When square brackets appear in the description of a command's syntax, they indicate optional items. A vertical bar character indicates mutually exclusive items.

> With `-m`, `help` will display its output in an alternate format.

### `--help` display usage information

Many executable programs support a `--help` option that displays a description of the command's supported syntax and options...

```bash
# <command> --help

# ----------------------------------------------------------------------- #

mkdir --help

# Usage: mkdir [OPTION] DIRECTORY
# Create the DIRECTORY(ies), if they do not already exist.
```

### `man` display a program's manual page

Most executable programs intended for command line use provide a formal piece of documentation called a **manual** or **man page**. A special paging program called "man" is used to view them...

```
man <command>
```

Man pages vary somewhat in format, but generally contain the following:

- Title (the page's name).

- Synopsis of the command's syntax.

- Description of the command's purpose.

- Listing and description of each of the command's options.

> On most Linux systems, man uses `less` to display the manual page...

The "manual" that `man` displays is broken into sections and covers not only user commands...

| section | contents                                        |
|:-------:|:----------------------------------------------- |
|    1    | user commands.                                  |
|    2    | programming interfaces for kernel system calls. |
|    3    | programming interfaces to the C library.        |
|    4    | special files such as device nodes and drivers. |
|    5    | file formats.                                   |
|    6    | games and amusements such as screen savers.     |
|    7    | miscellaneous.                                  |
|    8    | system administration commands.                 |

Sometimes we need to refer to a specific section of the manual to find what we are looking for...

### `apropos` display appropriate commands

It is also possible to search the list of man pages for possible matches based on a search term...

```bash
# apropos <term>

# ----------------------------------------------------------------------- #

apropos partition

# addpart (8) - tell the kernel about the existence of a partition
# ...
```

The first field in each line of output is the name of the man page, and the second field shows the section. Note that `man` with the `-k` option performs the same function as `apropos`.

### `whatis` display one-line manual page descriptions

It displays the name and a one-line description of a man page matching a specified keyword.

```
whatis <term>
```

#### The most brutal man page of them all

As we have seen, the manual pages supplied with Linux and other Unix-like systems are intended as reference documentation and not as tutorials. Many man pages are hard to read, but I think the grand prize for difficulty has got to go to the man page for `bash`. As I was doing research for this book, I gave the `bash` man page careful review to ensure that I was covering most of its topics. When printed, it is more than 80 pages long and extremely dense, and its structure makes absolutely no sense to a new user.

On the other hand, it is very accurate and concise, as well as being extremely complete...

### `info` display a program's info entry

The GNU Project provides an alternative to man pages for their programs, called "info". Info manuals are displayed with a reader program named, appropriately enough, "info". Info pages are **hyperlinked** much like web pages.

`info` reads **info files**, which are tree structured into individual **nodes**, each containing a single topic. Info files contain hyperlinks that can move you from node to node. A hyperlink can be identified by its leading asterisk and is activated by placing the cursor upon it and pressing `ENTER`.

```
info <command>
```

|          command          | action                                                                   |
|:-------------------------:|:------------------------------------------------------------------------ |
|            `?`            | display command help.                                                    |
| `PAGE UP` or `BACKSPACE`  | display previous page.                                                   |
| `PAGE DOWN` or `SPACEBAR` | display next page.                                                       |
|        `n` (next)         | display the next node.                                                   |
|      `p` (previous)       | display the previous node.                                               |
|         `u` (up)          | display the parent node of the currently displayed node, usually a menu. |
|          `ENTER`          | follow the hyperlink at the cursor location.                             |
|            `q`            | quit.                                                                    |

Most of the command line programs we have discussed so far are part of the GNU Project's **coreutils** package...

### README and other program documentation files

Many software packages installed on your system have documentation files residing in the `/usr/share/doc`...

## Creating our own commands with alias

It is possible to put more than one command on a line by separating each command with a semicolon:

```bash
# command1; command2; command3

cd /usr; ls; cd -
```

1. Name availability verification.

	```bash
	type test

	# test is a shell builtin

	# ----------------------------------------------------------------------- #

	type foo

	# bash: type: foo: not found
	```

2. Alias creation.

	```bash
	# alias <name>='<string>'

	# ----------------------------------------------------------------------- #

	alias foo='cd /usr; ls; cd -'

	# ----------------------------------------------------------------------- #

	type foo

	# foo is aliased to `cd /usr; ls; cd -'
    ```

3. Alias removal.

	```bash
	unalias foo

	# ----------------------------------------------------------------------- #

	type foo

	bash: type: foo: not found
    ```

While we purposefully avoided naming our alias with an existing command name, it is not uncommon to do so. This is often done to apply a commonly desired option to each invocation of a common command...

```bash
type ls

# ls is aliased to `ls --color=tty'
```

There is one tiny problem with defining aliases on the command line. They vanish when your shell session ends...
