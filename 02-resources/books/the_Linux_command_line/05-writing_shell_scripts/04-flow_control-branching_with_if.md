---
reviewed_on: "2025-07-28"
---

# Flow control: branching with `if`

The `if` compound has the following syntax:

```bash
if commands; then
    commands
[elif commands; then
    commands]
[else
    commands]
fi
```

## Exit status

Commands (including the scripts and shell functions we write) issue a value to the system when they terminate, called an **exit status**. This value, which is an integer in the range of 0 to 255, indicates the success or failure of the command's execution. By convention, a value of zero indicates success and any other value indicates failure. The shell provides a parameter that we can use to examine a command's exit status (`$?`).

Some commands use a different exit status values to provide diagnostics for errors, while many commands simply exit with a value of 1 when they fail. Man pages often include a section entitled "Exit Status", describing what codes are used.

The shell provides two extremely simple built-in commands that do nothing except terminate with either a 0 (`true`) or 1 (`false`) exit status.

What `if` really does is evaluate the success or failure of commands. If a list of commands follows `if`, the last command in the list is evaluated.

## `test`

By far, the command used most frequently with `if` is `test`. `test` performs a variety of checks and comparisons. In has two equivalent forms.

```text
test EXPRESSION
[ EXPRESSION ] # The most pupular
```

where _expression_ is an expression that is evaluated as either true or false. `test` returns an exit status of 0 when the expression is true and a status of 1 when the expression is false.

It is interesting to note that both `test` and `[` are actually commands. In `bash` they are built-ins, but they also exists as programs in `/usr/bin` for use with other shells. The expression is actually just its arguments with the `[` command requiring that the `]` character be provided as its final argument.

### File expressions

|       expression        |                                                is true if                                                 |
| :---------------------: | :-------------------------------------------------------------------------------------------------------: |
| `<file_1> -ef <file_2>` | _file_1_ and _file_2_ have the same inode numbers (the two files refer to the same file by hard linking). |
| `<file_1> -nt <file_2>` |                                     _file_1_ is newer than _file_2_.                                      |
| `<file_1> -ot <file_2>` |                                     _file_1_ is older than _file_2_.                                      |
|       `-b <file>`       |                            _file_ exists and is a block-special (device) file.                            |
|       `-c <file>`       |                                     _file_ exists and is a directory.                                     |
|       `-e <file>`       |                                              _file_ exists.                                               |
|       `-f <file>`       |                                   _file_ exists and is a regular file.                                    |
|       `-g <file>`       |                                    _file_ exists and is set-group-ID.                                     |
|       `-G <file>`       |                           _file_ exists and is owned by the effective group ID.                           |
|       `-k <file>`       |                                _file_ exists and has its "sticky bit" set.                                |
|       `-L <file>`       |                                   _file_ exists and is a symbolic link.                                   |
|       `-O <file>`       |                           _file_ exists and is owned by the effective user ID.                            |
|       `-p <file>`       |                                    _file_ exists and is a named pipe.                                     |
|       `-r <file>`       |              _file_ exists and is readable (has readable permission for the effective user).              |
|       `-s <file>`       |                             _file_ exists and has a length greater than zero.                             |
|       `-S <file>`       |                                _file_ exists and and is a network socket.                                 |
|        `-t <fd>`        |                         _fd_ is a file descriptor directed to/from the terminal.                          |
|       `-u <file>`       |                                       _file_ exists and is setuid.                                        |
|       `-w <file>`       |               _file_ exists and is writable (has write permission for the effective user).                |
|       `-x <file>`       |          _file_ exists and is executable (has execute/search permission for the effective user).          |

### String expressions

|                       expression                        | is true if                                   |
| :-----------------------------------------------------: | :------------------------------------------- |
|                       `<string>`                        | _string_ is not null.                        |
|                      `-n <string>`                      | the length of _string_ is greater than zero. |
| `<string_1> = <string_2>`<br>`<string_1> == <string_2>` | _string_1_ and _string_2_ are equal.         |
|               `<string_1> != <string_2>`                | _string_1_ and _string_2_ are not equal.     |
|                `<string_1> > <string_2>`                | _string_1_ sorts after _string_2_.           |
|                `<string_1> < <string_2>`                | _string_1_ sorts before _string_2_.          |

> The `<` and `>` expression must be quoted (os escaped with a backslash) when used with `test`. If they are not, they will be interpreted by the shell as redirection operators, with potentially destructive results.

### Integer expressions

|          expression           | is true if                                           |
| :---------------------------: | :--------------------------------------------------- |
| `<integer_1> -eq <integer_2>` | _integer_1_ is equal to _integer_2_.                 |
| `<integer_1> -ne <integer_2>` | _integer_1_ is not equal to _integer_2_.             |
| `<integer_1> -le <integer_2>` | _integer_1_ is less than or equal to _integer_2_.    |
| `<integer_1> -lt <integer_2>` | _integer_1_ is less than to _integer_2_.             |
| `<integer_1> -ge <integer_2>` | _integer_1_ is greater than or equal to _integer_2_. |
| `<integer_1> -gt <integer_2>` | _integer_1_ is greater than _integer_2_.             |

## A more modern version of `test`

Modern version of `bash` include a compound command that acts as an enhanced replacement for `test`. It uses the following syntax:

```bash
[[ expression ]]
```

where, like `test`, _expression_ is an expression that evaluates to either a true or false result. The `[[ ]]` is similar to `test` (it supports all of its expressions), but adds an important new string expression.

```bash
string =~ regex
```

This returns true if _string_ is matched by te extended regular expression _regex_...

Another added feature of `[[ ]]` is that the `==` supports pattern matching the same way [[02-resources/books/the_Linux_command_line/02-learning_the_Shell/04-manipulating_files_and_directories#Wildcards|pathname expansion]] does.

## `(( ))` designed for integers

It is used to perform **arithmetic truth tests**. An arithmetic truth test results in true if the result of the arithmetic evaluation is non-zero.

Since it is part of the shell syntax (this means `bash` has special parsing rules for them) rather than an ordinary command, and it deals only with integers, it is able to recognize variables by name and does not require expansion to be performed. The syntax for operators is a more natural-looking since it uses the traditional symbols (`==`, `<`, `>`, etc.).

## Combining expressions

| operation | `test` | `[[ ]]` and `(( ))` |
| :-------: | :----: | :-----------------: |
|    AND    |  `-a`  |        `&&`         |
|    OR     |  `-o`  |        \|\|         |
|    NOT    |  `!`   |         `!`         |

## Control operators: another way to branch

`bash` provides two control operator that can perform branching. `&&` (AND) and `||` (OR) operators work like the logical operators in `[[ ]]` compound command.

```bash
command_1 && command_2
command_1 || command_2
```

With `&&`, _command_1_ is always executed and _command_2_ is executed if, **and only if**, _command_1_ is successful. With `||`, _command_1_ is always executed and _command_2_ is executed if, **and only if**, _command_1_ is unsuccessful.

A _command_ can be a compound command (`{ }`).

> A compound command return the exit status of the last command in it.

---

```bash
#!/bin/bash


TITLE="System information report for $HOSTAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime () {
    cat << _EOF_
            <h2>System uptime</h2>
            <pre>$(uptime)</pre>
_EOF_
}

report_disk_space () {
    cat << _EOF_
            <h2>Disk space</h2>
            <pre>$(df -h)</pre>
_EOF_
}

report_home_space () {
    if [[ "$(id -u)" -eq 0 ]]; then
            cat << _EOF_
                    <h2>Home space (all users)</h2>
                    <pre>$(du -sh /home/*)</pre>
_EOF_
    else
            cat << _EOF_
                    <h2>Home space ($USER)</h2>
                    <pre>$(du -sh $HOME)</pre>
_EOF_
    fi
}

cat << _EOF_
<html>
        <head>
                <title>$TITLE</title>
        </head>
        <body>
                <h1>$TITLE</h1>
                <p>$TIMESTAMP</p>
                $(report_uptime)
                $(report_disk_space)
                $(report_home_space)
        </body>
</html>
_EOF_
```
