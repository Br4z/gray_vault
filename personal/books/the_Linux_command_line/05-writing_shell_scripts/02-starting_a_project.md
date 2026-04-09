---
reviewed_on: "2025-07-28"
---

# Starting a project

## First stage: minimal document

When writing programs, it is always a good idea to strive for simplicity and clarity. Main­tenance is easier when a program is easy to read and understand, not to mention that it can make the program easier to write by reducing the amount of typing.

## Variables and constants

There are some rules about variable names:

1. May consist of alphanumeric characters (letters and numbers) and underscore characters.

2. The first character of a variable name must be either a letter or an underscore.

3. Spaces and punctuation symbols are not allowed.

The shell makes no distinction between variables and constants; they are mostly for the programmer's convenience. A common convention is to use uppercase letters to designate constants and lowercase letters for true variables.

> The shell actually does provide a way to enforce the immutability of constants, through the use of the `declare` built-in command with `-r` (read-only).

### Assigning values to variables and constants

Variables are assigned values this way:

```
<variable>=<value>
```

Where *variable* is the name of the variable and *value* is a string. Unlike some other programming languages, the shell does not care about the type of data assigned to a variable; it treats them all as string. You can force the shell to restrict the assignment to integers by using `declare` with `-i`, but, like setting variables as read-only, this is rarely done.

Multiple variable assignments may be done on a single line.

```
<variable>=<value> <variable>=<value>...
```

During expansion, variable names may be surrounded by optional curly braces (`{` and `}`). This is useful in cases where a variable name becomes ambiguous of its surrounding context.

```bash
filename="my_file"
touch "$filename"
mv "$filename" "$filename1"
# mv: missing destination file operand after `myfile'
mv "$filename" "${filename}1"
```

> It is a good practice to enclose variables and command substitutions in double quotes to limit the effects of word-splitting by the shell. Quoting is especially important when a variable might contain a filename.

## Here documents

A **here document** or **here script** is an additional form of I/O redirection in which we embed a body of text into our script and feed it into the standard input of a command.

```
<command> << <token>
<text>
<token>
```

where *token* is a string used to indicate the end of the embedded text.

A common convention is to use `_EOF_` (meaning **end of file**) as token. Note that the token mush appear alone and that there must not be trailing spaces on the line.

In a here document, the shell pay no attention to the quotation marks. It treats them as ordinary characters.

The text within a here document undergoes parameter expansion, command substitution, arithmetic expansion, and the literal characters `$` and `\` must be escaped.

However when we enclose the starting token in quotes:

```
cat << '_EOF_'
```

no expansion will be performed on the text.

If we change the redirection operator from `<<` to `<<-`, the shell will ignore leading tab characters (but no spaces) in the here document. This allows a here document to be indented, which can improve readability.

---

```bash
#!/bin/bash


TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

cat << _EOF_
<html>
	<head>
		<title>$TITLE</title>
	</head>
	<body>
		<h1>$TITLE</h1>
		<p>$TIMESTAMP</p>
	</body>
</html>
_EOF_
```