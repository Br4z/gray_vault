---
reviewed_on: "2025-07-02"
---

# Searching for files

- `locate`: find files by name.

- `find`: search for files in a directory hierarchy.

- `xargs`: build and execute command lines from standard input.

- `touch`: change file times.

- `stat`: display file or file system status.

## `locate` Find diles the easy way

`locate` performs a rapid database search of pathnames, and the outputs ever name that matches a given substring.

```
locate PATTERN [PATTERN...]
```

`locate` has been around for a number of years, and there are several variants in common use. The two most common ones found in modern Linux distributions are `plocate` and `mlocate`, though they are usually accessed by a symbolic link named locate. The different versions of locate have overlapping options sets. Some versions include regular expression matching and wildcard support.

### Where does the locate database come from?

...`locate` database is created by `updatedb`. Usually, it is run periodically as a cron job, that is, a task performed at regular intervals by the cron daemon. Most systems equipped with locate run `updatedb` once a day...

## `find` Find files the hard way

...`find` searches a given directory (and its subdirectories) for files based on a variety of atributes...

```
find [DIRECTORY...] [EXPRESSION]
```

### Tests

Some of the **tests** that support this command are:

- `-type`.

	| file type |          description          |
	|:---------:|:-----------------------------:|
	|    `b`    |   block special device file   |
	|    `c`    | character special device file |
	|    `d`    |           directory           |
	|    `f`    |         regular file          |
	|    `l`    |         symbolic link         |

- `size`.

	| character |                             unit                              |
	|:---------:|:-------------------------------------------------------------:|
	|    `b`    | 512-byte blocks. This is the default if no unit is specified. |
	|    `c`    |                            Bytes.                             |
	|    `w`    |                         2-byte words.                         |
	|    `k`    |              Kilobytes (units of 1024 bytes).               |
	|    `M`    |             Megabytes (units of 1048576 bytes).             |
	|    `G`    |           Gigabytes (units of 1073741824 bytes).            |

|          test          | description                                                                                                |
|:----------------------:|:---------------------------------------------------------------------------------------------------------- |
|      `-cmin <n>`       | files or directories whose content or attributes were last modified exactly $n \text{minutes}$ ago.        |
|    `-cnewer <file>`    | files or directories whose contents or attributes were last modified more recently than those of `<file>`. |
|      `-ctime <n>`      | files or directories whose contents or attributes were last modified $n * 24 \text{hours}$ ago.            |
|        `-empty`        | empty files and directories.                                                                               |
| `-group <name or GID>` | files or directories belonging to `<name or GID>` group.                                                   |
|   `-iname <pattern>`   | like `-name` but case-insensitive.                                                                         |
|       `inum <n>`       | files with inode number *n*.                                                                               |
|      `-mmin <n>`       | files or directories whose contents were last modifies $n \text{minutes}$ ago.                             |
|    `-name <patter>`    | Match files and directories with the specified wildcard  `<pattern>`.                                      |
|    `-newer <file>`     | files and directories whose contents were modified  more recently than the specified `<file>`.             |
|       `-nouser`        | file and directories that do not belong to a valid user.                                                   |
|       `-nogroup`       | files and directories that do not belong to a valid  group.                                                |
|     `-perm <mode>`     | files or directories that have permissions set to `<mode>.                                                 |
|   `-samefile <file>`   | similar to the `-inum`. Match files that share the same inode number as `<file>`.                          |
|     `-user <name>`     | files or directories belonging to user `<name>.                                                            |

A numeric argument *n* can be specified to tests (like `-amin`, `-mtime`, `-gid`, `-inum`, `-links`, `-size`, `-uid` and `-used`) as

- `+n` for greater than *n*.

- `-n` for less than *n*.

- `n` for exactly *n*.

### Operators

| operator | description                                                                                                                                                                                                                                                                                                              |
|:--------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|  `-and`  | this can be shortened to `-a`. Note that when no operator is  present, `-and` is implied by default.                                                                                                                                                                                                                     |
|  `-or`   | this  can be shortened to `-o`.                                                                                                                                                                                                                                                                                          |
|  `-not`  | this can be  abbreviated with an exclamation point (`!`).                                                                                                                                                                                                                                                                |
| `(` `)`  | groups tests and operators together to form larger  expressions. This is used to control the precedence of the  logical evaluations.... Note that since  the parentheses have special meaning to the shell, they  must be quoted when using them on the command line to  allow them to be passed as arguments to `find`. |

```bash
find ~ \( -type f -not -perm 0600 \) -or \( -type d  -not -perm 0700 \)
```

> The below command determines whether all the files and subdirectories in a directory had secure permissions.

### Predefined actions

|  action   | description                                                       |
|:---------:|:----------------------------------------------------------------- |
| `-delete` | delete the currently matching file.                               |
|   `-ls`   | perform the equivalent of `ls -dils` on the matching file.        |
| `-print`  | output the full pathname of the matching file to standard output. |
|  `-quit`  | quit once a match has been mande.                                 |

Actions should go at the end of the command, because the **order** of tests and actions determines which of them are executed.

### User-defined Actions

In addition to the predefined actions, we can also invoke arbitrary commands. The tradi­tional way of doing this is with the `-exec` action.

```
-exec rm '{}' ';'
```

> Since the brace and semicolon characters have special meaning to the shell, they must be quoted or escaped.

It is also possible to execute a user-defined action interactively. By using the `-ok` action in place of `-exec`, the user is prompted before execution of each specified command.

### Improving efficiency

When the `-exec` action is used, it launches a new instance of the specified command each time a matching file is found. There are times when we might prefer to combine all of the search results and launch a single instance of the command.

The traditional way to combine arguments is using the external command `xargs` and the alternate way, using a new feature in find itself.

```bash
find ~ -type f -name "foo*" -exec ls -l '{}' ';' +
```

### `xargs`

...It accepts input from standard in­put and converts it into an argument list for a specified command.

```bash
find ~ -type f -name "foo*" -print | xargs ls -l
```

#### Dealing with funny filenames

Unix-like systems allow embedded spaces (and even newlines!) in filenames. This causes problems for programs like `xargs` that construct argument lists for other programs. An embedded space will be treated as a delimiter, and the result­ing command will interpret each space-separated word as a separate argument. To overcome this, `find` and `xargs` allow the optional use of a null character as an argument separator. A null character is defined in ASCII as the character repre­sented by the number zero (as opposed to, for example, the space character, which is defined in ASCII as the character represented by the number 32). `find` provides the action `-print0`, which produces null-separated output, and `xargs` has the `--null` (or `-0`) option, which accepts null separated input.

### Options

The options are used to control the scope of a `find` search. They may be included with other tests and actions when constructing `find` expressions.

|        option        | description                                                                                              |
|:--------------------:|:-------------------------------------------------------------------------------------------------------- |
|       `-depth`       | process a directory's files before the directory itself.                                                 |
| `-maxdepth <levels>` | set the maximum number of levels it will descend into a directory tree when performing test and actions. |
| `-mindepth <levels>` | set the minimum number of levels it will descend into a directory tree when performing test and actions. |
|       `-mount`       | do not traverse into directories that are mounted on other file system.                                  |
|      `-noleaf`       | do not optimize its search based on the assumption that is searching a Unix-like file system.            |
