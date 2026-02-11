---
reviewed_on: "2025-07-25"
---

# Compiling programs

So why compile software?

1. Availability: despite the number of precompiled programs in distribution reposi­tories, some distributions may not include all the desired applications. In this case, the only way to get the desired program is to compile it from source.

2. Timeliness: while some distributions specialize in cutting-edge versions of pro­grams, many do not. This means that to have the latest version of a program, com­piling is necessary.

- `make`: utility to maintain programs.

## What is compiling?

Compiling is the process of translating **source code** (the human-readable description of a program written by a programmer) into the native language of the computer's processor.

The computer's processor (or CPU) works at an elemental level, executing programs in what is called **machine language**...

This problem was overcome by the advent of **assembly language**, which replace the numeric codes with (slightly) easier to use character **mnemonics** such as `CPY` (for copy) and `MOV` (for move). Programs written in assembly language are processed into machine language by a program called **assembler**...

We next come to what are called **high-level programming languages**...

Programs written in high-level programming languages are converted into machine language by processing them with another program, called **compiler**. Some compilers translate high-level instructions into assembly language and then use an assembler to perform the final stage of translation into machine language.

A process often used in conjunction with compiling is called **linking**...Providing support for common tasks is accomplished by what are called **libraries**. They contain multiple **routines**, each performing some common task that multiple programs can share...A program called **linker** is used to from the connections between the output of the compiler and the libraries that the compiled program requires. The final result of this process is the **executable program file**, ready for use.

### Are all programs compiled?

...there are programs such as shell scripts that do not require compiling. They are executed directly. These are written in what are known as **scripting** or **interpreted** languages.

Scripted languages are executed by a special program called an **interpreter**. An interpreter inputs the program file and reads and executes each instruction contained within it. In general, interpreted programs execute much more slowly than compiled programs...

The interpreted languages are so popular because the results are "fast enough", but the real advantage is that it is generally faster and easier to develop interpreted programs than compiled programs (because of the absence of the compile stage in the development cycle).

## Compiling a C program

### Obtaining the source code

source code is usually supplied in the form of a compressed tar file, sometimes called a **tarball**, this file contains the **source tree**, or hierarchy of directories and files that comprise the source code.

### Building the program

Most programs build with a simple, two-command sequence.

```bash
./configure
make
```

`configure` is a shell script that is supplied with the source tree. Its job is to analyze the **build environment**. Most source code is designed to be portable. That is, it is designed to build on more than one kind of Unix-like system. But to do that, the source code may need to undergo slight adjustments during the build to accommodate differ­ences between systems. `configure` also checks to see that necessary external tools and components are installed.

`make` takes as input a **makefile** (which is normally named "Makefile") which describes the relationships and dependencies among the components that comprise the finished program.

`make` rather than simple building everything again, it only builds what needs building.

`make` keeps targets up-to-date. It insist that targets be newer than their dependencies (based on their timestamps) and ensures that everything that needs building based on the updated code is built.

The ability of `make` to intelligently build only what needs building is a great benefit to programmers. While the time savings may not be apparent with our small project, it is very significant with larger projects...

### Installing the program

Well-packaged source code will often include a special `make` target called "install". This target will install the final product in a system directory for use. Usually, this directory is `/usr/local/bin`, the traditional location for locally built software...

```bash
sudo make install
```
