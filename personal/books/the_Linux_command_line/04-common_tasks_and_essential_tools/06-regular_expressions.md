---
reviewed_on: "2025-07-10"
---

# Regular expressions

## `grep`

The name "grep" is actually derived from the phrase "global regular expression print"...`grep` searches text files for the occurrence text matching a specified regular expression and outputs any line containing a match to standard output.

```
grep [OPTIONS] REGEX [FILE...]
```

| option | long option             | description                                                                        |
| ------ | ----------------------- | ---------------------------------------------------------------------------------- |
| `-i`   | `--ignore-case`         |                                                                                    |
| `-v`   | `--invert-match`        |                                                                                    |
| `-c`   | `--count`               |                                                                                    |
| `-l`   | `--files-with-matches`  | print the name of each file that contains a match instead of the lines themselves. |
| `-L`   | `--files-without-match` | like `-l`,but print only the names of files that do not contain matches.           |
| `-n`   | `--line-number`         | prefix each matching line with the number of the line within the file.             |
| `-h`   | `--no-filename`         | for multi-file searches, suppress the output of filenames.                         |
| `-q`   | `--quiet`, `--silent`   | suppress all output.                                                               |

## Metacharacters and literals

...Regular expression metacharacters consist of the following:

- `^`.

- `$`.

- `.`.

- `[` and `]`.

- `{` and `}`.

- `-`.

- `?`.

- `*`.

- `+`.

- `(` and `)`.

- `|`.

- `\`.

All other characters are considered **literals**, though the backslash character is used in a few cases to create **meta sequences**, as well as allowing the metacharacters to be escaped and treated as literals instead of being interpreted as metacharacters.

> ...When we pass regular expressions containing metacharacters on the command line, it is vi­tal that they be enclosed in quotes to prevent the shell from attempting to expand them.

## Anchors

The caret (`^`) and dollar sign (`$`) characters are treated as anchors in regular expressions. This means they cause the match to occur only if the regular expression is found at the beginning of the line (`^`) or at the end of the line (`$`).

## Bracket expressions and character classes

In addition to matching any character at a given position in our regular expression, we can also match a single character from a specified set of characters by using **bracket ex­pressions**. With bracket expressions, we can specify a set of characters (including charac­ters that would otherwise be interpreted as metacharacters) to be matched.

A set may contain any number of characters, and metacharacters lose their special mean­ing when placed within brackets. However, there are two cases in which metacharacters are used within bracket expressions and have different meanings. The first is the caret (`^`), which is used to indicate negation; the second is the dash (`-`), which is used to indi­cate a character range.

### Negation

The caret character only invokes negation if it is the first character within a bracket ex­pression; otherwise, it loses its special meaning and becomes an ordinary character in the set.

### Traditional character ranges

To include a dash character in a bracket expression, it must be the first character of the expression.

### POSIX character classes

```bash
ls /usr/sbin/[ABCDEFGHIJKLMNOPQRSTUVWXYZ]*
# /usr/sbin/MAKEFLOPPIES
# /usr/sbin/NetworkManagerDispatcher
# /usr/sbin/NetworkManager
ls /usr/sbin/[A-Z]*
# /usr/sbin/biosdecode 
# /usr/sbin/chat 
# /usr/sbin/chgpasswd 
# /usr/sbin/chpasswd 
# /usr/sbin/chroot 
# /usr/sbin/cleanup-info 
# /usr/sbin/complain 
# /usr/sbin/console-kit-daemon 
```

Back when Unix was first developed, it knew only about ASCII characters

- $0$-$31$ are control codes (things such as tabs, backspace and carriage returns).

- $32$-$63$ contain printable characters, including most punctuation characters and the numerals $0$-$9$.

- $64-95$ contain the uppercase letters and a few more punctuation symbols.

Based on this arrangement, systems using ASCII used a **collation order** that looks like this:

```
ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
```

This differs from proper dictionary order, which is like this:

```
aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ
```

As the popularity of Unix spread beyond the United States, there grew a need to support characters not found in U.S. English. The ASCII table was expanded to use a full eight bits, adding characters $128$-$255$, which accommodated many more languages. To support this ability, the POSIX standards introduced a concept called a **locale**, which could be ad­justed to select the character set needed for a particular location.

```bash
echo $LANG
# en_US.UTF-8
```

With this setting, POSIX-compliant applications will use a dictionary collation order rather than ASCII order.

To partially work around this problem, the POSIX standard includes a number of charac­ter classes that provide useful ranges of characters.

| character class | description                                                                                                                                 |
|:---------------:|:------------------------------------------------------------------------------------------------------------------------------------------- |
|   `[:alnum:]`   | alphanumeric characters. In ASCII, equivalent to `[A-Za-z0-9]`.                                                                             |
|   `[:word:]`    | the same as `[:alnum:]`, with the addition of the underscore (`_`) character.                                                               |
|   `[:alpha:]`   | the alphabetic characters. In ASCII, equivalent to `[A-Za-z]`.                                                                              |
|   `[:blank:]`   | includes the space and tab characters.                                                                                                      |
|   `[:cntrl:]`   | ASCII control codes. Includes the ASCII characters $0$ through $31$ and $127$.                                                              |
|   `[:digit:]`   | the numerals $0$ through $9$.                                                                                                               |
|   `[:graph:]`   | visible characters. In ASCII, it includes character $33$ through $126$.                                                                     |
|   `[:lower:]`   | lowercase letters.                                                                                                                          |
|   `[:punct:]`   | punctuation characters.                                                                                                                     |
|   `[:print:]`   | printable characters. All the characters in `[:graph:]` plus the space character.                                                           |
|   `[:space:]`   | whitespace characters including space, tab, carriage return, newline, vertical tab, and form feed. In ASCII, equivalent to `[ \t\r\n\v\f]`. |
|   `[:upper:]`   | uppercase characters.                                                                                                                       |
|  `[:xdigit:]`   | characters used to express hexadecimal numbers. In ASCII, equivalent to `[0-9A-Fa-f]`.                                                      |

Even with the character classes, there is still no convenient way to express partial ranges.

#### Reverting to traditional collation order

To change the locale to use the traditional Unix behaviors, set `LANG` variable to `POSIX`.

```bash
export LANG=POSIX
```

> This change converts the system to use U.S. English (more specifically, ASCII) for its character set.

## POSIX basic vs. extended regular expressions

POSIX splits regular expression implementations into two kinds: **basic regular expressions** (BRE) and **extended regular expressions** (ERE).

With BRE, the following metacharacters are recognized

- `^`.

- `$`.

- `.`.

- `[` and `]`.

- `*`.

All other characters are considered literals. With ERE, the following metacharacters are added:

- `(` and `)`.

- `{` and `}`.

- `?`.

- `+`.

- `|`.

However, the `(`, `)`, `{`, and `}` characters are treated as metacharacters in BRE if the are escaped with a backslash, whereas with ERE, preceding any metacharacter with a backslash causes it to be treated as a literal.

...the GNU version of `grep` also supports extended regular expressions when `-E` is used.

## Alternation

It is the facility that allows a match to occur from among a set of expressions.

```bash
grep -Eh '^(bz|gz|zip)' dirlist*.txt # Match the filenames in our lists that start with either bz, gz, or zip
grep -Eh '^bz|gz|zip' dirlist*.txt # Match any filename that begins with bz or contains gz or contains zip
```

## Quantifiers

### `?` match an element zero or one time

This quantifier means, in effect, "Make the preceding element optional".

### `*` match an element zero or more times

Like the `?` metacharacter, the `*` is used to denote an optional item; however, unlike the `?`, the item may occur any number of times, not just once.

### `+` match an element one or more times

The `+` metacharacter works much like the `*`, except it requires at least one instance of the preceding element to cause a match.

```bash
echo "This that" | grep -E '^([[:alpha:]]+ ?)+$'
# This that
echo "a b c" | grep -E '^([[:alpha:]]+ ?)+$'
# "a b c"
echo "a b 9" | grep -E '^([[:alpha:]]+ ?)+$'
#
echo "abc  d" | grep -E '^([[:alpha:]]+ ?)+$'
#
```

### `{` and `}` math an element a specific number of times

The `{` and `}` metacharacters are used to express minimum and maximum numbers of re­quired matches.

|  specifier  | meaning                                                                               |
|:-----------:|:------------------------------------------------------------------------------------- |
|   `{<n>}`   | math the preceding element if it occurs exactly *n* times.                            |
| `{<n>,<m>}` | math the preceding element if it occurs at least *n* time but no more than *m* times. |
|  `{<n>,}`   | match the preceding element if it occurs *n* or more times.                           |
|  `{,<m>}`   | math the preceding element if it occur no more than *m* times.                        |

```
^\(?[0-9][0-9][0-9]\)?  [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$
^\(?[0-9]{3}\)?  [0-9]{3}-[0-9]{4}$
```

## Putting regular expressions to work

### Validating a phone list with `grep`

```bash
for i in {1..10}; do echo "(${RANDOM:0:3}) ${RANDOM:0:3}-${RANDOM:0:4}" >> phonelist.txt; done

# ----------------------------------------------------------------------- #

grep -Ev '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$' 
```

### Finding ugly filenames with `find`

Whereas `grep` will print a line when the line contains a string that matches an expres­sion, `find` requires that the pathname exactly match the regular expression.

```bash
find . -regex '.*[^-_./0-9a-zA-Z].*'
```

### Searching for files with `locate`

`locate` supports both basic (the `--regexp` option) and extended (the `--regex` option) regular expressions.

### Searching for text with `less` and `vim`

`less` and `vim` both share the same method of searching for text. Pressing `/` fol­lowed by a regular expression will perform a search.

`less` supports extended regular expressions, but `vim` does not.

```
^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$
/([0-9]\{3\}) [0-9]\{3\}-[0-9]\{4\}
```