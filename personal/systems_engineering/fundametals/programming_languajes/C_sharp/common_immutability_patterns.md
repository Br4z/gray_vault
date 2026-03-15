---
reviewed_on: 2026-03-11
---

# Common immutability patterns

## `init`-only properties

A common pattern is to combine `init` with types that are not expected to change after construction.

```cs
public class Person
{
	public string Name { get; init; } = "";
	public string Email { get; init; } = "";
}

var person = new Person
{
	Name = "name",
	Email = "test@domain.com"
}
```

This is often described as shallow immutability.

## `readony` fields

A `readonly` field can be assigned in the constructor and then not changed later.

```cs
public class Person(string name)
{
	private readonly string _name = name;


	public string Name => _name;
}
```

This pattern is older and stricter, but sometimes more verbose.

## Exposing read-only views

If internal mutable collections must exist, a read-only interface or wrapper is often exposed.

```cs
public class Team
{
	private readonly List<string> _members = new();


	public IReadOnlyList<string> Members => _members;
}
```

This reduces external mutation, even if the internal collection stays mutable.

## Immutable collection types

```cs
using System.Collections.Immutable;


public class Team
{
	public ImmutableArray<string> Members { get; init; }
		= ImmutableArray<string>.Empty;
}
```

This is closer to true immutability because the collection contents cannot be changed in place.
