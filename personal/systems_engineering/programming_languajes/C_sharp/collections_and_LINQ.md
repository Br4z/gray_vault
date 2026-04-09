---
reviewed_on: 2026-03-15
---

# Collections and LINQ

Collections are used to store groups of values. The most common day-to-day workflow is: store data in a collection, shape it with LINQ, and materialize the final result when needed.

## `List<T>`

It is an ordered, index-based collection. Duplicates are allowed and elements can be added or removed.

It is usually the default choice when a mutable in-memory sequence is needed.

```cs
var numbers = new List<int> { 10, 20, 30 };

numbers.Add(40);
numbers.Remove(20);

int first = numbers[0]; // 10
int count = numbers.Count; // 3
```

A `List<T>` is useful when order matters and lookup by index is common.

## `Dictionary<TKey, TValue>`

It stores key-value pairs. Each key must be unique.

It is used when fast lookup by key matters more than keeping items in a simple sequence.

```cs
var ages = new Dictionary<string, int>
{
	["ana"] = 20,
	["luis"] = 25
};

ages["maria"] = 22;

int anaAge = ages["ana"]; // 20
bool hasLuis = ages.ContainsKey("luis"); // true
```

## `HashSet<T>`

It stores unique values. Duplicates are ignored.

It is useful when membership tests and uniqueness matter more than order.

```cs
var tags = new HashSet<string>();

tags.Add("csharp");
tags.Add("linq");
tags.Add("csharp");

bool hasLinq = tags.Contains("linq");   // true
int count = tags.Count; // 2
```

## `IEnumerable<T>` vs `ICollection<T>` vs `IQueryable<T>`

These are not specific collections. They are abstractions that describe what kind of thing is being worked with.

### `IEnumerable<T>`

It means "a sequence that can be enumerated".

It is the most basic sequence abstraction. it supports `foreach`, and many LINQ operators work on it.

```cs
IEnumerable<int> values = new List<int> { 1, 2, 3 };

foreach (var x in values)
{
	Console.WriteLine(x);
}
```

> It says very little beyond "elements can be iterated".

### `ICollection<T>`

It is more specific. It represents a collection with a known `Count`, and usually supports operations such as `Add`, `Remove` and `Contains`.

```cs
ICollection<int> values = new List<int> { 1, 2, 3 };

values.Add(4);
int count = values.Count;
```

### `IQueryable<T>`

It represents a query that may be translated and executed by an external provider, such as a database provider.

This is common in ORMs such as entity framework.

```cs
IQueryable<user> query = dbContext.Users.Where(u => u.IsActive);
```

The important idea is that with `IQueryable<T>`, the LINQ expression may not run in memory immediately. Instead, it may be translated into something else, such as SQL.

## LINQ basics

LINQ is a set of operators used to query and transform sequences.

A small sample collection helps show the common operators.

```cs
public record Student(string Name, string City, int Score);

var students = new List<Student>
{
	new("ana", "bogota", 90),
	new("luis", "medellin", 75),
	new("maria", "bogota", 82),
	new("sofia", "cali", 95)
};
```

### `Where`

`Where` filters a sequence.

```cs
var topStudents = students.Where(s => s.Score >= 80);
```

### `Select`

`Select` projects each element into a new form.

```cs
var names = students.Select(s => s.Name);
```

This means: transform each `student` into only the `Name`.

### `Any`

`Any` checks whether at least one element exists or whether at least one element matches a condition.

```cs
bool hasTopStudent = students.Any(s => s.Score >= 90);
```

### `All`

`All` checks whether every element matches a condition.

```cs
bool allPassed = students.All(s => s.Score >= 60);
```

A useful detail is that `All` returns `true` for an empty sequence, because no element violates the condition.

### `First`

`First` returns the first matching element.

```cs
var firstFromBogota = students.First(s => s.City == "bogota");
```

> If no matching element exists, an exception is thrown.

### `Single`

`Single` returns the one and only matching element.

```cs
var onlyAna = students.Single(s => s.Name == "ana");
```

If no matching element exists, an exception is thrown.

If more than one matching element exists, an exception is also thrown.

### `GroupBy`

`GroupBy` groups elements by a key.

```cs
var byCity = students.GroupBy(s => s.City);

foreach (var group in byCity)
{
	Console.WriteLine(group.Key);

	foreach (var student in group)
	{
		Console.WriteLine(student.Name);
	}
}
```

Each group has a key and the matching elements for that key.

This is useful for summaries, reports, and aggregation.

## Deferred execution

This is one of the most important LINQ ideas.

Many LINQ operators do not run immediately. Instead, they build a query that runs later, usually when the sequence is enumerated.

```cs
var numbers = new List<int> { 1, 2, 3 };

var evens = numbers.Where(n => n % 2 == 0);

numbers.Add(4);

foreach (var n in evens)
{
	Console.WriteLine(n);
}
// 2
// 4
```

### How to force execution

Materialization operators force the query to run immediately and store the results.

Common examples are:

- `ToList()`.

- `ToArray()`.

- `ToDictionary()`.

- `ToHashSet()`.

```cs
var snapshot = numbers
	.Where(n => n % 2 == 0)
	.ToList();
```

After that, `snapshot` is an actual list containing the current results.
