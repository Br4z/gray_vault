---
reviewed_on: "2025-01-10"
---

# 01-the_environment

...the shell maintains a body of information during our shell session called the **environment**. Programs use data stored in the environment to determine facts about the system's configuration. While most programs use **configuration files** to store program settings, some programs also look for values stored in the environment to adjust their behavior...

- `printenv`: print part or all of the environment

- `set`: set shell options.

- `export`: export environment to subsequently executed programs.

- `alias`: create an alias for a command

## What is stored in the environment?

The shell stores two basic types of data in the environment... They are **environment variables** and **shell variables**...In addiction to variables, the shell stores some programmatic data, namely **aliases** and **shell functions**...

### Examining the environment

`set` command will show both the **shell** and **environment** variables, while `printenv` will display only the latter.

```bash
printenv | less # See all environment variable through less

# printenv <environment variable> # See the content of a environment variable

set | less # Display both the shell and environment variables, as well as any defined shell functions.

#echo $<environment variable>  See the content of a environment variable
```

One element of the environment that neither `set` nor `printenv` displays is aliases (but you can see them with `alias`).

## How is the environment established?

When we log on to the system, `bash` starts and reads a series of configuration scripts called **startup files**, which define the default environment shared by all users...

### What's in a startup file?

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

The `export` command tells the shell to make the contents of `PATH` available to child processes of this shell.
