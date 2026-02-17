---
reviewed_on: "2025-08-14"
---

# Arrays

**scalar variables** are variables that contain a single value.

## What are arrays?

Arrays in `bash` are limited to a single dimension.

## Creating an array

Array variables are named just like other `bash` variable, and are created automatically when they are accessed.

```bash
a[0]=foo
echo ${a[0]}
# foo
```

An array can also be created with `declare`.

```bash
declare -a a
```

## Assigning values to an array

Values may be assigned in one of two ways. Single values may be assigned using the following syntax:

```
<name>[<subscript>]=<value>
```

where *name* is the name of the array and *subscript* is an integer (or arithmetic expression) greater than or equal to zero. *value* is a string or integer assigned to the array element.

Multiple values may be assigned using the following syntax:

```
<name>=(<value_1> <value_2> ... <value_n>)
```

where *name* is the name of the array and *value* placeholders are values assigned sequentially to elements of the array.

It is also possible to assign values to a specific element by specifying a subscript for each value.

```
<name>=([<subscript>]=<value>...)
```

## Accessing array elements

```bash
#/bin/bash

usage () {
	echo "usage: ${0##*/} directory" >&2
}

# Check the argument is a directory
if [[ ! -d "$1" ]]; then
	usage
	exit 1
fi

# Initialize array
for i in {0..23}; do hours[i]=0; done

# Collect data
for i in $(stat -c %y "$1"/* | cut -c 12-13); do
	j="${i#0}"
	((hours[j]++))
	((count++))
done

# Display data
echo -e "Hour\tFiles\tHour\tFiles"
echo -e "----\t-----\t----\t-----"
for i in {0..11}; do
	j=$((i + 12))
	printf "%02d\t%d\t%02d\t%d\n" \
		"$i" \
		"${hours[i]}" \
		"$j" \
		"${hours[j]}"
done

printf "\nTotal files = %d\n" "$count"
```

## Array operations

### Outputting the entire contents of an array

The subscripts `*` and `@` can be used to access every element in an array. As with [[personal/books/the_Linux_command_line/05-writing_shell_scripts/09-positional_parameters|positional parameters]], the `@` is the more useful of the two.

```
"${<array>[@]}"
```

### Determining the number of array elements

```
${#<array>[@]} # Number of array elements
```

In `bash`, array elements exist only if they have been assigned a value regardless of their subscript.

### Finding the subscripts used by an array

```
${!<array>[*]}
${!<array>[@]}
```

where *array* is the name of an array variable. Like the other expansions that use `*` and `@`, `@` enclosed with quotes is the most useful, as it expands into separate words.

### Assigning array elements with `read -a`

`read` built-in has `-a` to place words into an indexed array rather than a series of variables.

```bash
declare -a foo
read -a foo <<< "0th 1st 2nd 3rd 4th"
```

### Adding elements to the end of an array

By using the `+=` assignment operator, we can automatically append values to the end of an array.

```bash
foo=(a b c)
foo+=(d e f)
```

### Reading a file into an array

`mapfile` reads standard input directly into an indexed array.

```
mapfile [-OPTIONS] ARRAY
```

|    option    | description                                                           |
|:------------:| --------------------------------------------------------------------- |
| `-d <delim>` | use *delim* to terminate lines rather than a newline.                 |
|   `-n <n>`   | only read *n* lines.                                                  |
| `-O <start>` | begin assigning array element at index *start* rather than index 0. |
| `-s <count>` | skip *n* lines at the beginning of the file.                          |
|     `-t`     | trim trailing delimiter from each line.                               |

```bash
#!/bin/bash

DICTIONARY=/usr/share/dict/words
WORDLIST=~/wordlist.txt
declare -a words

if [[ ! -r "$WORDLIST" ]]; then
	grep -v \' < "$DICTIONARY" \
		| grep -v "[[:upper:]]" \
		| shuf > "$WORDLIST"
fi

# Read WORDLIST into array
mapfile -t -n 32767 words < "$WORDLIST"

# Create four word passphrase
while [[ -z "$REPLY" ]]; do
	echo "${words[$RANDOM]}" \
		"${words[$RANDOM]}" \
		"${words[$RANDOM]}" \
		"${words[$RANDOM]}"
	echo
	read -r -p "Enter to continue, q to quit > "
	echo
done
```

### Slicing an array

There is a form of [[personal/books/the_Linux_command_line/02-learning_the_Shell/07-seeing_the_world_as_the_shell_sees_it#Parameter expansion|parameter expansion]] we can use to extract a group of contiguous elements called a **slice** from an array.

```
${<array>[@]:<start_index>:<elements>} # This return a new array
```

By specifying a negative *start_index* value we count from the end of the array rather than the beginning.

> The minus sign requires a leading space.

### Sorting an array

The shell has no direct way of doing this, but it is not hard to do with a little coding.

```bash
#!/bin/bash

a=(f e d c b a)

echo "Original array: " "${a[@]}"
a_sorted=($(for i in "${a[@]}"; do echo "$i"; done | sort))
echo "Sorted array: " "${a_sorted[@]}"
```

### Deleting an array

To delete an array, `unset` is used.

```
unset <array>
```

It is also used to delete single array elements.

```
unset '<array>[<subscript>]'
```

Interestingly, the assignment of an empty value to an array does not empty its contents.

```bash
foo=(a b c d e f)
foo=
echo ${foo[@]}
# b c d e f
```

Any reference to an array without a subscript refers the element zero of the array.

## Associative arrays

They use string rather than integers as array indexes thus creating key-value pairs much alike a dictionary or hash table.

Unlike indexed arrays, which are created by merely referencing them, associative arrays must be explicitly created with `declare` using `-A`.

```
declare -A <associative_array>
```
