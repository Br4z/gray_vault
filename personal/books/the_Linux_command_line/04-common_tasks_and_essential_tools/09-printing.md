---
reviewed_on: "2025-07-25"
---

# Printing

- `pr`: convert text files for printing.

- `lp`/`lpr`: print files.

- `a2ps`: format file for printing on a PostScript printer.

- `lpq`: show printer queue status.

- `lprm`: cancel print jobs.

## A brief history of printing

### Character-based printers

The second, and more important characteristic of early printers was that printers used a fixed set of characters that were intrinsic to the device...This made the printers much like high-speed typewriters. As with most typewriters, they printed using monospaced font (fixed width) fonts...Printing was done at fixed position on the page, and the printable are of a page contained a fixed number of characters. Most printers printed then characters per inch (CPI) horizontally and six lines per inch (LPI) vertically. Using this scheme, a US-letter sheet of paper is 85 characters wide and 66 lines high. Taking into account a small margin on each side, 80 characters was considered the maximum width of a print line. This ex­plains why terminal displays (and our terminal emulators) are normally 80 characters wide. Using a monospaced font and and an 80 character wide terminal provides a **what you see is what you g et** (**WYSIWYG**) view of printed output.

### Graphical printers

Moving rom a character-based scheme to a graphical scheme presented a formidable technical challenge. Assuming 60 lines per page each containing 80 characters, the number of bytes needed to fill a page using a character-based printer is

$$
60 \times 80 = 4,800 \text{bytes}
$$

In comparison, a 300 DPI (dot per inch) laser printer requires (assuming an 8 by 10 inch print area)

$$
(8 \times 300) \times (10 \times 300)  = 900,000 \text{bytes}
$$

Many of the slow PC networks simply could not handle the nearly one megabyte of data required to print a full page on a laser printer, so it was clear that a clever invention was needed.

That invention turned out to be the page description language (PDL). A page description language is a programming language that describes the contents of a page...At first, support for PostScript was built into
the printers themselves. This solved the data transmission problem. While the typical PostScript program was very verbose in comparison to the simple byte stream of charac­ter-based printers, it was much smaller than the number of bytes required to represent the entire printed page.

The generic name for the process of rendering something into a large bit pattern (called **bitmap**) is **raster image processor** (RIP).

## Printing with Linux

Modern Linux systems employ two software suites to perform and manage printing. The first, Common Unix Printing System (CUPS) provides print drivers and print-job man­agement, and the second, Ghostscript, a PostScript interpreter, acts as a RIP.

## Preparing file for printing

### `pr` convert text files for printing

| option              | description                                                                                                 |
|:------------------- |:----------------------------------------------------------------------------------------------------------- |
| `+<first>[:<last>]` | output a range of pages starting with *first*, optionally, ending with *last*.                              |
| `-<n>`              | organize the content of the page into the number of columns specified by *n*.                               |
| `-a`                | by default, multicolumn output is listed vertically. By adding this option, content is listed horizontally. |
| `-d`                | double-space output.                                                                                        |
| `-D <format>`       | format the date displayed in the page headers using *format*.                                               |
| `-f`                | use form feeds rather than carriage returns to separate pages.                                              |
| `-h "<string>"`     | in the center portion of the page header, use *string* rather than the name of the file being processed.    |
| `-l <n>`            | set page length to *length*.                                                                                |
| `-n`                | number lines.                                                                                               |
| `-o <n>`            | create a left margin *n* characters wide.                                                                   |
| `-w <n>`            | set the page width to *n*.                                                                                  |

## Sending a print job to a printer

### `lpr` print files (Berkeley style)

It can be used to send files to the printer. It may also be used in pipelines, as it accepts standard input.

|     option     | description                                                                                                                                                     |
|:--------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|    `-# <n>`    | set number of copies to *n*.                                                                                                                                    |
|      `-p`      | print each page with a shaded header with the date, time, job name, and page number. This so-called "pretty print" option can be used when printing text files. |
| `-P <printer>` | specify the name of the printer used for output.                                                                                                                |
|      `-r`      | delete files after printing.                                                                                                                                    |

### `lp` print files (System V style)

Like `lpr`, it accepts either files or standard input for printing.

|                                                   option                                                   | description                                                                                                                                                                       |
|:----------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|                                               `-d <printer>`                                               | set the destination printer to *printer*.                                                                                                                                         |
|                                                  `-n <n>`                                                  | set the number of copies to *n*.                                                                                                                                                  |
|                                               `-o landscape`                                               | set output to landscape orientation.                                                                                                                                              |
|                                                `-o fitplot`                                                | scale the file to fit the page.                                                                                                                                                   |
|                                              `-o scaling=<n>`                                              | scale the file to *n*. The value of 100 fills the page. Values less than 100 are reduced, while values greater than 100 cause the file to be printed across multiple pages. |
|                                                `-o cpi=<n>`                                                | set the output characters per inch to *n*.                                                                                                                                        |
|                                                `-o lpi=<n>`                                                | set the output lines per inch to *n*.                                                                                                                                             |
| `-o page-bottom=<points>`<br>`-o page-left=<points>`<br>`-o page-right=<points>`<br>`-o page-top=<points>` | set the page margins. Values are expresses in *points*, a unit of typographic measurement.                                                                                        |
|                                                `-P <pages>`                                                | specify the list of pages. *pages* may be expressed as a comma-separated list and/or a range.                                                                                     |

### Another option (`a2ps`)

...now its name means "anything to PostScript". While its name suggests a format-conversion program, it is actually a printing program. It sends its default output to the system's default printer rather than standard output. The program’s default behavior is that of a “pretty printer,” meaning that it improves the appearance of output.

## `a2ps` Options

|         option          | description                                                   |
|:-----------------------:|:------------------------------------------------------------- |
| `--center-title=<text>` | set center page title to *text*.                              |
|     `--columns=<n>`     | arrange pages into *n* columns.                               |
|    `--footer=<text>`    | set page footer to *text*.                                    |
|        `--guess`        | report the types of files given as arguments.                 |
| `--left-footer=<text>`  | set the left‑page footer to *text*.                           |
|  `--left-title=<text>`  | set the left‑page title to *text*.                            |
|  `--line-numbers=<n>`   | number lines of output every *n* lines.                       |
|    `--list=defaults`    | display default settings.                                     |
|    `--pages=<range>`    | print pages in *range*.                                       |
| `--right-footer=<text>` | set the right‑page footer to *text*.                          |
| `--right-title=<text>`  | set the right‑page title to *text*.                           |
|      `--rows=<n>`       | arrange pages into *n* rows.                                  |
|          `-B`           | no page headers.                                              |
|       `-b <text>`       | set the page header to *text*.                                |
|       `-f <size>`       | use *size*‑point font.                                        |
|        `-l <n>`         | set characters per line to *n*.                               |
|        `-L <n>`         | set lines per page to *n*.                                    |
|       `-M <name>`       | use media *text*.                                             |
|        `-n <n>`         | output *n* copies of each page.                               |
|       `-o <file>`       | send output to *file*. If *file* is `-`, use standard output. |
|     `-P <printer>`      | use printer *printer*.                                        |
|          `-R`           | portrait orientation.                                         |
|          `-r`           | landscape orientation.                                        |
|        `-T <n>`         | set tab stops every *n* characters.                           |
|       `-u <text>`       | underlay (watermark) pages with *text*.                       |

## Monitoring and controlling print jobs

Each printer is given a **print queue**, where jobs are parked until they can be **spooled** to the printer. CUPS supplies several command line pro­grams that are used to manage printer status and print queues.

### `lpstat` display print system status

It is useful for determining the names and availability of printers on the system.

|       option        | description                                           |
|:-------------------:|:----------------------------------------------------- |
| `-a [<printer>...]` | display the state of the printer queue for *printer*. |
|        `-d`         | display the name of the system's default printer.     |
| `-p [<printer>...`  | display the status of *printer*.                      |
|        `-r`         | display the status of the print server                |
|        `-s`         | display a status summary.                             |
|        `-t`         | display a complete status report.                     |

### `lpq` display printer queue status

It is used to see the status of a printer queue. A printer can be specified with `-P`.

### `lprm`/`cancel` cancel print jobs

CUPS supplies two programs used to terminate print jobs and remove them from the print queue. One is Berkely style (`lprm`) and the other is System V (`cancel`). They differ slightly in the options they support, but do basically the same thing.

```
cancel PRINT_JOB_NUMBER
```