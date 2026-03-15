---
reviewed_on: 2026-03-13
---

# `class` vs `struct`

`class` and `struct` define user-defined types with different default semantics. the main practical differences are copy behavior, allocation and common usage patterns.

## Copy semantics

A `class` is a [[personal/systems_engineering/fundametals/programming_languajes/C_sharp/value_types_vs_reference_types#Reference types|reference type]]. Assignment copies the reference, so multiple variables can point to the same instance.

```cs
class Counter
{
	public int Value;
}

var a = new Counter { Value = 1 };
var b = a;

b.value = 5;
Console.WriteLine(a.Value) // 5
```

A `struct` is a [[personal/systems_engineering/fundametals/programming_languajes/C_sharp/value_types_vs_reference_types#Value types|value type]]. Assignment copies the data, so each variable gets its own copy.

```cs
struct Counter
{
	public int Value;
}

var a = new Counter { Value = 1 };
var b = a;

b.value = 5;
Console.WriteLine(a.Value) // 1
```

Passing to methods follows the same rule: structs are copied by default, classes are not. `ref`, `in`, and `out` can change that behavior for structs.

```cs
static void increment(counter c) { c.value++; }
static void incrementRef(ref counter c) { c.value++; }
```

## When each is typically used

A `class` is typically used when:

- Identity matters (two references pointing to the same instance is meaningful).

- The type is large or frequently mutated.

- Inheritance or polymorphism is needed.

A `struct` is typically used when:

- The value is small and represents a single value concept (for example, coordinates, money or timestamps).

- The type is immutable or treated as immutable.

- Avoiding allocations is beneficial and copying cost stays low.
