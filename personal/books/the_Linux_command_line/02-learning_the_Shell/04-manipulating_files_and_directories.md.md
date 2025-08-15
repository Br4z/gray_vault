---
reviewed_on: "2025-06-30"
---

# Manipulating files and directories

- `mkdir`: create directories.

- `ln`: create hard and symbolic links.

## Wildcards

Since the shell uses filenames so much, it provides special characters to help us rapidly specify groups of filenames. These special characters are called **wildcards**. Using wildcards (which is also known as **globbing**) allows us to select filenames based on patterns of characters...

|              wildcard              | meaning                                                     |
|:----------------------------------:|:----------------------------------------------------------- |
|                `*`                 | any characters.                                             |
|                `?`                 | any single character.                                       |
|           `[characters]`           | any character that is a member of the set `characters`.     |
| `[!characters]` or `[^characters]` | any character that is not a member of the set `characters`. |
|           `[[:class:]]`            | any character that is a member of the specified class.      |

| character class | meaning                     |
|:---------------:|:--------------------------- |
|   `[:alnum:]`   | any alphanumeric character. |
|   `[:alpha:]`   | any alphabetic character.   |
|   `[:digit:]`   | any numeral.                |
|   `[:lower:]`   | any lowercase letter.       |
|   `[:upper:]`   | any uppercase letter.       |

## `cp` (copy files and directories)

```bash
cp item_1 item_2     # Copies the single file or directory item1 to the file or directory item2
cp item... directory # Copies multiple items (either files or directories) into a directory
```

### Useful options (`cp`)

|        option         | meaning                                                                                                                                                                     |
|:---------------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|   `-a`, `--archive`   | copy the files and directories and all of their attributes, including ownerships and permissions.                                                                           |
| `-i`, `--interactive` | before overwriting an existing file, prompt the user for confirmation.                                                                                                      |
|  `-r`, `--recursive`  | recursively copy directories and their contents.                                                                                                                            |
|   `-u`, `--update`    | when copying files from one directory to another, only copy files that either do not exist or are newer than the existing corresponding files in the destination directory. |
|   `-v`, `--verbose`   | display informative messages as the copy is performed.                                                                                                                      |

## `mv` (move and rename files)

```bash
mv item1 item2         # Move or rename the file or directory item1 to item2
mv item... <directory> # Move one or more items from one directory to another.
```

### Useful options (`mv`)

|        option         | meaning                                                                                                                                                                    |
|:---------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `-i`, `--interactive` | before overwriting an existing file, prompt the user for confirmation.                                                                                                     |
|   `-u`, `--update`    | when moving files from one directory to another, only move files that either do not exist or are newer than the existing corresponding files in the destination directory. |
|   `-v`, `--verbose`   | display informative messages as the move is performed.                                                                                                                     |

## `rm` (remove files and directories)

### Useful options (`rm`)

|        option         | meaning                                                             |
|:---------------------:|:------------------------------------------------------------------- |
| `-i`, `--interactive` | before deleting an existing file, prompt the user for confirmation. |
|  `-r`, `--recursive`  | recursively delete directories.                                     |
|    `-f`, `--force`    | ignore nonexistent files and do not prompt.                         |
|   `-v`, `--verbose`   | display informative messages as the deletion is performed.          |

#### Be carefully with `rm`!

Unix-like operating systems such as Linux do not have an undelete command. Once you delete something with `rm`, it is gone. Linux assumes you are smart and you know what you are doing.

Here is a useful tip: whenever you use wildcards with `rm`, test the wildcard first with `ls`.

## `ln` (create links)

```bash
ln file link    # Creates a hard link
ln -s item link # Creates a symbolic link (where item is either a file or a directory)
```

### Hard links

Hard links are the original Unix way of creating links, compared to symbolic links, which are more modern. By default, every file has a single hard link that gives the file its name. When we create a hard link, we create an additional directory entry for a file. Hard links have two important limitations.

1. A hard link cannot reference a file outside its own file system. This means a link cannot reference a file that is not on the same disk partition as the link itself.

2. A hard link may not reference a directory.

A hard link is indistinguishable from the file itself. Unlike a symbolic link, when you list a directory containing a hard link, you will see no special indication of the link. When a hard link is deleted, the link is removed, but the contents of the file itself continue to exist (that is, its space is not deallocated) until all links to the file are deleted.

### Symbolic links

Symbolic links were created to overcome the limitations of hard links. They work by creating a special type of file that contains a text pointer to the referenced file or directory. In this regard, they operate in much the same way as a Windows shortcut, though of course they predate the Windows feature by many years.

A file pointed to by a symbolic link and the symbolic link itself are largely indistinguishable from one another...

## Let's build a playground

### Creating hard links

When thinking about hard links, it is helpful to imagine that files are made up of two parts.

1. The data part containing the file's contents.

2. The name part that holds the file's name.

When we create hard links, we are actually creating additional name parts that all refer to the same data part. The system assigns a chain of disk blocks to what is called an **inode**, which is then associated with the name part. Each hard link therefore refers to a specific inode containing the file's contents.

The `ls` command has a way to reveal this information. It is invoked with the `-i` option (in this version of the listing, the first field is the inode number).

### Creating symbolic links

Notice that the length of the symbolic link file is the number of characters in the string to the file to which it is pointing (**path**).

```bash
ln -s file item link
```

> The `link`, can be a relative (of the item path) or absolute path.

...In most cases, using relative pathnames is more desirable because it allows a directory tree containing symbolic links and their referenced files to be renamed and/or moved without breaking the links.

### Removing files and directories

Most Linux distributions configure `ls` to display broken links. The presence of a broken link is not in and of itself dangerous, but it is rather messy. If we try to use a broken link, we will see the `No such file or directory` error.

One thing to remember about symbolic links is that most file operations are carried out on the link's target, not the link itself. `rm` is an exception. When you delete a link, it is the link that is deleted, not the target.
