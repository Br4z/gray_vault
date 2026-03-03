---
reviewed_on: 2026-03-01
---

# Namespaces

It is a logical container used to group types and avoid naming collisions. A namespace name becomes part of a type's fully qualified name.

Two common namespace declaration styles exist.

- Block-scoped namespace.

- File-scoped namespace.

```c#
// block-scoped
namespace myapp.data
{
	public class user_repository { }
}

// file-scoped
namespace myapp.data;

public class user_repository { }
```

Types are resolved by name lookup rules. When ambiguities occur, a fully qualified name can be used to select a specific type.

```c#
var t = new system.text.stringbuilder();
```

When a conflict exists with a local namespace or type name, the `global::` qualifier can be used to force resolution from the global namespace.

```c#
var t = new global::system.text.stringbuilder();
```

## `using` directives

They imports a namespace (or a type) into the current scope so that types can be referenced without fully qualifying them. `using` directives are typically placed at the top of a file and they affect name resolution for the file (or for the containing scope, when used inside a namespace block).

```c#
using system;
using system.collections.generic;

namespace myapp;

public class demo
{
	public list<int> values = new();
}
```

A few important variants exist.

- Type aliasing, used to disambiguate or shorten names.

- Static import, used to reference static members without a type qualifier.

```c#
using text = system.text;
using static system.math;

namespace myapp;


public class demo
{
	public text.stringbuilder sb = new();

	public double r = sqrt(9);
}
```

It is useful to distinguish `using` directives from the `using` statement, which controls resource disposal.

``` 
using var stream = system.io.file.openread("data.bin");
// stream is disposed at end of scope
```

## `global using` directive

It applies to the entire compilation unit (the whole project) rather than a single file. it is commonly used for namespaces that appear across many files.

```c#
global using system;
global using system.collections.generic;

namespace myapp;

public class demo
{
	public list<int> values = new();
}
```

In many modern .NET templates, global usings are generated automatically when implicit usings are enabled in the project file. when enabled, the build may generate a file under `obj/` (often named similarly to `GlobalUsings.g.cs`) that contains `global using` directives. These generated directives can be supplemented with explicit `global using` directives in source, or disabled by turning off implicit usings.

``` 
<PropertyGroup>
	<ImplicitUsings>disable</ImplicitUsings>
</PropertyGroup>
```
