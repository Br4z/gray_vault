---
reviewed_on: "2025-08-07"
---

# Flow control: looping with `for`

## `for`: traditional shell form

```
for <var> [in <words>]; do
	<commands>
done
```

where *var* is the name of a variable that will increment during the execution of the loop, *words* is an optional list of items that will be sequentially assigned to *var*, and *commands* are the commands that are to be executed on each iteration of the loop.

The really powerful feature of `for` is the number of interesting ways we can create a list of words.

Pathname expansion provides a nice, clean list of pathnames that can be processed in the loop. The one precaution needed is to check that the expansion actually matched something. By default, if the expansion fails to match any files, the wildcard themselves will be returned. To guard against, the `[[ -e "$i" ]]` command can be used.

If the optional `in <words>` portion of `for` is omitted, `for` defaults to processing the positional parameters.

### Why i?

The basis of this tradition comes from the Fortran programming language. In Fortran, undeclared variables starting with the letters `I`, `J`, `K`, `L` and `M` are automatically typed as integers, while variables beginning with any other letter are typed as reals. This behavior led programmers to use the variables `I`, `J`, and `K` for loop variables since it was less work to use them when a temporary variable was needed.

It also led to the following Fortran-based witticism:

"GOD is real, unless declared integer".

## `for`: C language form

```
for (( <expression_1>; <expression_2>; <expression_3> )); do
	<commands>
do
```

Here *expression_1*, *expression_2*, and *expression_3* are arithmetic expression and *commands* are the commands to be performed during each iteration of the loop.

In terms of behavior, this form is equivalent to the following construct:

```
(( <expression_1 ))
while (( <expression_2> )); do
	<commands>
	(( <expression_3> ))
done
```

*expression_1* is used to initialize conditions for the loop, *expression_2* is used to determine when the loop is finished, and *expression_3* is carried out at the end of each iteration of the loop.

## Summing up

```bash
report_home_space() {
	local format="%8s%10s%10s\n"
	local dir_list total_files total_dirs total_size user_name

	if [[ "$(id -u)" -eq 0 ]]; then
		dir_list=/home/*
		user_name="all users"
	else
		dir_list="$HOME"
		user_name="$USER"
	fi

	echo "<h2>Home space utilization ($user_name)</h2>"

	for i in $dir_list; do
		total_files="$(find "$i" -type f | wc -l)"
		total_dirs="$(find "$i" -type d | wc -l)"
		total_size="$(du -sh | cut -f 1)"

		echo "<h3>$1</h3>"
		echo "<pre>"
		printf "$format" "dirs" "files" "size"
		printf "$format" "----" "-----" "---"
		printf "$format" "$total_dirs" "$total_files" "$total_size"
		echo "</pre>"
	done
	return
}
```
