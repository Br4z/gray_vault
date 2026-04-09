---
reviewed_on: "2025-07-30"
---

# Reading keyboard input

## `read` read values from standard input

It is a built-in command used to read a single line of standard input. This command can be used to read keyboard input or, when redirection is employed, a line of data from a file.

```
read [-OPTIONS] [VARIABLE...]
```

`VARIABLE` is the variable(s) used to hold te input value. If no variable name is supplied, the shell variable `REPLY` contains the line of data.

If `read` receive fewer than the expected number, the extra variables are empty, while an excessive amount of input results in the final variable containing all of the extra input.

| option            | description                                                                                                          |
| ----------------- |:-------------------------------------------------------------------------------------------------------------------- |
| `-a <array_name>` | assign the input into an array *array_name*.                                                                         |
| `-d <delimiter>`  | the first character in the string *delimiter* is used to indicate the end of input, rather than a newline character. |
| `-e`              | use Readline to handle input. This permits input editing in the same manner as the command line.                     |
| `-i <string>`     | use *string* as a default reply if the user simply press `ENTER`. Requires `-e`.                                     |
| `-n <n>`          | read *n* character of input, rather than an entire line.                                                             |
| `-p <prompt>`     | display a prompt of input using the string *prompt*.                                                                 |
| `-r`              | raw mode. Do not interpret backslash characters as escapes.                                                          |
| `-s`              | silent mode. Do not echo characters to display as they are typed.                                                    |
| `-t <n>`          | timeout. Terminate the input after *n* seconds. `read` return a non-zero exit status if an input times out.          |
| `-u <fd>`         | use input from file descriptor *fd*, rather than standard input.                                                     |

### `IFS`

Normally, the shell performs word splitting on the input provided to `read`...This behavior is configured by a shell variable named "IFS" (for internal field separator). The default value of `IFS` contains a space, a tab, and a newline character, each of which will separate items from one another.

```bash
#!/bin/bash


FILE=/etc/passwd

read -r -p "Enter a username > " user_name

file_info="$(grep "^$user_name:" $FILE)"

if [[ -n "$file_info" ]]; then
	IFS=":" read -r user pw uid gid name home shell <<< "$file_info" 
	echo "User =      \"$user\"" 
	echo "UID =       \"$uid\"" 
	echo "GID =       \"$gid\"" 
	echo "Full name = \"$name\"" 
	echo "Home dir. = \"$home\"" 
	echo "Shell =     \"$shell\"" 
else
	echo "Error: no such user \"$user_name\"" >&2
	exit 1
fi
```

`<<<` indicates a **here string**. A here string is like a here document, only shorter, consisting of a single string.

### You cannot pipe `read`

In `bash` (and other shells such `sh`), pipelines creates **subshells**. These are copies of the shell and its environment that are used to execute the command pipeline.

Subshell in Unix-like systems create copies of the environment for the process to use while they execute. When the process finished, the copy of the environment is destroyed. This means that a **subshell can never alter the environment of its parent process**. `read` assigns variables, which then become part of the environment.

## Validating input

```bash
#!/bin/bash 

invalid_input () { 
	echo "Error: invalid input \"$REPLY\"" >&2 
	exit 1 
} 
read -r -p "Enter a single item > " 
```

### Empty

```bash
[[ -z "$REPLY"]] && invalid_input
```

### Multiple items

```bash
(( "$(echo $REPLY | wc -w)" > 1))) && invalid_input
```

### Filename

```bash
[[ "$REPLY" =~ ^[-[:alnum:]\._]+$ ]] && invalid_input
```

### Floating point number

```bash
[[ "$REPLY" =~ ^-?[[:digit:]]*\.[[:digit:]]+$ ]] && invalid_input
```

### Integer number

```bash
[[ "$REPLY" =~ ^-?[[:digit:]]+$ ]] && invalid_input
```

## Menus

A common type of interactivity is called **menu-driven**. In menu-driven programs, the user is presented with a list of choices and is asked to choose one.