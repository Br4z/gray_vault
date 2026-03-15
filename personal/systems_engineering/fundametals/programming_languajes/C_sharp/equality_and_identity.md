---
reviewed_on: 2026-03-11
---

# Equality and identity

Equality and identity answer different questions. Equality asks whether two values should be considered the same, while identity asks whether two variables refer to the very same instance.

## Identity

It is mainly relevant for [[personal/systems_engineering/fundametals/programming_languajes/C_sharp/value_types_vs_reference_types#Reference types|reference types]]. When two variables have the same identity, both point to the same object.

```cs
class Person
{
	public string Name = "";
}

var a = new person { Name = "ana" };
var b = a;
var c = new person { Name = "ana" };

bool abSameIdentity = object.ReferenceEquals(a, b); // true
bool acSameIdentity = object.ReferenceEquals(a, c); // false
```

## Equality

It is mainly relevant for [[personal/systems_engineering/fundametals/programming_languajes/C_sharp/value_types_vs_reference_types#Value types|value types]]. When two variables have the same content, they are **equal**. Two values can be equal even when their identity is different.

```cs
string s1 = "hi";
string s2 = "h" + "i";

bool sameText = (s1 == s2); // true
bool sameIdentity = object.ReferenceEquals(s1, s2); // not the main question here
```

## `==`, `Equals`, and `ReferenceEquals`

These three checks are related, but they do not mean the same thing.

- `==`: depends on the type. For some types it means value equality, for others it means reference equality and some types overload it with custom behavior.

- `Equals`: asks whether two values are considered equal according to the type's equality rules.

- `ReferenceEquals`: checks only identity and is mostly useful for reference types.

```cs
object o1 = new object();
object o2 = new object();
object o3 = o1;

bool a = (o1 == o2); // false
bool b = o1.Equals(o2); // false
bool c = object.ReferenceEquals(o1, o3); // true
```

## Common default behavior

- `class`: usually identity-based equality by default.

- `struct`: usually value-based equality.

- [[personal/systems_engineering/fundametals/programming_languajes/C_sharp/record_and_record_struct#`record`|`record`]]: reference type with value-based equality.

- [[personal/systems_engineering/fundametals/programming_languajes/C_sharp/record_and_record_struct#`record struct`|`record struct`]]: value type with value-based equality.

- `string`: reference type, but equality compares contents.

## Hash codes and collections

When equality is customized, `GetHashCode()` must stay consistent with it. Equapl values must produce the same hash code. This matters for collections such as `Dictionary<TKey, TValue>` and `HashSet<T>`.

If equality says two keys are equal, the hash code must agree, or lookups can behave incorrectly.

```cs
public sealed class Product(string sku)
{
	public string Sku { get; } = sku

	public override bool Equals(object? obj)
		=> obj is product other && sku == other.sku;

	public override int GetHashCode()
		=> sku.GetHashCode();
}

var p1 = new Product("abc");
var p2 = new Product("abc");

bool same = p1.Equals(p2); // true

var set = new HashSet<Product>();
set.Add(p1);
set.Add(p2);
```
