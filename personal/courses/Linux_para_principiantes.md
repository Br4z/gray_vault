# Linux para principiantes

## Comandos básicos

- `touch [OPTION]... FILE...`: change file timestamps.

	- `-d` or `--date=STRING`: parse `STRING` and use it instead of the current time.

	> A `FILE` that does not exist is created empty, unless`-c` or `-h` is supplied.

## ¿Que Son exactamente los comandos?

- `man [OPTION] [COMMAND]` (manual): allows users to access detailed information about various commands, utilities, and system calls.

	Manual pages are organized into different sections, each serving a specific purpose. The primary sections include:

	1. "NAME": provides the name and a brief description of the command.

	2. "SYNOPSIS": describes the syntax of the command.

	3. "DESCRIPTION": offers a detailed explanation of the command's functionality.

	4. "OPTIONS": lists the available command-line options and their descriptions.

	5. "EXAMPLES": provides practical examples demonstrating command usage.

	6. "SEE ALSO": suggests related commands or resources.

	- `-f` or `--whatis`: Approximately equivalent to `whatis`. Display a short description from the manual page, if it is available.

	- `-K` or `--global-apropos`: search for text in all manual pages.

		> It can be accompanied by `--regex` for regular expression searches.

	- `-k` or `--apropos`: approximately equivalent to `apropos`. Search the short manual page descriptions for keywords and display any matches.

	| section | description |
	|:-------:|:--------------------------------------------------------:|
	| 1    | User commands |
	| 2    | System calls (functions provided by the kernel) |
	| 3    | Library calls (functions within program libraries) |
	| 4    | Special files (usually found in `/dev`) |
	| 5    | File formats and conventions |
	| 6    | Games and screensavers |
	| 7    | Miscellaneous (including macro packages and conventions) |
	| 8    | System administration commands (usually only for root) |
	| 9    | Kernel documentation |

## Los Alias

- `type name...`: write a description of command type.
