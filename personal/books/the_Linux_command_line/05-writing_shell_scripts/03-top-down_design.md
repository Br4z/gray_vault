---
reviewed_on: "2025-07-28"
---

# Top-down design

The process of identifying the top-level steps and developing increasingly detailed views of those steps is call **top-down design**.

## Shel functions

...shell functions are "minimal scripts" that are located inside other scripts and can act as autonomous programs. Shell functions have two common syntactic forms. First, here is the more formal form:

```
function <name> {
	<commnads>
	return
}
```

Here is a simpler (and generally preferred) form:

```
<name> () {
	<commands>
	return
}
```

Shell function names follow the same rules as variables. A function must contain at least one command. `return` (which is optional) satisfies the requirement.

## Local variables

Inside shell functions, it is often desirable to have **local variables** instead of **global** ones. Local variables are only accessible within the shell function in which they are defined and cease to exist once the shell function terminates.

Local variables are defined by preceding the variable name with the word "local". This creates a variable that is local to the shell function in which it is defined. Once outside the shell function, the variable no longer exists.

This feature allows shell functions to be written so that they remain independent of each other and of the script in which they appear. This is valuable, because it helps prevent one part of a program from interfering with another. It also allows shell functions to be writ­ten so that they can be portable. That is, they may be cut and pasted from script to script, as needed.

## Shell functions and redirection

With [[personal/books/the_Linux_command_line/02-learning_the_Shell/06-redirection#Group commands|Group commands]] we can also do

```
{ command_1; command_2; command_3; } < some_input.txt
```

Because the three commands share one open file stream, they do not each start at the top of the file, they read sequentially, as if someone handed them off the same input stream. This means that each command moves the file pointer forward.

## Keep scripts running

A **stub** function is simply a **placeholder function**, an empty (or nearly empty) version of a function you plan to fill in later.

> In programming, a stub is a small piece of code that stands in for some other component or function that you have not implemented yet (or that lives "elsewhere", like on another server). It lets you build and test the rest of your system without waiting for every part to be finished.

---

```bash
#!/bin/bash


TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime () {
	return
}

report_disk_space () {
	return
}

report_home_space () {
	return
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