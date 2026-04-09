---
reviewed_on: "2025-08-04"
---

# Troubleshooting

## Syntactic errors

**Syntactic** errors involve mistyping some element
of shell syntax. The shell will stop executing a script when it encounters this type of error.

- Missing quotes.

- Missing or unexpected tokens.

- Unanticipated expansions: add quotes to your variables unless word splitting is needed.

## Logical errors

Unlike syntactic errors, **logical** errors do not prevent a script from running. The script will run, but it will not produce the desired result.

- Incorrect conditional expressions: it is easy to incorrectly code an `if`/`then`/`else` and have the wrong logic carried out. Sometimes the logic will be reversed, or it will be incomplete.

- "Off by one" errors: when coding loops that employ counters, it is possible to overlook that the loop may require that the counting start with zero, rather than one, for the count to conclude at the correct point. These kinds of errors result in either a loop “going off the end” by counting too far or a loop missing the last it­eration by terminating one iteration too soon.

- Unanticipated situations: most logic errors result from a program encountering data or situations that were unforeseen by the programmer.

## Defensive programming

It is important to verify assumptions when programming. This means a careful evaluation of the exit status of programs and commands that are used by a script.

One thing we notice about `bash` is that when a script executes and a command fails (not including syntax error in the script itself). the script will happily continue to the next command. Often this is undesirable and the POSIX standard and subsequently, `bash` attempts to address this issue.

Place the following commands near the beginning of the script:

- `set -e`: causes a script to terminate if any command (with some necessary exceptions) returns a non-zero exit status.

- `set -u`: causes a script to terminate if there is an uninitialized variable.

- `set -o pipefail`: causes a script to terminate if the final element in a pipeline fails.

Using this features is not recommended. It is better to design proper error handling and not rely on `set -e` as a substitute for good coding practices.

## ShellCheck is your friend

`shellcheck` performs analysis of shell scripts and will detect many kinds of faults and poor scripting practices.

```
shellcheck SCRIPT
```

It will automatically detect which shell dialect to use base on the shebang.

## Watch out for filenames

Unix (and Unix-like operating systems) is extremely permissive about filenames. In fact, there are only two characters that cannot be included in a filename. `/` used to separate elements of a pathname, and the null character (a zero byte), which is used internally to mark the end of strings.

Of particular concern are leading hyphens. They can be interpreted as command options when invoked as an argument.

```
<command> *
```

Using `./` will prevent a filename starting with a hyphen from being interpreted as a command option. As a general rule, always precede wildcards (such as `*` and `?`) with `./` to prevent misinterpretation by commands.

### Portable filenames

To ensure that a filename is portable between multiple platforms (i.e., different types of computers and operating systems), care must be taken to limit which characters are included in a filename. There is a standard called the POSIX Porta­ble Filename Character Set that can be used to maximize the chances that a file­name will work across different systems. The standard is pretty simple. The only characters allowed are the uppercase letters A-Z, the lowercase letters a-z, the nu­merals 0-9, period (`.`), hyphen (`-`), and underscore (`_`). The standard further sug­gests that filenames should not begin with a hyphen.

## Testing

Testing is an important step in every kind of software development, including scripts. There is a saying in the open-source world, "release early, release often," that reflects this fact. By releasing early and often, software gets more exposure to use and testing. Experi­ence has shown that bugs are much easier to find, and much less expensive to fix, if they are found early in the development cycle.

## Debugging

### Tracing

`bash` provides a method of tracing, implemented by `-x` and `set`.

```bash
#!/bin/bash -x
```

With tracing enabled, we see the commands performed with expansions applied. The leading plus signs indicate the display of the trace to distinguish them from lines of regular output. The plus sign is the default character for trace input. It is contained in `PS4` (prompt string 4) shell variable.

To perform a trace on a selected portion of a script, rather than the entire script, we can use `set`. With `-x` it activates tracing and with `+x` it deactivates tracing. This technique can be use to examine multiple portions of a troublesome script.
