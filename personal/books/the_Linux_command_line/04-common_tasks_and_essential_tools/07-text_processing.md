---
reviewed_on: "2025-07-16"
---

# Text processing

- `cat`: concatenate files and print on the standard output.

- `sort`: sort lines of text files.

- `uniq`: report or omit repeated lines.

- `cut`: remove sections from each line of files.

- `paste`: merge lines of files.

- `join`: join lines of two files on a common field.

- `tac`: concatenate and print files in reverse.

- `rev`: Reverse lines characterwise.

- `comm`: compare two sorted files line by line.

- `diff`: compare files line by line.

- `patch`: apply a diff file to an original.

- `tr`: translate or delete characters.

- `sed`: stream editor for filtering and transforming text.

- `aspell`: interactive spell checker.

## Revisiting some old friends

### `cat`

- `-A` or `--show-all`: display non-printing characters in the text.

#### MS-DOS text vs. Unix text

...Unix and DOS do not define the end of a line the same way in text files. Unix ends a line with a linefeed character (ASCII $10$) while MS- DOS and its derivatives use the sequence carriage return (ASCII $13$) and linefeed to terminate each line of text.

- `-n` or `--number`: number all output lines.

- `-s` or `-squeeze-blank`: suppress repeated empty output lines.

### `sort`

| option |          long option           | description                                                                                        |
|:------:|:------------------------------:|:-------------------------------------------------------------------------------------------------- |
|  `-b`  |   `--ignore-leading-blanks`    | by default, sorting is performed on the entire lie, starting with the first character in the line. |
|  `-f`  |        `--ignore-case`         | make sorting case-insensitive.                                                                     |
|  `-n`  |        `--numeric-sort`        | perform sorting base on the numeric evaluation of a string.                                        |
|  `-r`  |          `--reverse`           |                                                                                                    |
|  `-k`  | `--key=<field_1>,[,<field_2>]` | sort base on a key field located from `<field_1>` to `<field_2>`.                                  |
|  `-m`  |           `--merge`            | treat each argument as the name of a presorted file.                                               |
|  `-o`  |     `--output=<filename>`      | send sorted output to `<filename>` rather than standard output.                                    |
|  `-t`  |   `--field-separator=<char>`   | by default fields are separated by spaces or tabs.                                                 |

```bash
du -s /usr/share | sort -nr | head

# ----------------------------------------------------------------------- #

ls -l /usr/bin | sort -nrk 5 | head

# ----------------------------------------------------------------------- #

echo "SUSE    10.2   12/07/2006
Fedora  10     11/25/2008
SUSE    11.0   06/19/2008
Ubuntu  8.04   04/24/2008
Fedora  8      11/08/2007
SUSE    10.3   10/04/2007
Ubuntu  6.10   10/26/2006
Fedora  7      05/31/2007
Ubuntu  7.10   10/18/2007
Ubuntu  7.04   04/19/2007
SUSE    10.1   05/11/2006
Fedora  6      10/24/2006
Fedora  9      05/13/2008
Ubuntu  6.06   06/01/2006
Ubuntu  8.10   10/30/2008
Fedora  5      03/20/2006" > distros.txt
sort distros.txt # Display incorrectly sorting
```

To sort correctly, the `-k` option should be specified to perform an alphabetic sort on the first field and then a numeric sort on the second field. `sort` allows multiple instances of `-k`. In fact, a key may include a range of fields. If no range is specified, `sort` uses a key that begins with the specified field and extends to the end of the line.

```bash
sort --key=1,1 --key=2n, distros.txt
```

We still faced the issue of sorting the last field (dates). On computers, dates are usually formatted in `YYYY-MM-DD` order to make chronological sorting easy, but ours are in the American format of `MM/DD/YYYY`.

Fortunately, `sort` provides a way to specify **offsets** withing fields.

```bash
sort -k 3.7nbr -k 3.1nbr -k 3.4nbr distros.txt
```

`b` is included to suppress the leading spaces (whose numbers vary from line to line, thereby affecting the outcome of the sort) in the date field.

### `uniq`

When given a sorted file (or standard input), it removes any duplicate lines and sends the results to standard output.

> `sort` supports `-u`, which removes duplicates from the sorted output.

`uniq` only removes duplicate lines that are adjacent to each other.

|  option  |     long option     | description                                                                                                            |
|:--------:|:-------------------:|:---------------------------------------------------------------------------------------------------------------------- |
|   `-c`   |      `--count`      | output a list of duplicate lines preceded by the number of time the line occurs.                                       |
|   `-d`   |    `--repeated`     | output only repeated lines, rather than unique lines.                                                                  |
| `-f <n>` | `--skip-fileds=<n>` | ignore *n* leading fields in each file. Unlike `sort`, `uniq` has no option for setting an alternate fields separator. |
|   `-i`   |   `--ignore-case`   |                                                                                                                        |
| `-s <n>` | `--skip-chars=<n>`  | skip (ignore) the leading *n* characters of each line.                                                                 |
|   `-u`   |     `--unique`      | output only unique lines.                                                                                              |

## Slicing and dicing

### `cut`

It is used to extract a section of text from a line and output the extracted section to standard output.

|   option    |      long option      | description                                                                                                                           |
|:-----------:|:---------------------:|:------------------------------------------------------------------------------------------------------------------------------------- |
| `-c <list>` | `--characters=<list>` | extract the portion of the line defined by *list*. The list may consist of one or more comma-separated numerical ranges.              |
| `-f <list>` |   `--fields=<list>`   | extract one or more fields from the line as defined by *list*. The list may contain one or more fields ranges separated by commas.    |
| `-d <char>` | `--delimiter=<char>`  | when `-f` is specified, use *char* as the field delimiting character. By default, fields must be separated by a single tab character. |
|             |    `--complement`     | extract the entire line of text, except for those portions specified by `-c` and/or `-f`.                                             |

```bash
echo "SUSE	10.2	12/07/2006
Fedora	10	11/25/2008
SUSE	11.0	06/19/2008
Ubuntu	8.04	04/24/2008
Fedora	8	11/08/2007
SUSE	10.3	10/04/2007
Ubuntu	6.10	10/26/2006
Fedora	7	05/31/2007
Ubuntu	7.10	10/18/2007
Ubuntu	7.04	04/19/2007
SUSE	10.1	05/11/2006
Fedora	6	10/24/2006
Fedora	9	05/13/2008
Ubuntu	6.06	06/01/2006
Ubuntu	8.10	10/30/2008
Fedora	5	03/20/2006" > distros.txt
cut -f 3 distros.txt # Date field
cut -f 3 distros.txt | cut -c 7-10 # Year of the date field
```

#### Expanding tabs

The GNU Coreutils package includes `expand`, which accepts either one or more file arguments or standard input and outputs the text with tabs replaced by spaces to the standard output.

Coreutils also provides `unexpand` to substitute tabs for spaces.

```bash
cut -d ':' -f 1 /etc/passwd | head
```

### `paste`

It does the opposite of `cut`. Rather than extracting a column of text from a column of text from a file, it add one or more columns of text to a file. It does this by reading multiple files and combining the files found in each file into a single stream.

```bash
sort -k 3.7nbr -k 3.1nbr -k 3.4nbr distros.txt > distros_by_date.txt
cut -f 1,2 distros_by_date.txt > distros_without_date.txt
cut -f 3 distros_by_date.txt > dates.txt
paste dates.txt distros_without_date.txt # Display distros sorted by date in date, name and version format
```

### `join`

In some ways, `join` is like `paste` in that it adds columns to a file. `join` performs a join operation. It joins data from multiple files based on a shared key field.

```bash
cut -f 1 distros_by_date.txt > distro_names.txt
paste dates.txt distro_names.txt > distros_key_names.txt
cut -f 2 distros_by_date.txt > versions.txt
paste dates.txt versions.txt > distros_key_versions.txt
join distros_key_names.txt distros_key_versions.txt | head
```

### `tac`

It works like `cat` only in reverse, literally. One use of it is to re-order log files. Log files are often displayed with latest entry at the bottom.

### `rev`

It reverses the characters in a string.

`rev` is often used with `cut`. Let's considerer a log file again. Imagine we wanted to remove the period character from the end of each line. Since the line vary in length there is no way to specify `cut` to remove something from the end of the line. By reversing the characters in each line, we can move the periods to the beginning where `cut` can easily remove them.

```bash
tail /var/log/backup.log | rev | cut -c 2- | rev
```

## Comparing text

### `comm`

It compares two text files and displays the lines that are unique to each one and the line they have in common.

```
comm FILE FILE
```

It produces three columns of output. The first column contains lines unique to the first file argument, the second column contains the line unique to the second file argument, and the third column contains the lines shred by both files.

`-<n>` can be provide to suppress the *n* column.

> Multiple columns can be specified in one option.

### `diff`

Like `comm`, `diff` is used to detect the differences between files. However, `diff` is much more complex tool, supporting many outputs formats and the ability to process large collections if text files at once...

```
diff FILE FILE
```

```bash
echo "a
b
c
d" > file_1.txt
echo "b
c
d
e" > file_2.txt
```

In the default output format, each group of changes is preceded by a **change command** in the form of `<range><operation><range>` to describe the positions and types of changes required to convert the first file to the second file.

|    change     | description                                                                                                        |
|:-------------:|:------------------------------------------------------------------------------------------------------------------ |
| `<r_1>a<r_2>` | append the lines at the position *r_2* in the second file to the position *r_1* in the first file.                 |
| `<r_1>c<r_2>` | change (replace) the lines at position *r_1* with the lines at the position *r_2* in the second file.              |
| `<r_1>d<r_2>` | delete the lines in the first file at position *r_1*, which would have appeared at range *r_2* in the second file. |

When using **context** format (`-c`), we will se this:

```bash
diff -c file_1.txt file_2.txt
# *** file_1.txt2025-12-23 06:40:13.000000000 -0500
# --- file_2.txt2025-12-23 06:40:34.000000000 -0500
# ***************
# *** 1,4 ****
# - a
#   b
#   c
#   d
# --- 1,4 ----
#   b
#   c
#   d
# + e
```

| indicator | meaning                                                                                                           |
|:---------:|:----------------------------------------------------------------------------------------------------------------- |
|   blank   | line shown for context.                                                                                           |
|    `-`    | line deleted. This line will appear in the first file but not in the second file.                                 |
|    `+`    | line added. This line will appear in the second file but not in the first file.                                   |
|    `!`    | line changes. The two versions of the line will be displayed, each in its respective section of the change group. |

The unified format is similar to the context format but is more concise. It is specified with `-u`.

```bash
diff -u file_1.txt file_2.txt
# --- file_1.txt2008-12-23 06:40:13.000000000 -0500
# +++ file_2.txt2008-12-23 06:40:34.000000000 -0500
# @@ -1,4 +1,4 @@
# -a
#  b
#  c
#  d
# +e
```

The most notable difference between the context and unified formats is the elimination of the duplicated lines of context, making the results of the unified format shorter than those of the context format...Each line starts with one of three possible characters:

| character | meaning                               |
|:---------:|:------------------------------------- |
|   blank   | line shared by both files.            |
|    `-`    | line was removed from the first file. |
|    `+`    | line was added to the first file.     |

### `path`

It is used to apply changes to text files. It accepts output from `diff` and is generally used to convert older version files into newer versions...Using `diff`/`patch` offers two significant advantages.

1. The diff file is small, compared to the full size of the source tree.

2. The diff file concisely shows the change being made, allowing reviewers of the patch to quicky evaluate it.

To prepare a diff file for use with `patch`, the GNU documentation suggest using `diff` as follows:

```bash
diff -Naur old_file new_file > diff_file
```

Once the diff file has been created, we can apply it to patch the old file into the new file.

```bash
patch < diff_file
```

## Editing on the fly

### `tr`

It is used to **transliterate characters**...Transliteration is the process of changing characters from one alphabet to another.

`tr` operates on standard input, and output its results on standard output. `tr` accepts two arguments: a set of characters to convert from and a corresponding set of characters to convert to. Characters sets may be expressed in one of three ways.

1. Enumerated list.

2. Character range.

	> This method is sometimes subject to the same issues as other commands, because of the locale collation order.

3. POSIX characters classes.

In most cases, both characters sets should be of equal length; however, it is possible for the first set to be larger than the second.

In addition to transliteration, `tr` allows characters to simply be deleted from the input steam...

```bash
tr -d "\r" < dos_file > unix_file # Convert a MS-DOS text file to Unix text file
```

### ROT13: the not-so-secret decoder ring

...Calling ROT13 "encryption" is being generous; "text obfuscation" is more accurate..

```bash
echo "secret text" | tr a-zA-Z n-za-mN-ZA-M # Perform ROT13 "encoding"
```

Using `-s`, `tr` can "squeeze" (delete) repeated instances of a character.

...the repeating characters must be adjoining. If they are not, the squeezing will have no effect.

### `sed`

The name "sed" is short for **stream editor**. It performs text editing on a stream text, either a set of specified files or standard input. `sed` is a powerful and somewhat complex program...

In general, the way `sed` works is that it is given either a single editing command (on the command line) or the name of a script file containing multiple commands, and it then performs these commands upon each line in the stream of text.

Commands in `sed` begin with a single letter followed by a delimiter. The choice of the delimiter character is arbitrary. By convention, the slash character is often used, but `sed` will accept any character that immediately follows the command as the delimiter.

Most commands in `sed` may be preceded by an **address**, which specifies which line(s) of the input stream will be edited. If the address is omitted, then the editing command is carried out on every line the in the input stream.

|       address       | description                                                                                                                                                                                                                 |
|:-------------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|        `<n>`        | a line number where *n* is a positive integer.                                                                                                                                                                              |
|         `$`         | the last line.                                                                                                                                                                                                              |
|    `/<regexp>/`     | lines matching a POSIX basic regular expression. Optionally, the regular expression may be delimited by and alternate character, by specifying the expression with `\<c><regexp><c>`, where *c* is the alternate character. |
| `<addr_1>,<addr_2>` | a range of line from *addr_1* to *addr_2*, inclusive.                                                                                                                                                                       |
|  `<first>~<step>`   | match the line represented by the number *first*, then each subsequent line at *step* intervals.                                                                                                                            |
|   `<addr_1>,+<n>`   | math *addr_1* an the following *n* lines.                                                                                                                                                                                   |
|      `<addr>!`      | match all lines except *addr*.                                                                                                                                                                                              |

`-n` (no auto-print) causes `sed` not to print every line which is the default.

|          command           | description                                                                                                                                                   |
|:--------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|            `=`             | output the current line number.                                                                                                                               |
|            `a`             | append text after the current line.                                                                                                                           |
|            `d`             | delete the current line.                                                                                                                                      |
|            `i`             | insert text in front of the current line.                                                                                                                     |
|            `p`             | print the current line.                                                                                                                                       |
|            `q`             | exit `sed` without processing any more lines. If the `-n` is not specified, output the current line.                                                          |
|            `Q`             | exit `sed` without processing any more lines.                                                                                                                 |
| `s/<regex>/<replacement>/` | substitute the contents of *replacement* wherever *regexp* is found.                                                                                          |
|    `y/<set_1>/<set_2>`     | perform transliteration by converting character from *set_1* to the corresponding characters in *set_2*. `sed` requires that both sets be of the same length. |

```bash
sed 's/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/' distros.txt # Convert date from MM/DD/YYYY to YYYY-MM-DD format
```

```bash
echo '# sed script to produce Linux distributions report
1 i\
\
Linux distributions report\

s/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/
y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/' > distros.sed
sed -f distros.sed distros.txt
```

### `aspell`

```
aspell check TEXT_FILE
```

`aspell` is interactive in the check mode. At the top of the display, we see our text with a suspiciously spelled word highlighted. In the middle, we see ten spelling suggestions numbered zero through nine, followed by a list of other possible actions. Finally, at the bottom, we see a prompt ready to accept our choice.

Unless told otherwise via the command line `--dont-backup`, `aspell` creates a backup file containing the original text by appending the extension `.bak` to the file­ name.

When checking HTML files `aspell` will see the contents of the HTML tags as misspelled. This problem can be overcome by including `-H` checking mode. In this mode, the contents of HTML tags are ignored and not checked for spelling. However, the contents of `ALT` tags, which benefit from checking, are checked in this mode.

> By default, `aspell` will ignore URLs and email addresses in text.
