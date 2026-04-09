---
reviewed_on: "2025-07-02"
---

# Networking

- `ping`: sen an `ICMP ECHO_REQUEST` to network hosts.

- `traceroute`: print the route packets trace to a network host.

- `ip`: show / manipulate routing, devices, policy routing and tunnels.

- `netstat`: print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.

- `ftp`: internet file transfer program.

- `curl`: transfer a URL.

- `wget`: non-interactive network downloader.

- `ssh`: `OpenSSH` SHH client (remote login program).

## Examining and monitoring a network

### `ping`

It sends a special network packet called an ICMP ECHO_REQUEST to a specified host. Most network devices receiving this packet will reply to it, allowing the network connection to be verified.

> It is possible to configure most network devices (including Linux hosts) to ignore these packets. This is usually done for security reasons, to partially obscure a host from a potential attacker. It is also common for firewalls to be configured to block ICMP traffic.

### `traceroute`

It lists all the "hops" network traffic takes to get from the local system to a specified host.

### `ip`

It is a multi-purpose network configuration tool that makes use of the full range of networking features available in modern Linux kernels.

- `ip address show` or `ip a`: examine system's network interfaces.

- `ip route show` or `ip r`: examine routing table.

`ip` is a complicated program with many options and commands. The command syntax consists of:

```
ip [-OPTIONS] object [COMMAND]
```

## Transporting files over a network

### `ftp`

FTP (in its original form) is not secure because it sends account names and passwords in **cleartext**. This means they are not encrypted and anyone sniffing the network can see them. Because of this, almost all FTP done over the Internet is done by anonymous FTP servers. An anonymous server allows anyone to log in using the login name "anonymous" and a meaningless password.

### `lftp` a better `ftp`

It works much like the traditional ftp program but has many additional convenience features including multiple-protocol support (including HTTP), automatic retry on failed downloads, background processes, tab completion of path names, and many more.

### `curl` transfer a URL

```
curl [OPTION]... URL [URL]...
```

We specify a URL and `curl` downloads the first page of the URL and outputs it to standard output. Multiple URLs can be specified.

`curl` supports most network protocols including HTTP, HTTPS, FTP, IMAP, POP3, SFTP, SMB, and others.

|                  option                   | description                                                             |
|:-----------------------------------------:|:----------------------------------------------------------------------- |
|       `-o`, `--ouput` `<filename>`        | send output to the specified file  rather than standard output.         |
|           `-O`, `--remote-name`           | like `-o` but name local file the same  as the name of the remote file. |
|             `-s`, `--silent`              | suppress the progress meter and  error messages.                        |
| `-u`, `--proxy-user`  `<user>:<password>` | specify a user name/password  combination.                              |
|             `-v`, `--verbose`             | display verbose messages as it  executes.                               |

### `wget` non-interactive network downloader

It is useful for downloading content from both web and FTP sites. Single files, multiple files, and even entire sites can be downloaded.

```
wget [OPTION]... URL [URL]...
```

## Secure communication with remote hosts

### `ssh`

SSH solves the two basic problems of secure communication with a remote host.

1. It authenticates that the remote host is who it says it is (thus preventing so-called man-in-the-middle attacks).

2. It encrypts all of the communications between the local and remote hosts.

SSH consists of two parts. An SSH server runs on the remote host, listening for incoming connections, by default, on port 22, while an SSH client is used on the local system to communicate with the remote server.

#### Tunneling with SSH

...On a system still running an X server (rather than a modern system using Wayland), it is possible to launch and run an X client program (a graphical application) on a remote system and have its display appear on the local system.

```bash
$ ssh -X remote-sys
me@remote-sys's password: Last login: Mon Sep 08 13:23:11 2016
$ xload
```

### `scp` and `sftp`

The OpenSSH package also includes two programs that can make use of an SSH-encrypted tunnel to copy files across the network. The first, `scp` (secure copy) is used much like the familiar `cp` to copy files. The most notable difference is that the source or destination pathnames may be preceded with the name of a remote host, followed by a colon character...

The second SSH file-copying program is `sftp` which, as its name implies, is a secure replacement for `ftp`. `sftp` works much like the original `ftp` that we used earlier; however, instead of transmitting everything in cleartext, it uses an SSH encrypted tunnel. sftp has an important advantage over conventional `ftp` in that it does not require an FTP server to be running on the remote host. It requires only the SSH server. This means that any remote machine that can connect with the SSH client can also be used as an FTP-like server.
