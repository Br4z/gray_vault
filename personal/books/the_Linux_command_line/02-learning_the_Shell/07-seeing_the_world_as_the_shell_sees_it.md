---
reviewed_on: "2025-06-30"
---

# Seeing the world as the shell sees it

- `echo`: display a line of text.

## Expansion

...With **expansion**, we enter something, and it is expanded into something else before the shell acts upon it...

```bash
echo this is a test

# this is a test

# ----------------------------------------------------------------------- #

echo *

Desktop Documents ls-output.txt Music Pictures Public Templates Videos
```

> The "\*" character means match any character in a filename.

...When `ENTER` is pressed, the shell automatically expands any qualifying characters on the command line before the command is carried out, so `echo` never saw the `*`, only its expanded result...

### Pathname expansion

The mechanism by which wildcards work is called **pathname expansion**...

#### Pathname expansion of hidden files

```bash
echo .*      # Includes the `.` (actual) and `..` (parent) directories
echo  .[!.]* # Now excludes the two directories mentioned in the command above, but also files with multiple leading periods
```

The second command will exclude files (or directories) named with multiple leading periods. `ls -A` provide a correct listing of hidden files.

### Tilde expansion

...When used at the beginning of a word, it expands into the name of the home directory of the named user; if no user is named, the home directory of the current user.

```bash
echo ~

/home/me

# ----------------------------------------------------------------------- #

echo ~foo

/home/foo
```

### Arithmetic expansion

The shell allows arithmetic to be performed by expansion. This allows us to use the shell prompt as a calculator.

```bash
# $((expression))

# ----------------------------------------------------------------------- #

echo $((2 + 2))

# 4
```

Arithmetic expansion supports only integers...

| operator | description                             |
|:--------:|:--------------------------------------- |
|   `+`    | addition.                               |
|   `-`    | subtraction.                            |
|   `*`    | multiplication                          |
|   `/`    | division (results are integers).        |
|   `%`    | modulo, which simply means "remainder". |
|   `**`   | exponentiation.                         |

Spaces are not significant in arithmetic expressions, and expressions may be nested...

```bash
echo $(($((5 ** 2)) * 3)) # Is equal to $(((5 ** 2) * 3))

# 75

# ----------------------------------------------------------------------- #

echo Five divided by two equals $((5 / 2))

# Five divided by two equals 2

# ----------------------------------------------------------------------- #

echo with $((5 % 2)) left over

# with 1 left over
```

### Brace expansion

...With it, you can create multiple text strings from a pattern containing braces.

```bash
echo Front-{A,B,C}-Back

# Front-A-Back Front-B-Back Front-C-Back
```

Patterns to be brace expanded may contain a leading portion called a **preamble** and a trailing portion called a **postscript**. The pattern may not contain unquoted whitespace.

```bash
echo Number_{1..5}

# Number_1 Number_2 Number_3 Number_4 Number_5

# ----------------------------------------------------------------------- #

echo {01..15}

# 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15

# ----------------------------------------------------------------------- #

echo {Z..A}

# Z Y X W V U T S R Q P O N M L K J I H G F E D C B A

# ----------------------------------------------------------------------- #

echo a{A{1,2},B{3,4}}b

# aA1b aA2b aB3b aB4b

# ----------------------------------------------------------------------- #

mkdir Photos
cd Photos
mkdir {2007..2009}-{01..12}
ls

# 2007-01 2007-07 2008-01 2008-07 2009-01 2009-07
# 2007-02 2007-08 2008-02 2008-08 2009-02 2009-08
# 2007-03 2007-09 2008-03 2008-09 2009-03 2009-09
# 2007-04 2007-10 2008-04 2008-10 2009-04 2009-10
# 2007-05 2007-11 2008-05 2008-11 2009-05 2009-11
# 2007-06 2007-12 2008-06 2008-12 2009-06 2009-12
```

### Parameter expansion

...Many of its capabilities have to do with the system's ability to store small chunks of data and to give each chunk a name. Many such chunks, more properly called **variables**, are available for your examination...

```bash
echo $USER

# me

# ----------------------------------------------------------------------- #

printev | less # To see the list of variables
```

### Command substitution

...allows us to use the output of a command as an expansion.

```bash
echo $(ls)

# Desktop Documents ls-output.txt Music Pictures Public Templates Videos

# ----------------------------------------------------------------------- #

ls -l $(which cp)

# -rwxr-xr-x 1 root root 71516 2007-12-05 08:58 /bin/cp
```

## Quoting

```bash
echo this is a      test # word-splitting by the shell removed extra whitespace

# this is a test

# ----------------------------------------------------------------------- #

echo The total is $100.00

# The total is 00.00
```

...The shell provides a mechanism called **quoting** to selectively suppress unwanted expansions.

### Double quotes

If we place text inside double quotes, all the special characters used by the shell lose their special meaning and are treated as ordinary characters. The exceptions are:

- `$` (dollar sign).

- `\` (backslash).

- `` ` `` (backtick).

This means that word-splitting, pathname expansion, tilde expansion, and brace expansion are suppressed, but parameter expansion, arithmetic expansion, and command substitution are still carried out...

By default, word splitting looks for the presence of spaces, tabs, and newlines (line feed characters) and treats them as **delimiters** between words...

```bash
echo $(df -h)

# Filesystem Size Used Avail Use% Mounted on tmpfs 1.6G 2.0M 1.6G 1%
# /run /dev/sda2 94G 19G 71G 21% / tmpfs 7.8G 0 7.8G 0% /dev/shm tmpfs
# 5.0M 4.0K 5.0M 1% /run/lock /dev/sda1 975M 6.1M 969M 1% /boot/efi
# /dev/sdb1 907G 574G 287G 67% /home tmpfs 1.6G 1.8M 1.6G 1%
# /run/user/1000

echo "$(df -h)" # Well display output
```

### Single quotes

If we need to suppress **all** expansions, we use **single quotes**...

```bash
echo text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER

# text /home/me/ls-output.txt a b foo 4 me

# ----------------------------------------------------------------------- #

echo "text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER"

# text ~/*.txt {a,b} foo 4 me

# ----------------------------------------------------------------------- #

echo 'text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER'

# text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER
```

### Escaping characters

To **escape a character**, we can precede that character with a backslash.

```bash
echo "The balance for user $USER is: \$5.00"

# The balance for user me is: $5.00
```

It is possible to use characters in filenames that normally have special meaning to the shell. These would include `$`, `!`, `&`, spaces, and others. To include a special character in a filename, we can do this:

```bash
mv bas\&filename good_filename
```

To allow a backslash character to appear, escape it by typing `\\`. Note that within single quotes, the backslash loses its special meaning and is treated as an ordinary character.

Another use of the backslash escape is suppressing aliases.

#### Backslash escape sequences

In addition to its role as the escape character, the backslash is used as part of a notation to represent certain special characters called **control codes**. The first 32 characters in the ASCII coding scheme are used to transmit commands to teletype-like devices...

| escape sequence | meaning                                                   |
|:---------------:|:--------------------------------------------------------- |
|      `\a`       | bell (an alert that causes the computer to beep).         |
|      `\b`       | backspace.                                                |
|      `\n`       | newline; on Unix-like systems, this produces a line feed. |
|      `\r`       | carriage return.                                          |
|      `\t`       | tab.                                                      |

Adding the `-e` option to echo will enable interpretation of escape sequences. You can also place them inside `$' '`.

```bash
sleep 10; echo -e "Time is up\a"

sleep 10; echo "Time is up" $'\a'
```
