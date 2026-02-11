---
reviewed_on: "2025-07-25"
---

# Writing your first script

## What are shell scripts?

In the simplest terms, a shell script, is a file containing a series of commands. The shell reads this file and carries out the commands as though they have been entered directly on the command line.

The shell is somewhat unique, in that is both a powerful command line interface to the system and a scripting language interpreter...

## How to write a shell script

1. Write a script: shell scripts are ordinary text files

2. Make the script executable.

3. Put the script somewhere the shell can find it.

## Script file format

```bash
#!/bin/bash
# .
# .
# .
```

The `#!` character sequence is, in fact, a special construct called a **shebang**. The shebang is used to tell the kernel the name of the interpreter that should be used to execute the script that follows.

## Script file location

### Good locations for scripts

The `~/bin` directory is a good place to put scripts intended for personal use. If we write a script that everyone on a system is allowed to use, the traditional location is `/usr/local/bin`. Scripts intended for use by the system administrator are often located in `/usr/local/sbin`. In most cases, locally supplied software, whether scripts or com­piled programs, should be placed in the `/usr/local` hierarchy and not in `/bin` or `/usr/bin`. These directories are specified by the Linux Filesystem Hierarchy Standard to contain only files supplied and maintained by the Linux distributor.

## More formatting tricks

### Long options names

Int the interests of reduced typing, short options are preferred when entering options on the command lines, but when writing scripts, long options can provided readability.

### Indentation and line-continuation

When employing long commands, readability can be enhanced by spreading the command over several lines.

It can be achieved by using line continuations (backslash-linefeed sequences) and indentation.

### Configuring `vim` for script writing

- `:syntax on`: turns on syntax highlighting.

- `:set hlsearch`: turns on search highlighting.

- `:set tabstop=4`: set the number of columns occupied by a tab character to $4$.

- `:set autoindent`: turns on "auto indent" feature, this causes `vim` to indent a new line the same amount as the line just typed.

	> To stop indentation, press `CTRL + d`.
