---
reviewed_on: "2025-08-08"
---

# Building a container from scratch

1. Download and extract a Linux system files: `wget https://github.com/ericchiang/containers-from-scratch/releases/download/v0.1.0/rootfs.tar.gz && sudo tar -zxf rootfs.tar.gz`.

	- `wget`: command-line utility to download files from the web.

	- `tar`: create, maintain, modify, and extract files from a tar archive file.

		- `-z`: filter the archive through gzip (decompress a `.gz` file).

		- `-x`: extract the files from the archive.

		- `-f`: use the archive file specified (`rootfs.tar.gz`).

2. Create a PID namespace for the shell (isolate the process inside the container).

	```bash
	sudo unshare -p -f --mount-proc=$PWD/rootfs/proc \
		chroot rootfs /bin/bash
	```

	- `unshare`: run a program with some namespaces unshared from the parent.

		- `-p`: unshare the PID namespace.

		- `-f`: fork before executing the command.

		- `--mount-proc`: mount the proc filesystem at the specified location.

	- `chroot`: change the root directory.

3. Share a PID namespace with the shell.

	```bash
	sudo nsenter --pid=/proc/<shell from the step 2 PID>/ns/pid \
		unshare -f --mount-proc=$PWD/rootfs/proc \
		chroot rootfs /bin/bash
	```

	```bash
	sudo nsenter --pid=/proc/2334/ns/pid \
		unshare -f --mount-proc=$PWD/rootfs/proc \
		chroot rootfs /bin/bash
	```

	- `nsenter`: run a program with the namespaces of other processes.

		- `--pid`: enter the PID namespace of the specified process.

4. Share file between the host and the container.

	1. `sudo mkdir readonlyfiles`.

	2. `sudo mkdir -p rootfs/var/readonlyfiles`.

	3. `sudo mount --bind -o ro $PWD/readonlyfiles $PWD/rootfs/var/readonlyfiles`.

		- `mount`: mount filesystem.

			- `--bind`: remount a subtree somewhere else (so that its contents are available in both places).

			- `-o`: use the specified mount options.

		> `sudo umount $PWD/rootfs/var/readonlyfiles`.

5. Limit the resources designated for the container.

	1. `sudo su`.

	2. `mkdir -p /sys/fs/cgroup/demo`.

	3. `echo "100000000" > /sys/fs/cgroup/demo/memory.max`.

	4. `echo "0" > /sys/fs/cgroup/demo/memory.swap.max`.

	5. `echo <container bash PID> > /sys/fs/cgroup/demo/cgroup.procs`.

	To delete this cgroup you can run the command `sudo rmdir /sys/fs/cgroup/demo`.
