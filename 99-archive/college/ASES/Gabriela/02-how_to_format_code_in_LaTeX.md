---
reviewed_on: "2025-08-08"
---

# How to format code in LaTeX

Proper formatting of your code is especially important in reporting, it gives more information than just an image and also looks more professional.

## `verbatim`

This is the easiest way to display code in your LaTeX documents, the verbatim environment is built into LaTeX. It only generates an output in a monospaced font.

```LaTeX
\begin{verbatim}
Text enclosed inside \texttt{verbatim} environment
is printed directly
and all \LaTeX{} commands are ignored.
\end{verbatim}
```

It also has a starred version that gives more information about the typed characters.

```LaTeX
\begin{verbatim*}
Text enclosed inside \texttt{verbatim} environment
is printed directly
and all \LaTeX{} commands are ignored.
\end{verbatim*}
```

## `listings`

To be able to use it, you have to import the "listings" package.

```LaTex
\usepackage{listings}
```

By default, it does not do much more than the literal environment.

In a block, you can specify the programming language by adding the `language` parameter.

```LaTex
\begin{lstlisting}[language=Python]
print("Hello world")
\end{lstlisting}
```

### Importing code from a file

With the command `\lstinputlisting{<file>}` you can specify the file content you want to display.

```LaTex
\lstinputlisting[language=Python]{my_python_file.py}
```

You can also specify a range of lines on which you want to display the file.

```LaTex
\lstinputlisting[language=Python, firstline=2, lastline=12]{my_python_file.py}
```

### Code styles and colors

You can create styles and use them to display your code. You can set a global style or a named style.

#### Global style

It is done through the `\lstset` command.

```LaTex
\lstset {
	% Options
}
```

#### Named style

It is done through the `\lstdefinestyle` command.

```LaTex
\lstdefinestyle{<style name>} {
	% Options
}
```

#### Style options

- `backgroundcolor`: color for the background.

	> External color or "xcolor" package is needed.

- `commentstyle`: style of comments in source language.

- `basicstyle`: font size/family/etc.

	> E.g. `basicstyle=\ttfamily\small`.

- `keywordstyle`: style of keywords in source language.

	> E.g. `keywordstyle=\color{red}`.

- `numberstyle`: style used for line numbers

- `numbersep`: distance of line numbers from the code.

- `stringstyle`: style of strings in the source language.

- `showspaces`: emphasize spaces in code.

	> true/false.

- `showstringspaces`: emphasize spaces in strings.

	> true/false.

- `showtabs`: emphasize tabulators in code.

	> true/false.

- `numbers`: position of line numbers.

	> left/right/none.

- `prebreak`: displaying mark on the end of breaking line.

	> E.g. `prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}}`.

- `captionpos`: position of caption.

	> t/b.

- `frame`: showing frame outside code.

	> none/leftline/topline/bottomline/lines/single/shadowbox.

- `breakatwhitespace`: sets if automatic breaks should only happen at whitespaces.

- `breaklines`: automatic line breaking.

- `keepspaces`: keep spaces in the code, useful for indentation.

- `tabsize`: default tabsize.

- `escapeinside`: specify characters to escape from source code to LaTeX.

	> E.g. `escapeinside={\%*}{*)}`.

- `rulecolor`: specify the color of the frame box.

#### Usage example

```LaTex
\documentclass{article}
\usepackage{listings}
\usepackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
	backgroundcolor=\color{backcolour},
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\ttfamily\footnotesize,
	breakatwhitespace=false,
	breaklines=true,
	captionpos=b,
	keepspaces=true,
	numbers=left,
	numbersep=5pt,
	showspaces=false,
	showstringspaces=false,
	showtabs=false,
	tabsize=2
}

\lstset{style=mystyle}

\begin{document}
The next code will be directly imported from a file

\begin{lstlisting}[language=Python]
print("Hello world")
\end{lstlisting}

\end{document}
```
