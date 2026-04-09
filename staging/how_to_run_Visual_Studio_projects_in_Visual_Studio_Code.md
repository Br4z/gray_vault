---
reviewed_on: "2026-02-21"
---

# how to run Visual Studio projects in Visual Studio Code

For anyone who does not leave VS Code for anything and likes to tinker around, it is good to know that Visual Studio projects can actually be run in VS Code.

1. Install the [.NET SDK](https://dotnet.microsoft.com/en-us/download).

	> The package in Arch Linux is `dotnet-sdk`.

2. Install the ["C# Dev Kit" VS Code extension](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit).

## Disclaimer

For small or straightforward applications, VS Code usually does the job: editing is fast, the .NET CLI is reliable, and the extension tooling covers the basics.

As solutions grow—more projects, more dependencies, more build steps, and more debugging profiles—the workflow can become more configuration-heavy. At that point, full VS can feel less like an indulgence and more like a practical choice... and yes, sometimes the legendary VS bloat is exactly what is needed to keep a complex project happy.

## Projects and solutions management

Solutions and projects can be managed from VS Code's solution explorer (via C# Dev Kit) for a tidy, point-and-click experience. But where is the fun in that? The .NET CLI is faster, scriptable, and delightfully unapologetic, perfect for automation, and mild terminal addiction.

### Projects

- Creation: `dotnet new <template> -n <name>`.

	> Use `--framework` to specific the .NET version.

	The available templates can be seen with `dotnet new list`.

- Run: `dotent run --project <csproj_file>`.

	> It uses the project's entry point (a `Main`, or top-level statements that compile into a generated `Main`).

To reference another projects use:

```bash
dotnet add reference <relative_csproj_file_path>
```

> Remove the `<OutputType>Exe</OutputType>` from the referenced project file if it is being used as a library.

### Solutions

- Creation: `dotnet new sln -n <name>`.

- List projects in a solution: `dotnet sln <sln_file> list`.

- Add a project to a solution: `dotnet sln <sln_file> add <csproj_file>`.

- Remove a project to a solution: `dotnet sln <sln_file> remove <csproj_file>`.
