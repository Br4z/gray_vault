---
reviewed_on: "2025-07-20"
---

# Formatting output

- `nl`: number lines.

- `fold`: wrap each line to a specified length.

- `fmt`: a simple text formatter.

- `pr`: prepare text for printing.

- `printf`: format and print data.

- `groff`: a document formatting system.

## Simple formatting tools

### `nl` number lines

It is rather arcane tool used to perform a simple task. It numbers lines. In its simplest use, it resembles `cat -n`.

`nl` supports a concept called "logical pages" when numbering. This allows `nl` to reset (start over) the numerical sequence when numbering. Using options, it is possible to set the starting number to a specific value and, to a limited extent, its format. A logical page is further broken down into a **header**, **body**, and **footer**. Withing each of these sections, line numbering may be reset and/or be assigned a different style. If `nl` is given multiple files, it treats them as a single stream of text.

|  markup  | meaning                       |
|:--------:|:----------------------------- |
| `\:\:\:` | start of logical page header. |
|  `\:\:`  | start of logical page body.   |
|   `\:`   | start of logical page footer. |

Each of the markup elements must appear alone on its own line. After processing a markup element, `nl` deletes it from the text stream.

|    option     | meaning                                                                                                                                                                                                                                                   |
|:-------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `-b <style>`  | set body numbering to *style*, where *style* is one of the following:<br>`a` = number all lines.<br>`t` = number only non-blank line. This is the default.<br>`n` = none.<br>`<p<regexp>` = number only lines matching basic regular expression *regexp*. |
| `-f <style>`  | set footer numbering to *style*. The default is `n` (none).                                                                                                                                                                                               |
| `-h <style>`  | set header numbering to *style*. The default is `n` (none).                                                                                                                                                                                               |
|   `-i <n>`    | set numbering increment to *n*. The default is one.                                                                                                                                                                                                       |
| `-n <format>` | set numbering format to *format*, where *format* is one of the following:<br>`ln` = left justified, without leading zeros.<br>`rn` = right justified, without leading zeros. This is the default.<br>`rz` = right justified, with leading zeros.          |
|     `-p`      | do not reset page numbering at the beginning of each logical page.                                                                                                                                                                                        |
| `-s <string>` | add *string* to the end of each line number to create a separator. The default is a single tab character.                                                                                                                                                 |
|   `-v <n>`    | set first line number of each logical page to *n*. The default is one.                                                                                                                                                                                    |
|   `-w <n>`    | set the width of the line number field to *n*. The default is 6.                                                                                                                                                                                        |

```bash
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
echo '# sed script to produce Linux distributions report
1 i\
\\:\\:\\:\
\
Linux distributions report\
\
name      ver.   released\
----      ----   --------\
\\:\\:
s/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/
$ a\
\\:\
\
End of report' > distros_nl.sed
sort -k 1,1 -k 2,2n distros.txt | sed -f distros_nl.sed | nl
```

### `fold` wrap each line to a specified length

**Folding** is the process of breaking lines of text at a specified width. Like our other commands, `fold` accepts either one or more text files or standard input.

|  option  | meaning                                                                      |
|:--------:|:---------------------------------------------------------------------------- |
| `-w <n>` | break the input into segments of width *n*.                                  |
|   `-s`   | break the line at the last available space before the line width is reached. |

### `fmt` a simple text formatter

It also folds text, plus a lot more. It accepts either files or standard input and performs paragraph formatting on the text stream.

By default, blank lines, spaces between words, and indentation are preserved in the output; successive input lines with different indentation are not joined; tabs are expanded on input and introduced on output.

`fmt` prefers breaking lines at the end of a sentence, and tries to avoid line breaks after the first word of a sentence or before the last words of a sentence. A "sequence break" is defined as either the end of a paragraph or a word ending in any of `.?!`, followed by two spaces or end of line, ignoring any intervening parentheses or quotes.

|    option     | description                                                                                                                                                              |
|:-------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|     `-c`      | operate in **crown margin mode**. This preserves the indentation of the first two lines of a paragraph. Subsequent line are aligned with indentation of the second line. |
| `-p <string>` | format only those lines beginning with the prefix *string*. After formatting, the contents of *string* are prefixed to each reformatted line.                            |
|     `-s`      | split-only mode. In this mode, lines will only be split to fit the specified column width. Short lines will not be joined to fill lines.                                 |
|     `-u`      | perform uniform spacing. This will apply traditional "typewriter-style" formatting to text. This means a single space between words and two spaces between sentences.    |
|   `-w <n>`    | format text to fit within a column *n* characters wide.                                                                                                                  |

### `pr` format text for printing

It is used to **paginate** text. When printing text, it is often desirable to separate the pages of output with several lines of whitespace, to provide a top margin a a bottom margin for each page. Further, this whitespace can be used to insert a header and a footer on each page.

|  option  | meaning                     |
|:--------:|:--------------------------- |
| `-l <n>` | set the page length to *n*. |
| `-w <n>` | set the page width to *n*.  |

### `printf` format and print data

It is not used for pipelines (it does not accept standard input) nor does it find frequent application directly on the command line (it is mostly used in scripts).

```
print f [-v VAR] STRING ARGUMENTS
```

The formatted result is sent to standard output unless `-v` is specified in which case the formatted result is stored in a variable.

The format string may contain literal text, escape sequences, and sequences beginning with `%`, which are called **conversion specifications**.

| specifier | description                                                                      |
|:---------:|:-------------------------------------------------------------------------------- |
|    `d`    | format a number as a signed decimal integer.                                     |
|    `f`    | format and output a floating-point number.                                       |
|    `o`    | format an integer as an octal number.                                            |
|    `s`    | format a string.                                                                 |
|    `x`    | format an integer as hexadecimal number using lowercase "a" to "f" where needed. |
|    `X`    | same as `x` but use uppercase letters.                                           |
|    `%`    | print a `%`.                                                                     |


Several option components may be added to the conversion specifier to adjust its output. A complete conversion specification may consist of the following:

```
%[FLAGS][WIDTH][.PRECISION]CONVERSION_SPECIFICATION
```

Multiple optional components, when used, must appear in the order specified earlier to be properly interpreted.

| component    | description                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ------------ |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `FLAGS`      | there are five different flags:<br>`#`: use the "alternate format" for output. This varies by data type. For `o` (octal number) conversion, the output is prefixed with `0`. For `x` and `X` (hexadecimal number) conversions, the output is prefixed with `0x` and `0X` respectively.<br>`0`: pad the output with zeros.<br>`-`: left-align the output.<br>` `: produce a leading space for positive numbers.<br>`+`: sign positive numbers. |
| `WIDTH`      | a number specifying the minimum field width.                                                                                                                                                                                                                                                                                                                                                                                                  |
| `.PRECISION` | for floating numbers, specify the number of digits of precision to be output after the decimal point. For strings conversion, it specifies the number of characters to output.                                                                                                                                                                                                                                                                |

## Document formatting systems

### `groff`

...Most documents today are produced using a word processor that are able to perform both the composition and the layout of a document in a single step. Prior to the advent of the graphical word processor, documents were often produced in a two-step process involving the use of a text editor to perform composition, and a processor, such as `troff`, to apply the formatting.

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
echo '# sed script to produce Linux distributions report
1 i\
.TS\
center box;\
cb s s\
cb cb cb\
l n c.\
Linux distributions report\
=\
name	ver	released\
_
s/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/
$ a\
.TE' > distros_tbl.sed
sort -k 1,1 -k 2,2n distros.txt | sed -f distros_tbl.sed | groff -t -T ascii
```
