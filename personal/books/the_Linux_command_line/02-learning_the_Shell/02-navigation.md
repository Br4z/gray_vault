---
reviewed_on: "2025-06-30"
---

# Navigation

## Understanding the file system tree

Like Windows, a Unix-like operating system such as Linux organizes its files in what is called a **hierarchical directory structure**. This means they are organized in a tree-like pattern of **directories**. The first directory in the file system is called the **root directory**...

...unlike Windows, which has a separate file system tree for each storage device, Unix-like systems such as Linux always have a single file system tree, regardless of how many drives or storage devices are attached to the computer...

## The current working directory

When we first log in to our system (or start a terminal emulator session), our current working directory is set to our **home directory**...

## Changing the current working directory

### Absolute pathnames

An absolute pathname begins with the root directory and follows the tree branch by branch until the path to the desired directory or file is completed...

```bash
cd /usr/bin # Start with from the root directory (represented by the leading slash in the pathname)

[me@linuxbox bin]$ # The prompt has changed (now showing us the path that we are in)
```

### Relative pathnames

...a relative pathname starts from the working directory. To do this, it uses a couple of special notations to represent relative positions in the file system tree. These special notations are `.` and `..`.

The `.` notation refers to the working directory, and the `..` notation refers to the working directory's parent directory.

...In almost all cases, we can omit the `./`. It is implied...

...In general, if we do not specify a pathname to something, the working directory will be assumed.

### Some helpful shortcuts

|     shortcut      |                               result                                |
|:-----------------:|:-------------------------------------------------------------------:|
|       `cd`        |        changes the working directory to your home directory.        |
|      `cd -`       |  changes the working directory to the previous working directory.   |
| `cd ~<user_name>` | changes the working directory to the home directory of `user_name`. |

### Important facts about filenames

On Linux systems, files are named in a manner similar to that of other systems such as Windows, but there are some important differences.

1. Filenames that begin with a period character are hidden. This only means that `ls` will not list them unless you say `ls -a`...

2. Filenames and commands on Linux, like Unix, are case sensitive...

3. Linux has no concept of a "file extension" like some other operating systems...Although Unix-like operating systems do not use file extensions to determine the contents/purpose of files, many application programs do.

4. Though Linux supports long filenames that may contain embedded spaces and punctuation characters, limit the punctuation characters in the names of files you create to period, dash, and underscore...
