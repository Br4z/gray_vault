```
( {2,})|(\d[a-zA-Z])|(\{[^ a])|([^  n]\})|(^\s+$)
```

```
’|“|”|‘|’
```

# Scribbles

- [Books](https://premium.redusers.com/library).

## Programas

- [VisiPics](http://www.visipics.info/index.php?title=Download): para eliminar imágenes duplicadas (o parecidas).

- [Windows Update Blocker](https://www.sordum.org/9470/windows-update-blocker-v1-7/)

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

- Login error: `faillock --user <user> --reset`.

- Find files except in a directory: `find . -name <dir> -type d -prune -o -type f -name <file pattern> -print`.

- Create symbolic links (PowerShell): `New-Item -ItemType SymbolicLink -Path <target> -Value <source>`.

- Show disk usage in order: `du -h --max-depth=5 / 2>/dev/null | sort -h`.

- Compile and run Scala programs.

	```powershell
	scalac -d out $(Get-ChildItem -Filter "*.scala" -Recurse)
	scala -classpath .\out\ .\Main.scala
	```

- Paint image in white: `convert input.png -fill white -colorize 100% output.png`.

- `convert images/*.png output.pdf`.

- Compile and run JavaFX programs.

	```powershell
	javac -d out --module-path <JavaFX lib folder> --add-modules javafx.controls,javafx.fxml YourApp.java
 $(Get-ChildItem -Filter "*.java" -Recurse)
	cp src/main/resources/* out
	java -cp out --module-path  <JavaFX lib folder> --add-modules javafx.controls,javafx.fxml <main>
	```

## Plex

- Start service: `sudo systemctl start plexmediaserver.service`.

- Actual running config file: `/etc/systemd/system/plexmediaserver.service.d/override.conf`.

- Edit service config: `sudo systemctl edit plexmediaserver.service`.

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

- Complete the definitive BSPWM setup.

	- File maganer.

	- Music player.

	- Video player.

	- Browser.

	- Image viewer.

	- Document viewer.

	- Font.

- Learn Emmet.

- [Daz studio course](https://www.daz3d.com/community/masterclass).

- Finish the habitica terminal client.

- Program the classic games.

	- Pacman.

	- Tetris.

	- Sudoku.

	- Hangman.

## Shopping

1. Ryzen 5 9600x.

2. Radeon RX 9070XT.

3. Mousepad.
