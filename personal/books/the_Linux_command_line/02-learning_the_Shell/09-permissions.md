---
reviewed_on: "2025-06-30"
---

# Permissions

- `id`: display user identity.

- `chmod`: change a file's mode.

- `umask`: set the default file permissions.

- `su`: run a shell as another user.

- `sudo`: execute a command as another user.

- `chown`: change a file's owner.

- `chgrp`: change a file's group ownership.

- `addgroup`: add a user or a group to the system.

- `usermod`: modify a user account.

- `passwd`: change a user's password.

## Owners, group members, and everybody else

In the Unix security model, a user may **own** files and directories. When a user **owns** a file or directory, the user has control over its access. Users can, in turn, belong to a group consisting of one or more users who are given access to files and directories by their owners. In addition to granting access to a group, an owner may also grant some set of access rights to everybody, which in Unix terms is referred to as the **world**. To find out information about your identity, use the `id` command.

```bash
id

# uid=500(me) gid=500(me) groups=500(me)
```

...When user accounts are created, users are assigned a number called a **user ID** (**uid**), which is then, for the sake of the humans, mapped to a username. The user is assigned a **primary group ID** (**gid**) and may belong to additional groups...

...User accounts are defined in `/etc/passwd`, and groups are defined in `/etc/group`. When user accounts and groups are created, these files are modified along with `/etc/shadow`, which holds information about the user's password. For each user account, the `/etc/passwd` file defines the:

- user (login) name.

- uid.

- gid.

- account's real name.

- home directory.

- login shell.

## Reading, writing, and executing

Access rights to files and directories are defined in terms of read access, write access, and execution access...

```bash
> foo.txt
ls -l foo.txt

# -rw-rw-r-- 1 me me 0 2018-03-06 14:52 foo.txt
```

The first 10 characters of the listing are the **file attributes**. The first of these characters is the **file type**...

| attribute | file type                  |
|:---------:|:-------------------------- |
|    `-`    | regular file               |
|    `d`    | directory                  |
|    `l`    | symbolic link              |
|    `c`    | **character special file** |
|    `b`    | **block special file**     |

The remaining 9 characters of the file attributes, called the **file mode**, represent the read, write, and execute permissions for the file's owner, the file's group owner, and everybody else.

| attribute | file                                                                                                                                                                                             | directories                                                                                                                |
|:---------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |:-------------------------------------------------------------------------------------------------------------------------- |
|    `r`    | allows a file to be opened and read.                                                                                                                                                             | allows a directory's contents to be listed, but no file information is available unless the execute attribute is also set. |
|    `w`    | allows a file to be written to or truncated; however, this attribute does not allow files to be renamed or deleted. The ability to delete or rename files is determined by directory attributes. | allows files within a directory to be created, deleted, and renamed if the execute attribute is also set.                  |
|    `x`    | allows a file to be treated as a program and executed.                                                                                                                                           | allows a directory to be entered.                                                                                          |

### `chmod` change file mode

It is used to change the mode (permissions) of a file or directory, it supports two distinct ways of specifying mode changes: octal number representation, or symbolic representation.

> For obvious reasons, only the file's owner or the superuser can do this.

| octal | binary | file mode |
|:-----:|:------:|:---------:|
|   0   |  000   |   `---`   |
|   1   |  001   |   `--x`   |
|   2   |  010   |   `-w-`   |
|   3   |  011   |   `-wx`   |
|   4   |  100   |   `r--`   |
|   5   |  101   |   `r-x`   |
|   6   |  110   |   `rw-`   |
|   7   |  111   |   `rwx`   |

By using three octal digits, we can set the file mode for the owner, group owner, and world.

```bash
chmod 600 foo.txt
ls -l foo.txt

# -rw------- 1 me me 0 2016-03-06 14:52 foo.txt
```

`chmod` also supports a symbolic notation for specifying file modes. Symbolic notation is divided into three parts:

- Who the change will affect.

- Which operation will be performed.

- What permission will be set.

| symbol | meaning                                                      |
|:------:|:------------------------------------------------------------ |
|  `u`   | short for "user" but means the file or directory owner.      |
|  `g`   | group owner.                                                 |
|  `o`   | short for "others" but means world.                          |
|  `a`   | short for "all". This is a combination of `u`, `g`, and `o`. |

If no character is specified, "all" will be assumed. The operation may be `a+` indicating that a permission is to be added, `a-` indicating that a permission is to be taken away, or `a=` indicating that only the specified permissions are to be applied and that all others are to be removed.

Permissions are specified with the "r", "w", and "x" characters...

```bash
chmod u+x,go=rw file
```

Symbolic notation does offer the advantage of allowing you to set a single attribute without disturbing any of the others (in octal you must specify all permissions).

An option of caution is `--recursive`: it acts on both files and directories, so it is not as useful as we would hope since we rarely want files and directories to have the same permissions.

### `umask` set default permissions

It controls the default permissions given to a file when it is created. It uses octal notation to express a **mask** of bits to be removed from a file's mode attributes.

```bash
umask

# 0002 rw- for owner, r-- for group and r-- for others

# ----------------------------------------------------------------------- #

> foo.txt
ls -l foo.txt

# -rw-rw-r-- 1 me    me   0 2018-03-06 14:53 foo.txt
```

|    description     |    permissions    |
|:------------------:|:-----------------:|
| original file mode | `--- rw- rw- rw-` |
|        mask        | `000 000 000 010` |
|       result       | `--- rw- rw- r--` |

A AND operation is performed between the "original file mode" and NOT "mask" (wildcard).

#### Some special permissions

...in addition to read, write, and execute permissions, there are some other, less used, permissions settings.

- setuid bit (octal 4000): when applied to an executable file, it changes the **effective user ID** from that of the real user (the user actually running the program) to that of the program's owner.

	This is useful when the executable file needs access to files or directories (or both) that a normal user would normally be prohibited from accessing.

	Because this raises security concerns, the number of setuid programs must be held to an absolute minimum.

- setgid bit (octal 2000): changes the **effective group ID** from the real group ID of the real user to that of the file owner.

	If the setgid bit is set on a directory, newly created files in the directory will be given the group ownership of the directory rather of the group ownership of the file's creator.

	This is useful in a shared directory when members of a common group need access to all the files in the directory, regardless of the file owner's primary group.

- sticky bit (octal 1000): this is a holdover from ancient Unix, where it was possible to mark an executable file as "not swappable".

	Linux ignores the sticky bit, but if applied to a directory, it prevents users from deleting or renaming files unless the user is either the owner of the directory, the owner of the file, or the superuser.

	> This is often used to control access to a shared directory, such as `/tmp`.

```bash
chmod u+s <program>   # Assigning setuid to a file (-rwsr-xr-x)
chmod g+s <directory> # Assigning setgid to a directory (drwxrwsr-x)
chmod +t <directory>  # Assigning the sticky bit to a directory (drwxrwxrwt)
```

## Changing identities

...There are three ways to take on an alternate identity.

- Log out and log back in as the alternate user.

- Use `su`.

- Use `sudo`.

### `su` run a shell with substitute user and groups IDs

It is used to start a shell as another user.

```
su [-[l]] [USER]
```

If the `-l` option is included, the resulting shell session is a **login shell** for the specified user. This means the user's environment is loaded, and the working directory is changed to the user's home directory...If the user is not specified, the superuser is assumed.

It is also possible to execute a single command rather than starting a new interactive command...

```bash
# su -c '<comman>' <user?>

# ----------------------------------------------------------------------- #

su -c 'ls -l /root/*'

# Password:
# -rw------- 1 root root     754 2007-08-11 03:19 /root/anaconda-ks.cfg
# /root/Mail:
# total 0
```

Using this form, a single command line is passed to the new shell for execution. It is important to enclose the command in quotes, as we do not want expansion to occur in our shell, but rather in the new shell.

### `sudo` execute a command as another user

...The administrator can configure sudo to allow an ordinary user to execute commands as a different user in a controlled way. The use of sudo does not require access to the superuser's password...authenticating using `sudo`, requires the user's own password.

...One important difference between `su` and `sudo` is that `sudo` does not start a new shell, nor does it load another user's environment. This means that commands do not need to be quoted any differently than they would be without using `sudo`...

```bash
sudo -i # Start an interactive superuser session (much like su -)

# ----------------------------------------------------------------------- #

sudo -l # See what privileges are granted by sudo (in the current user)

# User brandon may run the following commands on gray59:
#     (ALL : ALL) ALL
```

### `chown` change file owner and group


It is used to change the owner and group owner of a file or directory.

```
chown [OWNER][:[GROUP]] FILE
```

## Exercising our privileges

Let's imagine that we have two users named "bill" and "karen." They both have music collections and want to set up a shared directory, where they will each store their music files...User bill has access to superuser privileges via `sudo`.

```bash
sudo groupadd music

# ----------------------------------------------------------------------- #

sudo usermod -aG music bill
sudo usermod -aG music karen

# ----------------------------------------------------------------------- #

sudo mkdir /usr/local/share/Music

# ----------------------------------------------------------------------- #

ls -ld /usr/local/share/Music

# drwxr-xr-x 2 root root 4096 2018-03-21 18:05 /usr/local/share/Music

# ----------------------------------------------------------------------- #

sudo chown :music /usr/local/share/Music
sudo chmod 775 /usr/local/share/Music
ls -ld /usr/local/share/Music

# drwxrwxr-x 2 root music 4096 2018-03-21 18:05 /usr/local/share/Music
```

To this point, the directory has the right permissions, but we still have a problem (really two). With the current permissions, files and directories created within the Music directory will have the normal permissions of the users bill and karen.

```bash
> /usr/local/share/Music/test_file
ls -l /usr/local/share/Music

# -rw-r--r-- 1 bill   bill   0 2018-03-24 20:03 test_file
```

- The default umask on this system is `0022`, which prevents group members from writing files belonging to other members of the group.

	> This would not be a problem if the shared directory contained only files, but because members of the group will need the ability to create files and directories inside directories created by other members it is.

- Each file and directory created by one member will be set to the primary group of the user rather than the group music.

```bash
sudo chmod g+s /usr/local/share/Music
ls -ld /usr/local/share/Music

# drwxrwsr-x 2 root music 4096 2018-03-24 20:03 /usr/local/share/Music

# ----------------------------------------------------------------------- #

umask 0002
> /usr/local/share/Music/test_file # After have been removed the previous one
mkdir /usr/local/share/Music/test_dir
ls -l /usr/local/share/Music

# drwxrwsr-x 2 bill   music 4096 2018-03-24 20:24 test_dir
# -rw-rw-r-- 1 bill   music    0 2018-03-24 20:22 test_file
```

The one remaining issue is umask. The necessary setting lasts only until the end of session and must be reset.

## Changing your password

To set or change a password, `passwd` is used.

```
passwd [USER]
```

`passwd`, `addgroup`, and `usermod` are part of a suite of commands in the shadow-utils package.

|  command   | description                                                    |
|:----------:|:-------------------------------------------------------------- |
| `lastlog`  | reports the most recent login of all users or of a given user. |
| `useradd`  | create a new user or update default new user information.      |
| `userdel`  | delete a user account and related files.                       |
| `usermod`  | modify a user account.                                         |
| `groupadd` | create a new group.                                            |
| `groupdel` | delete a group.                                                |
| `groupmod` | modify a group on the system.                                  |
