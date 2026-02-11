---
reviewed_on: "2025-06-30"
---

# Exploring the system

- `file`: determinate file type.

- `less`: view file contents.

## Having more fun with ls

### Options and arguments

...Commands are often followed by one or more **options** that modify their behavior and, further, by one or more **arguments**...

Most commands use options which consist of a single character preceded by a dash...Many commands, however, including those from the GNU Project, also support **long options**, consisting of a word preceded by two dashes. Also, many commands allow multiple short options to be strung together...

> Command options, like filenames on Linux, are case-sensitive.

`ls` has numerous possible options:

| option |    long option     | description                                                                                                      |
|:------:|:------------------:|:---------------------------------------------------------------------------------------------------------------- |
|  `-a`  |      `--all`       | list all files.                                                                                                  |
|  `-A`  |   `--almost-all`   | like the `-a` option, except it does not list `.` and `..`.                                                      |
|  `-d`  |   `--directory`    | ordinarily, if a directory is specified, `ls` will list the contents of the directory, not the directory itself. |
|  `-F`  |    `--classify`    | append an indicator character to the end of each listed name.                                                    |
|  `-h`  | `--human-readable` | in long format listings, display file sizes in human readable format rather than in bytes.                       |
|  `-l`  |                    | display results in long format.                                                                                  |
|  `-r`  |    `--reverse`     | display the results in reverse order.                                                                            |
|  `-S`  |                    | sort results by file size.                                                                                       |
|  `-t`  |                    | sort by modification time.                                                                                       |

### A longer look at long format

The long format contains a great deal of useful information. Here is an example from an Ubuntu system:

```bash
-rw-r--r-- 1 root root 32059 2017-04-03 11:05 oo-cd-cover.odf
```

|       field        | meaning                                        |
|:------------------:|:---------------------------------------------- |
|    `-rw-r-r--`     | access rights to the file.                     |
|        `1`         | file's number of hard links.                   |
|       `root`       | the username of the file's owner.              |
|       `root`       | the name of the group that owns the file.      |
|      `32059`       | size of the file in bytes.                     |
| `2017-04-03 11:05` | date and time of the file's last modification. |
| `oo-cd-cover.odf`  | name of the file.                              |

## Determining a file's type with file

```bash
file <file> # Will print a brief description of the file's contents
```

There are many kinds of files. In fact, one of the common ideas in Unix-like operating systems such as Linux is that "everything is a file"...

## Viewing file contents with `less`

`less` is used to view text files.

### What is "text"?

There are many ways to represent information on a computer. All methods involve defining a relationship between the information and some numbers that will be used to represent it. Computers, after all, understand only numbers, and all data is converted to numeric representation.

Some of these representation systems are very complex (such as compressed video files), while others are rather simple. One of the earliest and simplest is called ASCII text. ASCII (pronounced "as-key") is short for American Standard Code for Information Interchange. This is a simple encoding scheme that was first used on Teletype machines to map keyboard characters to numbers.

Once started, the `less` allows us to scroll forward and backward through a text file.

|        command         | action                                                 |
|:----------------------:|:------------------------------------------------------ |
|    `PAGE UP` or `b`    | scroll back one page.                                  |
| `PAGE DOWN` or `SPACE` | scroll forward one page.                               |
|       `UP ARROW`       | scroll up one line.                                    |
|      `DOWN ARROW`      | scroll down one line.                                  |
|          `G`           | move to the end of the text file.                      |
|      `1G` or `g`       | move to the beginning of the text file.                |
|    `/<characters>`     | search forward to the next occurrence of `characters`. |
|          `n`           | search for the next occurrence of the previous search. |
|          `h`           | display help screen.                                   |
|          `q`           | quit.                                                  |

### Less is more

The less program was designed as an improved replacement of an earlier Unix program called "more". The name "less" is a play on the phrase "less is more".

`less` falls into the class of programs called "pagers", programs that allow the easy viewing of long text documents in a page-by-page manner. Whereas `more` could only page forward, the less program allows paging both forward and backward and has many other features as well.

## Taking a guided tour

The file system layout on a Linux system is much like that found on other Unix-like systems. The design is actually specified in a published standard called the **Linux Filesystem Hierarchy Standard**. Not all Linux distributions conform to the standard exactly, but most come pretty close.

|         directory          | description                                                                                                                                                                            |
|:--------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|            `/`             | root directory.                                                                                                                                                                        |
|           `/bin`           | contains binaries (programs) that must be present for the system to boot and run.                                                                                                      |
|          `/boot`           | contains the Linux kernel, initial RAM disk image (for drivers needed at boot time), and the bootloader.                                                                               |
|           `/dev`           | contains **device nodes**.                                                                                                                                                             |
|           `/etc`           | contains all the system-wide configuration files.                                                                                                                                      |
|          `/home`           | in normal configurations, each user is given a directory in `/home`.                                                                                                                   |
|           `/lib`           | contains shared library files used by the core system programs.                                                                                                                        |
|       `/lost+found`        | each formatted partition or device using a Linux file system, such as ext4, will have this directory.                                                                                  |
|          `/media`          | on modern Linux systems, the `/media` directory will contain the mount points for removable media such as USB drives, CD-ROMs, and so on, that are mounted automatically at insertion. |
|           `/mnt`           | on older Linux systems, the `/mnt` directory contains mount points for removable devices that have been mounted manually.                                                              |
|           `/opt`           | it is used to install "optional" software.                                                                                                                                             |
|          `/proc`           | it is not a real file system in the sense of files stored on your hard drive. Rather, it is a virtual file system maintained by the Linux kernel.                                      |
|          `/root`           | this is the home directory for the root account.                                                                                                                                       |
|           `run`            | This is a modern replacement for the traditional `/tmp` directory.                                                                                                                     |
|          `/sbin`           | contains "system" binaries.                                                                                                                                                            |
|           `/sys`           | contains information about devices that have been detected by the kernel.                                                                                                              |
|           `/tmp`           | is intended for the storage of temporary, transient files created by various programs.                                                                                                 |
|           `/usr`           | it contains all the programs and support files used by regular users.                                                                                                                  |
|         `/usr/bin`         | contains the executable programs installed by the Linux distribution.                                                                                                                  |
|         `/usr/lib`         | the shared libraries for the programs in `/usr/bin`.                                                                                                                                   |
|        `/usr/local`        | is where programs that are not included with the distribution but are intended for system-wide use are installed.                                                                      |
|        `/usr/sbin`         | contains more system administration programs.                                                                                                                                          |
|        `/usr/share`        | contains all the shared data used by programs in `/usr/bin`.                                                                                                                           |
|      `/usr/share/doc`      | most packages installed on the system will include some kind of documentation.                                                                                                         |
|           `/var`           | contains files whose size or contents are expected to change while the system is running.                                                                                              |
|         `/var/log`         | contains **log files**, records of various system activity.                                                                                                                            |
| `~/.config` and `~/.local` | store user-specific configuration data for desktop applications.                                                                                                                       |

## Symbolic links

```bash
lrwxrwxrwx 1 root root 11 2018-08-11 07:34 libc.so.6 -> libc-2.6.so
```

Notice how the first letter of the listing is `l` and the entry seems to have two filenames? This is a special kind of file called a **symbolic link** (also known as a **soft link** or **symlink**). In most Unix-like systems, it is possible to have a file referenced by multiple names.

## Hard links

...Hard links also allow files to have multiple names, but they do it differently.
