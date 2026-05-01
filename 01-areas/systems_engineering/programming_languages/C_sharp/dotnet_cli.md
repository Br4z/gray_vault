---
reviewed_on: 2026-04-21
---

# dotnet CLI

`dotnet` covers most day-to-day work for SDK-style .NET projects: creation, restore, build, run, test, publish and packaging. A solution file helps organize multiple projects, but most commands can also target a single project directly.

Older non-SDK-style projects, especially legacy .NET Framework ones, may still require `msbuild`, `nuget.exe` or full Visual Studio.

## SDK and environment

```bash
dotnet --version
dotnet --info
dotnet --list-sdks
dotnet --list-runtimes
dotnet new list

dotnet new sln -n <name>

dotnet new <template> -n <name> --framework <version>
dotnet new <template> -n <name> -o <directory>
```

> In current SDKs, `dotnet new sln` creates an `.slnx` file. Existing `.sln` files can still be managed with `dotnet sln`.

## [[personal/systems_engineering/programming_languajes/C_sharp/solution_vs_project#Solution (`.sln`)|Solution]] management

```bash
dotnet sln <sln_or_slnx_file> list

dotnet sln <sln_or_slnx_file> add <csproj_file>
dotnet sln <sln_or_slnx_file> add <csproj_file> --solution-folder <folder>

dotnet sln <sln_or_slnx_file> remove <csproj_file>
```

## [[personal/systems_engineering/programming_languajes/C_sharp/solution_vs_project#Project (`.csproj`)|Project]] references

```bash
dotnet reference add <referenced_csproj> --project <target_csproj>

dotnet reference remove <referenced_csproj> --project <target_csproj>
```

If shared code is intended, a class library project is usually the right shape, rather than an executable project repurposed as a dependency.

> For .NET 9 SDK and earlier, the equivalent forms are `dotnet add reference` and `dotnet remove reference`.

## NuGet packages

Package references can be managed with:

```
dotnet package add <package_name> --project <csproj_file>
dotnet package add <package_name> --version <version> --project <csproj_file>
dotnet package remove <package_name> --project <csproj_file>
dotnet package list --project <project_or_solution_file>
dotnet package list --project <project_or_solution_file> --outdated
dotnet package list --project <project_or_solution_file> --vulnerable
dotnet package list --project <project_or_solution_file> --include-transitive
dotnet package update --project <csproj_file>
dotnet package update --project <csproj_file> --vulnerable
```

> For .NET 9 SDK and earlier, the equivalent forms are `dotnet add package`, `dotnet remove package` and `dotnet list package`.

## day-to-day operations

Common workflow commands:

```
dotnet restore
dotnet restore <project_or_solution_file>

dotnet build
dotnet build <project_or_solution_file>
dotnet build <project_or_solution_file> -c Release

dotnet clean
dotnet clean <project_or_solution_file>

dotnet run
dotnet run --project <csproj_file>

dotnet watch run --project <csproj_file>

dotnet test
dotnet test <project_or_solution_file>

dotnet publish <csproj_file> -c Release -o <publish_dir>

dotnet pack <csproj_file> -c Release
```

In most cases, `dotnet restore` is implicit because `dotnet new`, `dotnet build`, `dotnet run`, `dotnet test`, `dotnet publish` and `dotnet pack` restore automatically when needed.

`dotnet run` runs from project source. To run a built framework-dependent application directly, the form is:

```
dotnet <app.dll>
```

### What `restore` does

`dotnet restore` is the dependency-resolution step. It reads the project or solution, checks the NuGet package references, looks at the configured package sources and resolves the full dependency graph before downloading any missing packages.

It does not compile source code, produce the final application binaries or run the program. Its job is to leave the project in a state where later operations such as `build`, `run`, `test` or `publish` can proceed with all required external dependencies available.

As part of that process, NuGet writes `obj/project.assets.json`. The .NET SDK uses that file later to know which packages and assets must be passed into the build. When that file is missing, errors such as `NETSDK1004` can appear.

By default, restored packages are placed in the global NuGet cache under `.nuget/packages` in the user home directory, unless another location is configured.

## Feeds and tools

NuGet sources can be inspected and configured with:

```
dotnet nuget list source
dotnet nuget add source <source_url> -n <name>
```

Local tools can be handled with:

```
dotnet new tool-manifest
dotnet tool install <package_id>
dotnet tool list --local
dotnet tool restore
dotnet tool run <command_name>
```
