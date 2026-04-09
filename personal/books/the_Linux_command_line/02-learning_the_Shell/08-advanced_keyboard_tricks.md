---
reviewed_on: "2025-06-30"
---

# Advanced keyboard tricks

## Command line editing

`bash` uses a library called **Readline** to implement command line editing...

> Some of the key sequences below (particularly those that use `ALT`) may be intercepted by the GUI for other functions. All of the key sequences should work properly when using a virtual console.

### Cursor movement

|    key     | action                                                          |
|:----------:|:--------------------------------------------------------------- |
| `CTRL + a` | move the cursor to the beginning of the line.                   |
| `CTRL + e` | move the cursor to the end of the line.                         |
| `CTRL + f` | move cursor forward one character; same as the right arrow key. |
| `CTRL + b` | move cursor backward one character; same as the left arrow key. |
| `ALT + f`  | move cursor forward one word.                                   |
| `ALT + b`  | move cursor backward one word.                                  |
| `CTRL + l` | clear the screen and move the cursor to the top-left corner.    |

### Modifying text

|    key     | action                                                                               |
|:----------:|:------------------------------------------------------------------------------------ |
| `CTRL + d` | delete the character at the cursor location.                                         |
| `CTRL + t` | transpose the character at the cursor location with the one preceding it.            |
| `ALT + t`  | transpose the word at the cursor location with the one preceding it.                 |
| `ALT + l`  | convert the characters from the cursor location to the end of the word to lowercase. |
| `ALT + u`  | convert the characters from the cursor location to the end of the word to uppercase. |

### Cutting and pasting (killing and yanking) text

The `readline` documentation uses the terms **killing** and **yanking** to refer to what we would commonly call cutting and pasting. Items that are cut are stored in a buffer called the **kill-ring**.

|        key        | action                                                                                                                                        |
|:-----------------:|:--------------------------------------------------------------------------------------------------------------------------------------------- |
|    `CTRL + k`     | kill text from the cursor location to the end of line.                                                                                        |
|    `CTRL + u`     | kill text from the cursor location to the beginning of the line.                                                                              |
|     `ALT + d`     | kill text from the cursor location to the end of the current word.                                                                            |
| `ALT + BACKSPACE` | kill text from the cursor location to the beginning of the current word. If the cursor is at the beginning of a word, kill the previous word. |
|    `CTRL + y`     | Yank text from the kill-ring and insert it at the cursor location.                                                                            |

#### The meta key

If you venture into the Readline documentation, which can be found in the "READLINE" section of the bash man page, you will encounter the term meta key. On modern keyboards this maps to `ALT` but it was not always so.

...While the Alt key serves as the meta key on modern keyboards, you can also press and release `ESC` key to get the same effect as holding down the Alt key if you are using a terminal...

## Completion

....Completion occurs when you press the `TAB` while typing a command...

...completion will also work on variables (if the beginning of the word is a `$`), usernames (if the word begins with `~`), commands (if the word is the first word on the line), and hostnames (if the beginning of the word is `@`). Hostname completion only works for hostnames listed in `/etc/hosts`.

|    key    | action                                                                                                                                       |
|:---------:|:-------------------------------------------------------------------------------------------------------------------------------------------- |
| `ALT + ?` | display a list of possible completions. On most systems, you can also do this by pressing the `TAB` key a second time, which is much easier. |
| `ALT + *` | insert all possible completions.                                                                                                             |

### Programmable completion

Recent versions of `bash` have a facility called **programmable completion**. Programmable completion allows you to add additional completion rules. To see them, `set` can be used.

## Using history

### Searching history

```bash
history | less

# ----------------------------------------------------------------------- #

history | greq /usr/bin # Display all commands we executed that contains the path "/usr/bin"

# 88 ls -l /usr/bin > ls-output.txt

# ----------------------------------------------------------------------- #

!88 # Get the command in the 88th line of the history
```

`bash` will expand `!88` into the contents of the 88th line in the history list (this is called **history expansion**).

`bash` also provides the ability to search the history list incrementally. This means we can tell bash to search the history list as we enter characters, with each additional character further refining our search. To start incremental search, press `CTRL + r` followed by the text you are looking for. When you find it, you can either press `ENTER` to execute the command or press `CTRL + j` to copy the line from the history list to the current command line. To find the next occurrence of the text (moving "up" the history list), press `CTRL + r` again. To quit searching, press either `CTRL + g` or `CTRL + c`.

|    key     | action                                                                    |
|:----------:|:------------------------------------------------------------------------- |
| `CTRL + p` | move to the previous history entry.                                       |
| `CTRL + n` | move to the next history entry.                                           |
| `ALT + <`  | move to the beginning (top) of the history list.                          |
| `ALT + >`  | move to the end (bottom) of the history list.                             |
| `ALT + p`  | reverse search before the current history pointer, nonincremental.        |
| `ALT + n`  | forward search after the current history pointer, nonincremental.         |
| `CTRL + o` | execute the current item in the history list and advance to the next one. |

### History expansion

|     key      | action                                                |
|:------------:|:----------------------------------------------------- |
|     `!!`     | repeat the last command.                              |
| `!<number>`  | repeat history list item *number*.                    |
| `!<string>`  | repeat last history list item starting with *string*. |
| `!?<string>` | repeat last history list item containing *string*.    |

Use caution with the `!string` and `!?string` forms unless you are absolutely sure of the contents of the history list items. We can mitigate this problem somewhat by ap­ pending `:p` to our expansion. This tells the shell to print the result of the expansion and place it into the command history.

#### `script`

In addition to the command history feature in bash, most Linux distributions include a program called script that can be used to record an entire shell session and store it in a file.

```
# script <filename>
```

If no file is specified, the name "typescript" is used.
