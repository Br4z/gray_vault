# Useful commands for creating scripts

## `cut`

## `head`

## `sed`

## `tail`

## `tr`

Translate characters.

- `[-c|-C] [-s] string1 string2`.

    - `string1 string2`: translation control strings. Each string shall represent a set of characters to be converted into an array of characters used for the translation.

## `awk`

Pattern scanning and processing language. It executes programs written in the awk programming language, which is specialized for textual data manipulation.

- `[-F sepstring] [-v assignment]... program [argument...]`.

- `[-F sepstring] -f progfile [-f progfile]... [-v assignment]... [argument...]`.

The awk utility shall interpret each input record as a sequence of fields, where, by default, a field is a string of non-blank and non-newline characters. It denotes the first field in a record as`$1`, the second  as`$2`, and so on.

### Examples (`awk`)

- `awk 'NF{print $NF}'`: extracts and prints the last field (column) from each line of input where the number of fields (NF) is not zero.
