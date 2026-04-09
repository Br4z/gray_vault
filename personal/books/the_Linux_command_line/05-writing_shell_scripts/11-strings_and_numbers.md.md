---
reviewed_on: "2025-08-10"
---

# Strings and numbers

## Parameter expansion

### Expansions to manage empty variable

Several parameters expansions are intended to deal with nonexistent and empty variables. These expansions are handy for handling missing positional parameters and assigning default values to parameters.

```
${<parameter>:-<word>}
```

If *parameter* is unset or is empty, this expansion results in the value of *word*. If *parameter* is not empty, the expansion results in the value of *parameter*.

```
${<parameter>:=<word>}
```

If *parameter* is unset or is empty, this expansion results in the value of *word*. In addition the value of *word* is assigned to *parameter*. If *parameter* is not empty, the expansion results in the value of *parameter*.

```
${<parameter>:?<word>}
```

If *parameter* is unset or is empty, this expansion causes the script to exit with an error, and the contents of *word* are sent to standard error. If *parameter* is not empty, the expansion results in the value of *parameter*.

```
${<parameter>:+<word>}
```

If *parameter* is unset or is empty, this expansion results in nothing. If *parameter* is not empty, the value of *word* is substituted for *parameter*; however, the value of *parameter* is not changed.

### Expansions that return variable names

```
${!<prefix>*}
${!prefix@}
```

This expansion returns the names of existing variables with names beginning with *prefix*, according to the `bash` documentation, both forms of this expansion perform identically.

### String operations

```
${#<parameter>}
```

Expands into the length of the string contained by *parameter*. Normally, *parameter* is a string; however, if *parameter* is either `@` or `*`, then the expansion results in the number of positional parameters.

```
${<parameter>:<offset>}
${parameter:<offset>:<length>}
```

These expansions are used to extract a portion of the string contained in *parameter*. The extraction begins at *offset* characters from the beginning of the string and continues until the end of the string, unless *length* is specified.

If the value of *offset* is negative, it is taken to mean it starts from the end of the string rather than the beginning. Note that negative values must be preceded by a space to prevent confusion with the `${<parameter>:-<word>}` expansion. *length*, if present, must not be less than zero.

If *parameter* is `@`, the result of the expansion is *length* positional parameters, starting at *offset*.

```
${<parameter>#<pattern>}
${<parameter>##<pattern>}
```

These expansions remove a leading portion of the string contained in *parameter* defined by *pattern*. *pattern* is a wildcard patter like those use in [[personal/books/the_Linux_command_line/02-learning_the_Shell/07-seeing_the_world_as_the_shell_sees_it#Pathname expansion|pathname expansion]]. The difference in the two forms is that the `#` form removes the shortest match, while the `##` form removes the longest match.

```
${<parameter>%<pattern>}
${<parameter>%%<pattern>}
```

These expansions are the same as the previous `#` and `##` expansions, except they remove text from the end of the string contained in *parameter* rather than from the beginning.

```
${<parameter>/<pattern>/<string>}
${<parameter>//<pattern>/<string>}
${<parameter>/#<pattern>/<string>}
${<parameter>/%<pattern>/<string>}
```

This expansion performs a search-and-replace operation upon the contents of *parameter*. If text is found matching wildcard *pattern*, it is replace with the contents of *string*. In the normal form, only the first occurrence of *pattern* is replaced. In the `//` form, all occurrences are replaced. The `/#` form requires that the match occur at the beginning of the string, and the `/%` form requires the match to occur at the end of the string. In every form, `/<string>` may be omitted, causing the text matched by *pattern* to be deleted.

### Case conversion

`bash` has four parameter expansions and two declare command options to support the uppercase/lowercase conversion of strings.

- `declare -u <var>`: for uppercase.

- `declare -l <var>`: for lowercase.

In addition to `declare`, there are four parameter expansions that perform upper/lower-case conversion.

|            format            | result                                                                                                                                    |
|:----------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------- |
| `${<parameter,,<?pattern>}`  | expand the value of *parameter* into all lowercase. *pattern* is an optional shell pattern that will limit which character are converted. |
| `${<parameter>,<?pattern>}`  | expand the value of *parameter*, changing only the first character to lowercase.                                                          |
| `${<parameter>^^<?pattern>}` | expand the value of *parameter* into all uppercase letters.                                                                               |
|  `${<parameter>^<pattern>}`  | expand the value of *parameter*, changing only the first character to uppercase.                                                          |

## Arithmetic evaluation and expansion

### Number bases

In arithmetic expressions, the shell supports integer constants in any base.

|     notation      | description                 |
|:-----------------:|:--------------------------- |
|    `<number>`     | decimal.                    |
|    `0<number>`    | octal.                      |
|   `0x<number>`    | hexadecimal.                |
| `<base>#<number>` | *number* is in base *base*. |

### Unary operators

There are two unary operator, `+` and `-`, which are used to indicate whether a number is positive or negative, respectively.

### Simple arithmetic

| operation |   description    |
|:---------:|:----------------:|
|    `+`    |     addition     |
|    `-`    |   subtraction    |
|    `/`    | integer division |
|   `**`    |  exponentiation  |
|    `%`    |      modulo      |

### Assignment

|         notation         |       description       |
|:------------------------:|:-----------------------:|
| `<parameter> = <value>`  |    simple assignment    |
| `<parameter> += <value>` |        addition         |
| `<parameter> -= <value>` |       subtraction       |
| `<parameter> *= <value>` |     multiplication      |
| `<parameter /= <value>`  |    integer division     |
| `<paramter> %= <value>`  |         modulo          |
|     `<parameter>++`      | variable post-increment |
|     `<parameter>--`      | variable post-decrement |
|     `++<parameter>`      | variable pre-increment  |
|     `--<parameter>`      | variable pre-decrement  |

### Bit operations

| operator |     description     |
|:--------:|:-------------------:|
|   `~`    |  bitwise negation   |
|   `<<`   | left bitwise shift  |
|   `>>`   | right bitwise shift |
|   `&`    |     bitwise AND     |
|    \|    |     bitwise OR      |
|   `^`    |     bitwise XOR     |

Note that there are also corresponding assignment operators for all but bitwise negation.

### Logic

`(( ))` supports the following logic operators:

|           operator           |   description    |
|:----------------------------:|:----------------:|
|             `<=`             |                  |
|             `>=`             |                  |
|             `<`              |                  |
|             `>`              |                  |
|             `==`             |                  |
|             `!=`             |                  |
|             `&&`             |                  |
|             \|\|             |                  |
| `<expr_1>?<expr_2>:<expr_3>` | ternary operator |

Performing assignment within the expressions of the ternary operator is not straightforward, those expressions must be surrounded by parentheses.

## `bc`: an arbitrary precision calculator language

If more complex mathematical calculations are required, `bash` cannot handle them, so it is necessary to use an external program. That program can be `bc`.

`bc` reads a file written in its own C-like language and executes it. A `bc` script may be a separate file, or it may be read from standard input. `bc` language supports quite a few features including variables, loops, and programmer-defined functions.

### Using `bc`

The copyright message can be suppressed with `-q`.

The ability to take standard input means that we can use **here documents**, **here string**, and pipes to pass scripts.

## Extra credit

```bash
#!/bin/bash


PROGNAME="${0##*/}"

is_a_valid_number() {
	local number="$1"
	if [[ !"$number" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
		echo "Error: $number is not a valid number" >&2
		exit 1
	fi
}

usage() {
	cat <<- EOF
	Usage: $PROGNAME [-i] [-h] [PRINCIPAL INTEREST MONTHS]

	This script calculates a monthly loan payment.

	OPTIONS:
		-i   Interactive mode: prompt for values.
		-h   Display this help message.

	ARGUMENTS (required unless in interactive mode):
		PRINCIPAL  The total amount of the loan.
		INTEREST   The annual percentage rate as a decimal (e.g., 7% = 0.07).
		MONTHS     The term of the loan in months.
EOF
}

interactive=

while getopts ":hi" opt; do
	case "$opt" in
		i) interactive=1 ;;
		h) usage ;;
		\?) echo "Error: option \"$OPTION\" is invalid" >$2 ;;
		:) echo "Error: option \"$OPTION\" is missing an argument" >&2 ;;
	esac
done

shift $((OPTIND - 1))

if [[ -n "$interactive" ]]; then
	read -r -p "Enter principal: " principal
	is_a_valid_number "$principal"
	read -r -p "Enter interests: " interests
	is_a_valid_number "$interests"
	read -r -p "Enter months: " months
	is_a_valid_number "$months"
else
	if (( $# != 3 )); then
		usage
		exit 1
	fi
	
	for arg; do
		is_a_valid_number "$arg"
	done
	principal=$1
	interests=$2
	months=$3
fi

payment=$(bc <<- EOF
	scale = 10
	i = $interests / 12
	p = $principal
	n = $months
	a = p * ((i * ((1 + i) ^ n)) / (((1 + i) ^ n) - 1))
	print a, "\n"
	a
EOF
)

printf "Monthly Payment: \$%.2f\n" "$payment"
```
