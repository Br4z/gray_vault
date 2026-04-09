```
’|“|”|‘|’
```

# Scribbles

- [Books](https://premium.redusers.com/library).

## Tools

- Regex for deleting block comments in Java: `/\*\*[\s\S\n]*?\*/`.

- Regex for lines ending without a final dot: `[^\.$:\]?]$`.

- Regex for comments without the beginning space: `[^\s]\\\\`

- Search for spaces in:

	- `for(`.

	- `while(`

	- `switch(`

	- `if(`.

	- `}else`

	- `){`.

	```
	(for\()|(while\()|(switch\()|(if\()|(\}else)|(\)\{)
	```

## Useful commands

- Convert PNG to JPG: `magick mogrify -format jpg <PNG file>`.

- Find files except in a directory: `find . -name <dir> -type d -prune -o -type f -name <file_pattern> -print`.

- Create symbolic links (PowerShell): `New-Item -ItemType SymbolicLink -Path <target> -Value <source>`.

- Show disk usage in order: `du -h --max-depth=5 / 2>/dev/null | sort -h`.

- Paint image in white: `convert input.png -fill white -colorize 100% output.png`.

- `convert images/*.png output.pdf`.

- Compile and run JavaFX programs.

	```powershell
	javac -d out --module-path <JavaFX lib folder> --add-modules javafx.controls,javafx.fxml YourApp.java
 $(Get-ChildItem -Filter "*.java" -Recurse)
	cp src/main/resources/* out
	java -cp out --module-path  <JavaFX lib folder> --add-modules javafx.controls,javafx.fxml <main>
	```

## Folders to check

- `D:\education`.

- `D:\education\books`.

- `D:\education\short_and_interesting_PDF`.

- `D:\education\University\semesters`.

- `D:\music`.

- `D:\VFX_resources`.

---

## Someday

- Learn GIMP.

- Learn INKscape.

- Learn Emmet.

- Finish the habitica terminal client.

- Program the classic games.

	- Pacman.

	- Tetris.

	- Sudoku.

	- Hangman.


6) Exceptions and error patterns

try/catch/finally, using / await using

When to throw, custom exceptions

“Result” style patterns (when you don’t want exceptions)

7) Generics and constraints

Generic methods/classes

Constraints: where T : class, struct, new(), interface constraints

Variance basics: out, in (useful with interfaces/delegates)

8) Delegates, events, and lambdas

Func<>, Action<>, custom delegates

Events (event keyword), typical event pattern

Lambdas, closures (common gotchas)

9) Async/await (the modern C# must-have)

Task / Task<T> / ValueTask (at least know it exists)

async/await flow, exception behavior

Cancellation: CancellationToken

Common pitfall: blocking with .Result / .Wait()

10) Interfaces, DI, and “how C# apps are structured”

Interfaces + implementations

Dependency Injection basics (especially in ASP.NET Core)

Common lifetimes: transient/scoped/singleton (just concepts)

11) Files, IDisposable, and using

IDisposable and why it exists

using statement vs using declaration

Streams and basic file I/O

12) NuGet + package management

What NuGet is, adding packages

Semantic versioning idea

dotnet restore

