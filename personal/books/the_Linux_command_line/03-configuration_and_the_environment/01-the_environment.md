---
reviewed_on: "2025-06-30"
---

# 01-the_environment

...the shell maintains a body of information during our shell session called the **environment**. Programs use data stored in the environment to determine facts about the system's configuration. While most programs use **configuration files** to store program settings, some programs also look for values stored in the environment to adjust their behavior...

- `printenv`: print part or all of the environment.

- `set`: set shell options.

- `export`: export environment to subsequently executed programs.

- `alias`: create an alias for a command.

- `source`: execute commands from a file in the current shell.

## What is stored in the environment?

The shell stores two basic types of data in the environment...They are **environment variables** and **shell variables**...In addiction to variables, the shell stores some programmatic data, namely **aliases** and **shell functions**...

### Examining the environment

...`set` command will show both the **shell** and **environment** variables, while `printenv` will display only the latter...

```bash
printenv | less # See all environment variable through less

# printenv <environment variable> # See the content of a environment variable

set | less # Display both the shell and environment variables, as well as any defined shell functions.

#echo $<environment variable>  See the content of a environment variable
```

One element of the environment that neither `set` nor `printenv` displays is aliases (but you can see them with `alias`).

### Some interesting variables

| variable  | contents                                                                                              |
|:---------:|:----------------------------------------------------------------------------------------------------- |
| `DISPLAY` | name of the display if we are running a graphical environment.                                        |
| `EDITOR`  | name of the program to be used for text editing.                                                      |
|  `SHELL`  | name of the user's default shell program.                                                             |
|  `HOME`   | pathname of our home directory                                                                        |
|  `LANG`   | character set and collation order of our human language.                                              |
| `OLDPWD`  | previos working directory.                                                                            |
|  `PAGER`  | name of the program to be used for paging output.                                                     |
|  `PATH`   | colon-separated list of directories that are searched when we enter the name of a executable program. |
|   `PS1`   | stands for "prompt string $1$".                                                                       |
|   `PWD`   | current working directory.                                                                            |
|  `TERM`   | name of your terminal type.                                                                           |
|   `TZ`    | specifies our time zone.                                                                              |
|  `USER`   | our username.                                                                                         |

## How is the environment established?

When we log on to the system, `bash` starts and reads a series of configuration scripts called **startup files**, which define the default environment shared by all users...There are two kinds.

- A login shell session.

- A non-login shell session.

Login shells read one or more startup files as shown in the following table:

|       file        | contents                                                                                      |
|:-----------------:|:--------------------------------------------------------------------------------------------- |
|  `/etc/profile`   | a global configuration script that applies to all users.                                      |
| `~/.bash_profile` | a user's personal startup file.                                                               |
|  `~/.bash_login`  | if `~/.bash_profile` is no found, `bash` attempts to read this script.                        |
|   `~/.profile`    | if neither `~/.bash_profile` nor `~/.bash_login` is found, `bash` attempts to read this file. |

Non-login shells read one or more startup files as shown in the following table:

|      file      | contents                                                 |
|:--------------:|:-------------------------------------------------------- |
| `/etc/profile` | a global configuration script that applies to all users. |
|   `~/bashrc`   | a user's personal startup file.                          |

In addition to reading the startup files in the above table, non-login shells inherit the environ­ment variables from their parent process, usually a login shell.

### What is in a startup file?

```bash
# .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH
```

The first conditional is call an **if compound command**, an can be translate into:

```
If the file "~/.bashrc" exists, then
	read the "~/.bashrc" file.
```

The `export` command tells the shell to make the contents of `PATH` available to child processes of this shell. In a sense, it converts a shell variable into an environment variable.

### Exploring how child processes inherit their environments

Shell variables are local to the current instance of the shell and are not copied to any children the shell launches.

...This shows an important rule regarding child processes: **a child process cannot alter the environment of its parent**. When a child process terminates, it takes its environment with it.

### Launching a program with a temporary environment

Another handy trick the shell provides is the ability to execute a command and give it a temporary environment variable.

```bash
# <environment variable>=<environment variable value> <command>
MANWIDTH=75 man ls
```

> `man` output format with a maximum of $75$ characters wide.