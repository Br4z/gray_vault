---
reviewed_on: "2025-08-04"
---

# Positional parameters

## Accessing the command line

The shell provides a set of variables called **positional parameters** that contain the individual words on the command line. The variables are name `0` through `9`.

Even when no arguments are provided, `0` will always contain the pathname of the program being executed.

> Actually, more than nine can be accessed by enclosing the number in braces (`${<number>})`.

### Determining the number of arguments

The shell also provides a variable, `#`, that contains the number of arguments on the command line.

### `shift`: getting access to many arguments

The shell provides a method, albeit a clumsy, to process many command arguments. `shift` causes all the parameters to "move down one" each time it is executed.

### Simple applications

`basename` removes the leading portion of a pathname.

### Using positional parameters with shell functions

Just as positional parameters are used to pass arguments to shell scripts, they can also be used to pass arguments to shell functions.

`FUNCNAME` variable keeps track of the currently executed shell function.

## Handling positional parameters en masse

It is sometimes useful to manage all the positional parameters as a group. For example, we might want to write a "wrapper" around another program. This means we create a script or shell function that simplifies the invocation of another program...

The shell provides two special parameters for this purpose.

### `$*`

It expands into the list of positional parameters, starting with $1$. When surrounded by double quotes, it expands into a double-quoted string containing all of the positional parameters, each separated by the first character of `IEF` shell variable (by default a space character).

### `$@`

It expands into the list of positional parameters, starting with $1$. When surrounded by double quotes, it expands each positional parameter into a separate word as if it was surrounded by double quotes.

```
<script> <arg_1> <arg_2> ... <arg_n>
$* = <arg_1> <arg_2> ... <arg_n>
"$*" = "<arg_1> <arg_2> ... <arg_n>"
$@ = <arg_1> <arg_2> ... <arg_n>
"$@" = "<arg_1>" "<arg_2>" ... "<arg_n>"
```

`"$@"` is by far the most useful for most situations because it preserves the integrity of each positional parameter.

## A more complete application

### The `getopts` option

`getopts` is a shell built-in for parsing command-line options within scripts. It is designed to be called repeatedly in a while loop, processing one option per iteration until all options are consumed.

```
getopts OPT_STRING VAR [ARG...]
```

*opt_string* is a string that defines the valid option characters:

- A colon following a character signifies that the option requires an argument.

- A colon at the very beginning of the string enables "silent mode," giving you control over error handling.

- Options can be grouped.

*var* is the name of a variable that will hold the parsed option character on each iteration of the loop.

`OPTARG` is a special variable that holds the value of an option's argument.

`OPTIND` is an index variable, automatically managed by `getopts`, that points to the next positional parameter to be processed.

By default, `getopts` processes the script's positional parameters (`$@`), but you can supply your own list of arguments after *var*.

The while loop continues as long as `getopts` successfully finds an option. When an error occurs in silent mode:

- If an invalid option is found, var is set to `?` and `OPTARG` holds the invalid option character.

	> `?` must be escaped because the shell interprets it as a file wildcard character otherwise.

- If an option is missing a required argument, var is set to `:` and `OPTARG` holds the option that is missing its argument.

## Summing up

```bash
#!/bin/bash


PROGNAME="$(basename "$0")"
TITLE="System information report for $HOSTAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

usage () {
	echo "usage: $PROGNAME [-f file | -i]"
	return
}

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

write_html_page () {
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
	return
}

# Process command line options

interactive=
filename=

while getopts ":hf:i" opt; do
	case "$opt" in
		f) filename="$OPTARG" ;;
		i) interactive=1 ;;
		h) usage ;;
		\?) echo "Error: option \"$OPTION\" is invalid" >$2 ;;
		:) echo "Error: option \"$OPTION\" is missing an argument" >&2 ;;
	esac
done

if [[ -n "$interactive" ]]; then
	read -r -p "Enter the name of the output file: " filename
	while true; do
		if [[ -e "$filename" ]]; then
			read -r -p "\"$filename\" exists. Overwrite? [y/n/q] > "
			case "$REPLY" in
				Y|y) break ;;
				Q|q)
					echo "Program terminated"
					exit
					;;
				*) continue ;;
			esac
		elif [[ -z "$filename" ]]; then
			continue
		else
			break
		fi
	done
fi

# Output HTML page

if [[ -n "$filename" ]]; then
	if touch "$filename" && [[ -f "$filename" ]]; then
		write_html_page > "$filename"
	else
		echo "Error: cannot write file \"$filename\"" >$2
	fi
else
	write_html_page
fi
```
