---
reviewed_on: 2026-03-02
---

# Patter matching

## Type

They allow both type check and a variable declaration in one step.

```c#
object value = getValue();

if (value is string text)
{
	Console.WriteLine(text.Length);
}
```

Null patterns express null checks in a consistent form

```c#
if (value is null)
{
	Console.WriteLine("missing");
}

if (value is not null)
{
	Console.WriteLine("present");
}
```

Nullable value types can be checked and unwrapped in one step.

```c#
int? maybe = getNumber();

if (maybe is int n)
{
	Console.WriteLine(n + 1);
}
```

## Constant

They match an exact value.

```c#
if (status is 0)
{
	Console.WriteLine("ok");
}
```

## Property

They match based on object properties, without manual null checks when combined with `is not null` or with nested patterns.

```c#
order? order = getOrder();

if (order is { Customer.Address.City: "bogota" })
{
	Console.WriteLine("local order");
}
```

## `switch` statement and `switch` expression

A `switch` can be used to choose behavior based on patterns.

```c#
object value = getValue();

switch (value)
{
case null:
	Console.WriteLine("missing");
	break;
case int n when n < 0:
	Console.WriteLine("negative");
	break;
case int n:
	Console.WriteLine($"int {n}");
	break;
case string s:
	Console.WriteLine($"string {s.Length}");
	break;
default:
	Console.WriteLine("other");
	break;
}
```

A `switch` expression produces a value and is often used for concise mappings.

```c#
object value = getValue();

string label = value switch
{
	null => "missing",
	int n when n < 0 => "negative int",
	int => "int",
	string => "string",
	_ => "other"
};
```