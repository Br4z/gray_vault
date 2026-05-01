---
reviewed_on: "2025-07-02"
---

# Package management

The most important determinant of distribution quality is the **packaging
system** and the vitality of the distribution's support community...

## Packaging systems

...Most distributions fall into one of two camps of packaging technologies: the Debian `.deb` camp and the Red Hat `.rpm` camp...

## How a package system works

...Virtually all software for a Linux system will be found on the Internet. Most of it will be provided by the distribution vendor in the form of **package files**, and the rest will be available in source code form that can be installed manually.

### Package files

A package file is a compressed collection of files that comprise the software package. A package may consist of numerous programs and data files that support the programs...

### Dependencies

Programs are seldom "stand alone"; rather, they rely on the presence of other software components to get their work done. Modern package management systems all provide some method of **dependency resolution** to ensure that when a package is installed, all of its dependencies are installed, too.

### High and low level package tools

- Low-level tools: that handle tasks such as installing and removing
package files.

- High-level tools that perform metadata searching and dependency resolution.

## Common package management tasks

In the discussion that follows, the term `package_name` refers to the actual name of a package rather than the term `package_file`, which is the name of the file that contains the package.

- Finding a package in a repository.

- Installing a package from a repository.

- Installing a package from a package file.

- Removing a package.

- Updating packages from a repository.

- Upgrading a package from a package file.

- Listing installed packages.

- Determining whether a package is installed.

- Displaying information about an installed package.

- Finding which package installed a file.

### Distribution-independent package formats

Over the last several years distribution vendors have come out with universal package formats that are not tied to a particular Linux distribution. These include Snaps (developed and promoted by Canonical), Flatpaks (pioneered by Red Hat, but now widely available) and AppImages. Though they each work a little differ­ently, their goal is to have an application and all of its dependencies bundled to­gether and installed in a single piece.

There are some benefits to this packing approach:

- Reducing the effort needed to distribute an application.

- Some of these formats also run the application in a containerized sandbox to provide additional security.

But there are some serious downsides too.

- Large size.

- Distribution integration.
