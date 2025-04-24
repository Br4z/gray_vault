---
reviewed_on: "2025-01-10"
sources:
  - author: Daniel Marcial
    url: https://www.freecodecamp.org/news/build-your-first-python-package
    language: English
  - author: Geeks for Geeks
    url: https://www.geeksforgeeks.org/python-modules
    language: English
---

# Module

It is a file containing definitions and statements. A module can define functions, classes, and variables. It can also include runnable code.

## Importing a module

We can import the functions and classes defined in a module to another module using `import` in some other source file.

## Locating modules

Whenever a module is imported, the interpreter looks for several locations. First, it will check for the **built-in** module; if it is not found, then it looks for a list of directories defined in `sys.path`. The interpreter searches for the module in the following manner:

1. Current directory.

2. Each directory in `PYTHONPATH`.

	> The "PYTHONPATH" is an environment variable consisting of a list of directories.

3. The list of directories is configured at the time Python is installed.

## Module creation

In the `setup.py` we will store information about the package, namely the package name, its version, platform dependencies and so on. To build the distributable package, we will use the `python <setup file> sdist bdist_wheel` command.

- `sdist`: creates a source distribution.

- `bdist_wheel`: generates a wheel distribution, commonly used for PyPi uploads.

> To install `setuptool` we can do it through pip, using the command `pip install setuptools`.

> The `bdist_wheel` (provided by `wheel`) argument is only needed if we want to upload the package to PyPi.
