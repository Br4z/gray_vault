# Packages

Just as on Windows we have installable executables, Linux relies on packages that are managed through software repositories.

## What is a package?

A package in Linux consists of a collection of files that allow the installation of a program and its related tasks, such as dependency scanning, pre-installation, etc.

## What is a package manager?

They are utilities present in each distribution that automate the process, list other packages available in the repository, and display information about their dependencies.

Regardless of the specific package manager, the software maintenance process on a Linux-based computer is generally the same. You launch a software catalog that reads from one or more repositories (software files optimized for a given platform).

## What is a repository?

It is a collection of software that contains precompiled packages, installation scripts and metadata necessary for the administration and distribution of software on an operating system.

## Package management in Debian-based distributions?

> [Linux genealogy tree](https://distrowatch.com/images/other/distro-family-tree.png).

### `apt`

- Synchronization: synchronize your local copy of the available packages and their versions with that of the repositories.

    > The synchronization command should be executed before any other command involving changes to packages, such as upgrading.

    `sudo apt update`

- Updating: `sudo apt upgrade -y`.

- Installing a package: `sudo apt install <package name>`.

    > This command can be used with the `-y` to avoid confirmation.

- Uninstalling a package.

    - Without removing its configuration files: `sudo apt remove <installed package name>`.

    - Removing its configuration files: `sudo apt purge <installed package name>`.

    - Removing packages trash: `sudo apt autoremove`

### `dpgk`

- Installing a package: `dpkg -i <deb package>`.

- Uninstalling a package.

    - Without removing its configuration files: `dpkg -r <installed package name>`.

    - Removing its configuration files: `dpkg -P <installed package name>`.

        > You can also write `--purge`.

- List installed packages: `dpkg -l`.

## Alternatives to packages

The alternatives to traditional packages are containerized applications. On the one hand, the traditional packages available through the package managers are managed by them, while these packages pack the dependencies together with the application in the same package. This ensures that there will be no conflicts of dependencies between different applications.

> The downside of having the dependencies in the application package is that the application size is generally larger.

### Snap

Is a packaging format developed by Canonical, the company behind the Ubuntu Linux distribution.

### AppImage

AppImage is a packaging format that packs the whole application, including its dependencies, into a single file. This means there’s no installation of the AppImage package in the traditional sense. In other words, the AppImage package on Linux is akin to the portable `.exe` on Windows.
