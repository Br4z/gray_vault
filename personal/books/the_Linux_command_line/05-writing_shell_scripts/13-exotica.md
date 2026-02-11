---
reviewed_on: "2025-08-15"
---

# Exotica

## Group commands and subshells

Subshell uses this syntax:

```
(<command_1>; <command_2>; ...;<command_n>)
```

While group commands and subshells look similar and can both be used to combine streams for redirection, there is an important difference between the two. Whereas a [[personal/books/the_Linux_command_line/02-learning_the_Shell/06-redirection#Group commands|group command]] executes all of its commands in the current shell, a subshell executes its commands in a child copy of the current shell. This means the environment is copied and given to a new instance of the shell. This copy of the environment is different from the way a child process ordinarily works in that the subshell inherits an entire copy of the parent's environment whereas a child process only inherits exported variables from the parent shell. When the subshell exits, its copy of the environment is lost, so any changes made to the subshell's environment are lost as well.

## Process substitution

Process substitution is expressed in two ways.

For processes that produce standard output, it looks like this:

```
<(<list>)
```

or, for processes that intake standard input, it looks like this:

```
>(<list>)
```

where *list* is a list of commands.

```bash
# This does not work
echo "foo" | read
echo $REPLY
#
# But this does
read < (echo "foo")
echo $REPLY
# foo
```

Process substitution is often used with loops containing `read`.

## Constructing commands with `eval`

It takes a list of arguments, combines them into a string and passes it to the shell to execute.

There are certain cases in shell scripting where we need to construct a command dynamically at run-time and `eval` allows us to do that.

### Be careful with `eval`

`eval` has a bad reputation. This stems from concern over how easy it is to add security vulnerabilities to a shell script with `eval`. If the string given to `eval` come from an external source, care must be taken to ensure there are no unauthorized commands embedded in the string (called a **code injection attack**)...

### A wordle helper

```bash
#!/bin/bash


PROGNAME="${0##*/}"
DICTIONARY=/usr/share/dict/words

useage() {
	cat <<- EOF
	Usage: $PROGNAME [-h|--help] [PRINCIPAL INTEREST MONTHS]
	       $PROGNAME REGEX [+|-CHAR...]

	OPTIONS:
		-h   Display this help message.

	ARGUMENTS:
		REGEX A five character regular expression at minimum of "....." representing five unknown characters in the answer.
		[+|-CHAR...] Known character(s) to be either present or absent form the answer. These are expressed as either +CHAR for letter known to be present or -CHAR for letters kwnow to not be in the answer.
EOF
}

plus() {
	local char="$1"

	echo " | grep $char"
	return
}

minus() {
	local char="$1"

	echo " | grep -v $char"
	return
}

# Parse command-line

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
	help_message
	exit 0
fi

if (( "${#1}" == 5 )); then
	known_chars="$1"
	shift
else
	echo "Error: first argument must be a 5 characters regex" >&2
	exit 1
fi

cmd="grep '^.....$' $DICTIONARY \
	| grep -v '[[:punct:]]' \
	| grep -v '[[:upper:]]' \
	| grep '$known_chars'"

while [[ -n "$1" ]]; do
	case "$1" in
		-[[[:alpha:]])
			cmd="${cmd}$(minus "${1:1}")"
			;;
		+[[[:alpha:]])
			cmd="${cmd}$(plus "${1:1}")"
			;;
		*)
			echo "Error: invalid argument '$1'" >&2
			exit 1
			;;
	esac
	shift
done

eval "$cmd | tee >(wc -l)"
```

## Traps

When we design a large, complicated script, it is important to consider what happens if the user logs off or shuts down the computer while the script is running. When such an event occurs, a signal will be sent to all affected processes. In turn, the programs repre­senting those processes can perform actions to ensure a proper and orderly termination of the program.

`bash` provided a mechanism for this purpose known as a **trap**. Traps are implemented with `trap`. `trap` uses the following syntax:

```
trap ARGUMENT SIGNAL [SIGNAL...]
```

where *argument* is a string that will be read and treated as a command and *signal* is the specification of a signal that will trigger the execution of the interpreted command.

Constructing a string to form a useful sequence of commands can be awkward, so it is a common practice to specify a shell function as the command.

Besides the signal that are available on all programs, `trap` also supports several internal and bash-specific ones. Of particular interest are `EXIT` and `ERR`. As one might expect, the `EXIT` trap is activated when a script terminates. The `ERR` activates whenever a command (with certain exceptions) exists with a non-zero exit status.

### Temporary files

...it is important to give temporary files nonpredictable file-names. This avoid and exploit known as a **temp race attack**. One way to create a nonpredictable (but still descriptive) name is with:

> A temp race attack is a type of security exploit that targets the brief window of time between when a program checks for the existence of a temporary file and when it actually creates or uses that file. By winning this "race," an attacker can manipulate the program's behavior, potentially leading to unauthorized file access, data corruption, or privilege escalation.

```bash
tempfile=/tmp/$(basename $0).$$.$RANDOM
```

> `$$` obtains the PID.

This will create a filename consisting of the program’s name, followed by its process ID (PID), followed by a random integer.

A better way is to use the `mktemp` (not to be confused with the mktemp standard library function) to both name and create the temporary file. `mk­temp` accepts a template as an argument that is used to build the file­name. The template should include a series of "X" characters, which are replaced by a corresponding number of random letters and numbers.

```bash
tempfile=$(mktemp /tmp/foobar.$$.XXXXXXXXXX)
```

For scripts that are executed by regular users, it may be wise to avoid the use of `/tmp` and create a directory for temporary files within the user's home directory...

## Asynchronous execution

bash has a built-in command to help manage asynchronous execution such as this. `wait` causes a parent script to pause until a specified process (i.e., the child script) finishes.

### `wait`

```bash
#!/bin/bash
# async_parent.sh


echo "Parent: starting..."

echo "Parent: lauching child script..."
./async_child.sh &
pid=$!
echo "Parent: child (PID = $pid) launched"

echo "Parent: continuing..."
sleep 2

echo "Parent: pausing to wait for the child to frinish..."
wait "$pid"

echo "Parent: child is finished. Continuing..."
echo "Parent: parent is done. Exiting"
```

```bash
#!/bin/bash
# async_child.sh


echo "Child: child is running..."
sleep 5
echo "Child: child is done. Exiting"
```

The `$!` shell parameter contains the process ID of the last job put into the background.

## Named pipes

In most Unix-like systems, it is possible to create a special type of file called a **named pipe**. Named pipes are used to create a connection between two processes and can be used just like other types of files.

Named pipes behave like files but actually form first-in first-out (FIFO) buffers. As with ordinary (unnamed) pipes, data goes in one end and emerges out the other. With named pipes, it is possible to set up something like this:

```
<process_1> > <named_pipe>
```

and this:

```
<process_2> < <named_pipe>
```

and it will behave like this:

```
<process_1> | <process_2>
```

### Setting up a named pipe

This is done with `mkfifo`.

```
mkfifo NAMED_PIPE
```
