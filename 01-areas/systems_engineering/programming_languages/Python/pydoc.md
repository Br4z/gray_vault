---
reviewed_on: "2025-01-10"
sources:
  - author: NA
    url: https://docs.python.org/3/library/pydoc.html
    language: English
---

# `pydoc`

This module automatically generates documentation from Python modules. The documentation can be presented as pages of text on the console, served to a web browser, or saved to HTML files.

```bash
python -m pydoc [OPTIONS]... ARGUMENT
```

> `ARGUMENT` can be the name of a function, module, or package, or a dotted reference to a class, method, or function within a module or module in a package.

- `-w`: will cause HTML documentation to be written out to a file in the current directory, instead of displaying text on the console.

- `-k`: search the synopsis lines of all available modules for the keyword given as the argument.

	> The synopsis line of a module is the first line of its documentation string.

- `-n <hostname>`: will start the server listening at the given hostname.

	> By default, the hostname is "localhost".

- `-b`: will start the server and additionally open a web browser to a module index page.

For modules, classes, functions and methods, the displayed documentation is derived from the docstring of the object and recursively from its documentable members.
