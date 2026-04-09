---
reviewed_on: "2025-07-02"
---

# Storage media

- `mount`: mount a file system.

- `umount`: unmount a file system.

- `parted`: partition manipulation program.

- `mkfs`: create a file system.

- `fsck`: check and repair a file system.

- `dd`: convert and copy a file.

- `sha256sum`: compute and check SHA256 checksums.

## Mounting and unmounting storage devices

The first step in managing a storage device is attaching the device to the file system tree. This process, called **mounting**, allows the device to interact with the operating system. This contrasts with other operating systems such as Windows that maintain separate file system trees for each device.

A file named `/etc/fstab` (short for "file system table") lists the devices (typically hard disk partitions) that are to be mounted at boot time.

| field |     contents     | description                                                                              |
|:-----:|:----------------:|:---------------------------------------------------------------------------------------- |
|   1   |      device      | identifies what the file system to mount                                                 |
|   2   |   mount point    | the directory where the device is attached to the file system tree.                      |
|   3   | file system type | Linux allows many file system types to be mounted.                                       |
|   4   |     options      |                                                                                          |
|   5   |    frequency     | a single number that specifies if and when a file system is to be backed up with `dump`. |
|   6   |      order       | a single number that specifies in what order file systems should be checked with `fsck`. |

### Viewing a list of mounted file systems

Entering `mount` without arguments will display a list of the file systems currently mounted.

The formatting of the listing is as follows `<device> on <mount point> type <filesystem type> (<options>)`.

---

After inserting a 4 GB flash drive in a Ubuntu 22.04 system.

```bash
mount | grep /dev/sd

# dev/sda2 on / type ext4 (rw,relatime,errors=remount-ro)
# /dev/sda1 on /boot/efi type vfat  (rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso88591,shortname=mixed,errors=remount-ro)
# /dev/sdb1 on /home type ext4 (rw,relatime)
# /dev/sdc on /media/me/C911-C314 type vfat (rw,nosuid,nodev,relatime,  uid=1000,gid=1000,fmask=0022,dmask=0022,codepage=437,iocharset=iso885 9-1,shortname=mixed,showexec,utf8,flush,errors=remount-ro)
```

The disk has been mounted on `/media/me/C911-C314`, path that can be change with the following commands:

```bash
su -
umount /dev/sdc # Unmounting the device
mkdir /mnt/flash
mount -t vfat /dev/sdc /mnt/flash
```

Now we can examine the contents of the USB via the new mount point.

> If you want to unmount the device, make sure you are not using it first.

#### Why unmounting is important

This idea of buffering is used extensively in computers to make them faster. Do not let the need to occasionally read or write data to or from slow devices impede the speed of the system. Operating systems store data that has been read from and is to be written to storage devices in memory for as long as possible before actually having to interact with the slower device. On a Linux system, for example, you will notice that the system seems to fill up memory the longer it is used. This does not mean Linux is "using" all the memory; it means that Linux is taking advantage of all the available memory to do as much buffering as it can.

Unmounting a device entails writing all the remaining data to the device so that it can be safely removed. If the device is removed without unmounting it first, the possibility exists that not all the data destined for the device has been transferred. In some cases, this data may include vital directory updates, which will lead to **file system corruption**, one of the worst things that can happen on a computer.

### Determining device names

|   patter   | device                                                                                      |
|:----------:|:------------------------------------------------------------------------------------------- |
| `/dev/fd*` | Floppy disk drives.                                                                         |
| `/dev/hd*` | IDE (PATA) disks on older systems.                                                          |
| `/dev/lp*` | printers.                                                                                   |
| `/dev/sd*` | SCSI disks. On modern Linux systems, the kernel treats all disk-like devices as this type.  |
| `/dev/sr*` | optical drives (CD/DVD readers and burners).                                                |

Using `tail -f` to monitor the `/var/log/messages` or `/var/log/syslog` file, we can know the name of a removable device when it is attached.

On modern systemd-based systems use this command to follow the systemd journal:

```bash
sudo journalctl -f
```

There is a another way we can determine a device name...We can use `lsblk` . This command lists all of the block devices attached to the system regardless if they are mounted or not.

## Creating new file systems

### Manipulating partitions with `parted`

`parted` is one of a host of programs (both command line and graphical) that allow us to interact directly with disk-like devices (such as hard disk drives and flash drives) at a very low level.

### Creating a new file system with `mkfs`

`mkfs` (short for "make file system") can create file systems in a variety of formats.

## Testing and repairing file systems

...Each time the system boots, it routinely checks the integrity of the file systems before mounting them. This is done by the `fsck` (short for "file system check"). The last number in each `fstab` entry specifies the order in which the devices are to be checked...

In addition to checking the integrity of file systems, `fsck` can also repair corrupt file systems with varying degrees of success, depending on the amount of damage. On Unix-like file systems, recovered portions of files are placed in the `lost+found` directory, located in the root of each file system.

## Moving data directly to and from devices

While we usually think of data on our computers as being organized into files, it is also possible to think of the data in "raw" form. If we look at a disk
drive, for example, we see that it consists of a large number of "blocks" of data that the operating system sees as directories and files...

The `dd` copies blocks of data from one place to another.

```bash
dd if=input_file of=output_file [bs=block_size [count=blocks]]
```

> `dd` is very powerful. Though its name derives from "data definition", it is sometimes called "destroy disk" because users often mistype either the `if` or `of`...

## Writing CD-ROOM images

### Mounting an ISO image directly

We can mount an ISO image while it is still on our hard disk and treat it as though it were already on optical media. By adding the `-o loop` option to `mount`.

## Verifying data

`sha256sum` is a tool we can use to verify the integrity of file we download.
