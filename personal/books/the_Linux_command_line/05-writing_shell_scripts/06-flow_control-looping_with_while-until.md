---
reviewed_on: "2025-08-03"
---

# Flow control: looping with `while`/`until`

## Looping

### `while`

The syntax of `while` is as follows:

```
while <commands>; do commands; done
```

Like `if`, `while` evaluates the exit status of a list of commands. As long as the exit status is zero, it performs the commands inside the loop.

### `break` and `continue`

`bash` provides two built-in commands that can be used to control program flow inside loops. `break` immediately terminates the loop, and program control resumes with the next statement following the loop. `continue` causes the remainder of the loop to be skipped, and program control resumes with the next iteration of the loop.

### `select`

`select` shell built-in is used to create looping menus. It has a syntax that looks like this:

```
select VAR in [STRING.. ;] do COMMANDS; done
```

where *var* is a variable and *string* is the text of a menu choice.

When `select` executes, it displays the string(s) followed by the content of `PS3` (prompt string $3$) variable as a prompt for the user's input. Once a choice is made, it sets `REPLY` variable with the user's input and returns the string associated with the choice in the variable *var*. Once the values are set, commands are performed and the prompt is displayed again for another choice.

`select` will continue indefinitely until either a `break` is encountered or the user types `CTRL + d` to signal end-of-life.

`select` does not display its menu choices or prompt string on standard output, rather it uses standard error.

```bash
#!/bin/bash


DELAY=3
PS3="
Enter selection [1-4] > "

select str in \
	"Display system information" \
	"Display disk space" \
	"Display home space utilization" \
	"Quit"; do
	if [[ "$REPLY" == "1" ]]; then
		echo "Hostname: $HOSTNAME"
		uptime
	elif [[ "$REPLY" == "2" ]]; then
		df -h
	elif [[ "$REPLY" == "3" ]]; then
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home space utilization (all users)"
			du -sh /home/* 2> /dev/null
		else
			echo "Home space utilization ($USER)"
			du -sh "$HOME" 2> /dev/null
		fi
	elif [[ "$REPLY" == "4" ]]; then
		break
	fi
	else
		echo "Error: invalid entry" >&2
	sleep "$DELAY"
done
```

### `until`

It is much like `while`, except instead of exiting a loop when a non-zero exit status is encountered, it does the opposite. `until` continues until it receives a zero exit status.

## Reading files with loops

`while` and `until` can process standard input. This allows files to be processed with them.

```
<loop> read -r [<var>...]; do
	<commands>
done < <text_file>

<command> | <loop> read -r [<var>...]; do
	<commands>
done
```
