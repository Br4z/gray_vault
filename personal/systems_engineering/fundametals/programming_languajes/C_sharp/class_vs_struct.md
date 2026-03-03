---
reviewed_on: 2026-03-02
---

# `class` vs `struct`

`class` and `struct` define user-defined types with different default semantics. the main practical differences are copy behavior, allocation and common usage patterns.

## Copy semantics

A `class` is a reference type. Assignment copies the reference, so multiple variables can point to the same instance.

```c#
class Counter
{
	public int value;
}

var a = new Counter { value = 1 };
var b = a;

b.value = 5;
Console.WriteLine(a.value) // 5
```

A `struct` is a value type. Assignment copies the data, so each variable gets its own copy.

```c#
struct Counter
{
	public int value;
}

var a = new Counter { value = 1 };
var b = a;

b.value = 5;
Console.WriteLine(a.value) // 1
```

Passing to methods follows the same rule: structs are copied by default, classes are not. `ref`, `in`, and `out` can change that behavior for structs.

```c#
static void increment(counter c) { c.value++; }
static void incrementRef(ref counter c) { c.value++; }
```

## Allocation and lifetime intuition

Class instances are allocated separately from variables that reference them. Garbage collection later reclaims them when no references remain.

Struct values are stored "inline" wherever the variable lives.

> That means the struct's data is placed directly inside the memory location that holds the variable, instead of the variable holding a reference to a separate object elsewhere.

- Local variables: stored with the method's locals.

- Fields: stored inside the containing object (or inside another struct).

- Array elements: stored inline in the array's backing memory.

This "inline" behavior is a common reason structs can reduce allocations.

## Performance implications

Structs can be faster when they are small, immutable, and frequently created, because allocations and garbage collection pressure can be reduced.

Structs can be slower when they are large or frequently passed around, because copying costs scale with size. in such cases, `in` parameters can reduce copying for read-only usage.

## When each is typically used

A `class` is typically used when:

- Identity matters (two references pointing to the same instance is meaningful).

- The type is large or frequently mutated.

- Inheritance or polymorphism is needed.

A `struct` is typically used when:

- The value is small and represents a single value concept (for example, coordinates, money or timestamps).

- The type is immutable or treated as immutable.

- Avoiding allocations is beneficial and copying cost stays low.
