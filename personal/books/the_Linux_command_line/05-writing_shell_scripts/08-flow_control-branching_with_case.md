---
reviewed_on: "2025-08-03"
---

# Flow control: branching with `case`

## `case`

In `bash`, the multiple-choice compound command is `case`. It has the following syntax:

```
case <word> in
	[<pattern> [| <pattern>]...) <commands>;;]...
esac
```

```bash
#!/bin/bash


clear
echo "
Please select:
0. Quit.
1. Display system information.
2. Display disk space.
3. Display home space utilization.
"
read -r -p "Enter selection [0-3] > "

case "$REPLY" in
	0)
		echo "Exiting..."
		exit
		;;
	1)
		echo "Hostname: $HOSTNAME"
		uptime;;
	2)
		df -h
		;;
	3)
		if [[ "$(id -u)" -eq 0 ]]; then
			echo "Home space utilization (all users)"
			du -sh /home/*
		else
			echo "Home space utilization ($USER)"
			du -sh $HOME
		fi
		;;
	*)
		echo "Error: invalid option" >&2
		exit 1
		;;
esac
```

### Patterns

The patterns used by `case` are the same as those used by [[personal/books/the_Linux_command_line/02-learning_the_Shell/07-seeing_the_world_as_the_shell_sees_it#Pathname expansion|pathname expansion]], so [[personal/books/the_Linux_command_line/02-learning_the_Shell/04-manipulating_files_and_directories.md#Wildcards|wildcards]] are allowed. Patterns are terminated with `)`.

It is also possible to combine multiple patterns using `|` as a separator. This creates an "or" conditional pattern. This is useful for such things as handling both uppercase and lowercase characters.

### Performing multiple actions

Modern version of `bash` add `;;&` notation to terminate each action and allow `case` to continue to the next test rather than simply terminating.
