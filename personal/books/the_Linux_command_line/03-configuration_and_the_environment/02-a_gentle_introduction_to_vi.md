---
reviewed_on: "2025-06-30"
---

# A gentle introduction to vi

## Basic editing

### Deleting text

...First, the `x` will delete a character at the cursor location. `x` may be preceded by a number specifying how many characters are to be deleted. The `d` is more general purpose. Like `x`, it may be preceded by a number specifying the number of times the deletion is to be performed. In addition, `d` is always followed by a movement command that controls the size of the deletion.

### Joining lines

`vi` is rather strict about its idea of a line. Normally, it is not possible to move the cursor to the end of a line and delete the end-of-line character to join one line with the one below it. Because of this, `vi` provides a specific command, `J`, to join lines together.

## Search-and-replace

### Global search-and-replace

`vi` uses an ex command to perform search-and-replace operations (called **substitution** in `vi`) over a range of lines or the entire file...

```
:%s/Line/line/g
```

|     item      | meaning                                                                                                            |
|:-------------:|:------------------------------------------------------------------------------------------------------------------ |
|      `:`      | starts an **ex** command.                                                                                          |
|      `%`      | the range of lines for the operation. `%` is a shortcut, meaning from the first line to the last line.             |
|      `s`      | specifies the operation. In this case, it is substitution.                                                         |
| `/Line/line/` | specifies the search pattern and the replacement text.                                                             |
|      `g`      | "global" in the sense that the search-and-replace is performed on every instance of the search string in the line. |

A `c` can be added after `g` if you want it to ask for confirmation after each substitution.

```
:%s/Line/line/gc

replace with Line (y/n/a/q/l/^E/^Y)?
```

|          item          | meaning                                                                       |
|:----------------------:|:----------------------------------------------------------------------------- |
|          `n`           | skip this instance of the pattern.                                            |
|          `a`           | perform the substitution on this and all subsequent instances of the pattern. |
|      `q` or `ESC`      | quit substituting.                                                            |
|          `l`           | perform this substitution and then quit.                                      |
| `CTRL + e`, `CTRL + y` | scroll down and scroll up, respectively.                                      |

## Editing multiple files

```bash
vi file1 file2 file3...
```

### Switching between files

```
:bn Switch from one file to the next
:bp Move back to the previous file
:buffers View a list of files being edited
:buffer <buffer number> Switch to a specified buffer (file)
```

### Opening additional files for editing

It is also possible to add files to our current editing session.

```
:e file
```

### Inserting an entire file into another

It is also possible to insert an entire file into one we are editing.

```
:r file
```

> It inserts the specified file below the cursor position.

## Saving our work

In normal mode, typing `Z`Z will save the current file and exit `vi`...

The `:w` command may also specify an optional filename. This acts like "save as".

> While this command saves the file under a new name, it does not change the name of the file we are editing.

## `bash` does `vi` too

...bash also supports vi-style command line editing too. This feature is easily activated  with the following command:

```bash
set -o vi
```
