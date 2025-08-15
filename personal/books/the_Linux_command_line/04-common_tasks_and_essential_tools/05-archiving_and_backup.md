---
reviewed_on: "2025-07-06"
---

# Archiving and backup

- `gzip`: compress or expand files.

- `bzip2`: a block sorting file compressor.

- `tar`: tape archiving utility.

- `zip`: package and compress files.

- `rsyinc`: remote file and directory synchronization.

## Compressing files

Data compression is the process of removing **redundancy** from data.

The **run-length encoding** compression technique works by replacing sequences of the same data value (runs) with a single value and a count. It is one of the most rudimentary compression techniques. Today's techniques are much more advanced and complex, but the basic goal remains the same (get rid of redundant data).

**Compression algorithms** (the mathematical techniques used to carry out the compression) fall into two general categories.

- Lossless: preserves all the data contained in the original. This means that when a file is restored from a compressed version, the restored file is exactly the same as the original, uncompressed version.

- Lossy: removes data as the compression is performed to allow more compression to be applied. When a lossy file is restored, it does not match the original version; rather, it is a close approximation.

### `gzip`

It is used to compress one or more files. When executed, it replaces the original file with a compressed version of the original. The corresponding `gunzip` is used to restore compressed files to their original, uncompressed form.

```bash
ls -l /etx > foo.txt
ls -l foo.*
# -rw-r--r-- 1 me    me    15738 2025-10-14 07:15 foo.txt
gzip foo.txt
ls -l foo.*
# -rw-r--r-- 1 me    me    3230 2025-10-14 07:15 foo.txt.gz
gunzip foo.txt
ls -l foo.*
# -rw-r--r-- 1 me    me    15738 2025-10-14 07:15 foo.txt
```

| option |          long option           | description                                                                                                                                                                                                            |
|:------ |:------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `-c`   |   `--stdout`, `--to-stdout`    | write output to standard output and keep the original files.                                                                                                                                                           |
| `-d`   | `--decompress`, `--uncompress` | causes `gzip` to act like `gunzip`.                                                                                                                                                                                    |
| `-f`   |           `--force`            | force compression even if a compressed version of the original file already exists.                                                                                                                                    |
| `-h`   |            `--help`            | display usage information.                                                                                                                                                                                             |
| `-l`   |            `--list`            | list compression statistics for each file compressed.                                                                                                                                                                  |
| `-r`   |         `--recursive`          | if one or more arguments on the command line is a directory, recursively compress files contained within them.                                                                                                         |
| `-t`   |            `--test`            | test the integrity of a compressed file.                                                                                                                                                                               |
| `-v`   |          `--verbose`           | display verbose messages while compressing.                                                                                                                                                                            |
| `-<n>` |                                | set amount of compression. *n* is an integer in the range of $1$ (fastest, least compression) to $9$ (slowest, most compression). The values $1$ and $9$ may also be expressed as `--fast` and `--best`, respectively. |


`gunzip` assumes that filenames end in the extension `.gz`, so it is not necessary to specify it, as long as the specified name is not in conflict with an existing uncompressed file.

```bash
# See the content of the foo.txt original file without decompressing it
gunzip -c foo.txt | less
zcat foo.txt.gz | less
zless foo.txt
```

### `bzip2`

It is similar to `gzip` but uses a different compression algorithm that achieves higher levels of compression at the cost of compression speed.

```bash
ls -l /etc > foo.txt
ls -l foo.txt
# -rw-r--r-- 1 me    me    15738 2025-10-17 13:51 foo.txt
bzip2 foo.txt
ls -l foo.txt.bz2
# -rw-r--r-- 1 me    me     2792 2025-10-17 13:51 foo.txt.bz2
bunzip2 foo.txt.bz2
```

All the options (except for `-r`) that we discussed for `gzip` are also supported in `bzip2`. Note, however, that the compression-level option (`-number`) has a somewhat different meaning to `bzip2`. `bzip2` comes with `bunzip2` and `bzcat` for uncompressing files.

`bzip2` also comes with the bzip2recover program, which will try to recover damaged `.bz2` files.

## Archiving files

A common file-management task often used in conjunction with compression is **archiv­ing**. Archiving is the process of gathering up many files and bundling them together into a single large file...

### `tar`

```bash
mkdir -p playground/dir-{001..100}
touch playground/dir-{001..100}/file-{A..Z}
```

...Its name, short for **tape archive**, reveals its roots as a tool for making backup tapes...We often see filenames that end with the extension `.tar` or `.tgz`, which indicate a "plain" tar archive and a gzipped archive, respectively. A tar archive can consist of a group of separate files, one or more directory hierarchies, or a mixture of both.

```
tar MODE[OPTIONS] PATHNAME...
```

| mode | description                                               |
|:----:|:--------------------------------------------------------- |
| `c`  | create an archive from a list of file and/or directories. |
| `x`  | extract an archive.                                       |
| `r`  | append specified pathname to the end of an archive.       |
| `t`  | list the contents of an archive.                          |

One option that we are likely to use in all commands is `f` to specify the file name.

> The mode must always be specified first, before any option.

...files and directories extracted from archives take on the ownership of the user performing the restoration, rather than the original owner.

Another interesting behavior of `tar` is the way it handles pathname in archives. The default for pathname is relative, rather than absolute. `tar` does this by simply removing any leading slash from the pathname when creating the archive.

By adding the trailing **pathname** to the command, `tar` will restore only the specified file. Multiple pathnames may be specified. The GNU version of `tar` supports wildcards with `--wildcards`.

`tar` is often used in conjunction with find to produce archives.

```bash
find playground -name "file-A" -exec tar rf playground.tar '{}' '+'
```

Using `tar` with `find` is a good way of creating incremental backups of a directory tree or an entire system. By using find to match files newer than a timestamp file, we could create an archive that contains only those files newer than the last archive, assuming that the timestamp file is updated right after each archive is created.

```bash
find playground -name "file-A" | tar cf - --files-from=- | gzip > playground.tgz
```

- `-`: tells `tar` to write the archive to standard output instead of a file.

- ` --files-from=-` (also be specified as `-T`): tells `tar` to read the list of files to archive from standard input (the list coming from `find`).

> The `.tgz` extension is the conventional extension given to gzip-compressed tar files. The extension `.tar.gz` is also used some times.

While we used `gzip` externally to produce our compressed archive in the above example, modern versions of GNU `tar` support both `gzip` and `bzip2` compres­sion directly with the use of the `z` and `j`, respectively.

```bash
find playground -name "file-A" | tar czf | playground.tgz -T -

# ----------------------------------------------------------------------- #

find playground -name "file-A" | tar cjf | playground.tbz -T -
```

Another interesting use of standard input and output with the tar command involves transferring files between systems over a network. Imagine that we had two machines running a Unix-like system equipped with `tar` and `ssh`.

```bash
mkdir remote_stuff
cd remote_stuff
ssh remote-sys "tar cf - Documents" | tar xf -
ls
# Documents
```

- `tar cf -`: create the archive and send it to standard output.

- `tar xf -`: extract the archive supplied for the standard input.

### `zip`

It is both a compression tool and an archiver...

```
zip OPTIONS ZIPFILE FILE...
```

`zip` will add files to the archive using one of two storage methods: either it will "store" a file without compression, or it will "deflate" the file.

```bash
zip -r playground.zip playground
```

Extracting the contents of a zip file is straightforward when using `unzip`.

One thing to note about `zip` (as opposed to `tar`) is that if an existing archive is speci­fied, it is updated rather than replaced. This means the existing archive is preserved, but new files are added and matching files are replaced.

```bash
unzip -l playground.zip playground/dir-087/file-Z
```

Using `-l` causes unzip to merely list the contents of the archive without ex­tracting the file.

Like `tar`, `zip` can make use of standard input and output, though its implementation is somewhat less useful. It is possible to pipe a list of filenames to `zip` via `-@`.

```bash
find playground -name "file-A" | zip -@ file-A.zip
```

`zip` also supports writing its output to standard output, but its use is limited because few programs can make use of the output. Unfortunately, the `unzip` program does not accept standard input...

`zip` can, however, accept standard input, so it can be used to compress the output of other programs.

```bash
ls -l /etc/ | zip ls-etc.zip -
```

`unzip` program allows its output to be sent to standard output with `-p`.

```bash
unzip -p ls-etc.zip | less
```

## Synchronizing files and directories

In the Unix-like world, the preferred tool for this task is `rsync`. This program can syn­chronize both local and remote directories by using the **rsync remote-update protocol**, which allows `rsync` to quickly detect the differences between two directories and per­form the minimum amount of copying required to bring them into sync...

```
rsync OPTIONS SOURCE DESTINATION
```

where `SOURCE` and `DESTINATION` are one of the following:

- Local file or directory.

- Remote file or directory in the form of `[USER@]HOST:PATH`.

- Remote `rsync` server specified with a URL of `rsync://[USER@]HOST[:PORT]/PATH`.

> Either the source or the destination must be a local file. Remote-to-remote copying is not supported.

Three useful options are `-a` for archiving (causes recursion an preservation of file attributes), `-v` (verbose output) and `--delete` (delete files that may have existed at the destination and no longer existed at the source).

If we append a trailing `/` to the source directory name, `rsyinc` will copy only the contents of the source directory and note the directory itself.

```bash
rsync source/ destination
```

### Using `rsync` over a network

The first way to do it is with another system that has `rsync` installed, along with a remote shell program such as `ssh`.

```bash
sudo rsync -av --delete --rsh=ssh /etc /home /usr/local remote-sys:/backup
```

The second way is by using an `rsync` server. `rsync` can be configured to run as a daemon and listen to incoming re­ quests for synchronization...

```bash
rsync -av delete rsync://archive.linux.duke.edu/ fedora/linux/development/rawhide/Everything/x86_64/os/ fedora-devel 
```
