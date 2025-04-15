```
( {2,})|(\d[a-zA-Z])|(\{[^ a])|([^  n]\})|(^\s+$)
```

# Scribbles

## Prompt


Whatever you are going to answer, please keep in mind the following:

- If I ask you to fix something, please respond to the specific section I have asked you to fix.

- If that involves making content for my notes, please follow the instructions below:

	- Give me the content in a code block so I can copy and paste it.

	- Between the items in the list, leave an empty line.

	- Do not abuse `**` in list items.

	- If you are going to write mathematics, please use `$` instead of `$(` or `$)`.

	- Do not use capital letters unless you are writing a name or are orthographically correct.

		> For example the text after a dot or company's name.


## Programas

- [VisiPics](http://www.visipics.info/index.php?title=Download): para eliminar imágenes duplicadas (o parecidas).

- [Windows Update Blocker](https://www.sordum.org/9470/windows-update-blocker-v1-7/)

## Tools

- Regex for deleting block comments in Java: `/\*\*[\s\S\n]*?\*/`.

- Regex for lines ending witouth a finald dot: `[^\.$:\]?]$`.

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

## Regex for checking notes

```
([^\.:\]?]$)|(^(?! ).* {2,})|(\{[^\s])|([^\s]\})
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

- Compile C++ programs: `find . -name "*.cpp" -type f -print0 | xargs -0 g++`.

- Paint image in white: `convert input.png -fill white -colorize 100% output.png`.

- `convert images/*.png output.pdf`

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

```
‘’
“”
```

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

	- [Character](https://www.renderhub.com/rdaughterdaz/cici-for-genesis-9)

	- [Hair](https://www.daz3d.com/alo-phyllis-hair-for-genesis-9-8-and-81-female)

- Finish the habitica terminal client.

## Shopping

1. Ryzen 5 5700x.

2. Radeon RX 9070XT.

3. Mousepad.

---

- Complementa el registro de usuario, permitiendo a los usuarios acceder a sus cuentas. Depende de la implementación de la autenticación.

- Complementa las listas de películas, permitiendo a los usuarios interactuar con el contenido. Depende de la implementación de la base de datos.