---
reviewed_on: 2026-03-15
---

# Properties and fields

## Fields

A field is a variable stored inside a type. fields are often used for internal state.

```cs
public class counter
{
	private int _value;
}
```

A field is typically made `private` so direct external access is avoided. This helps keep the object in a valid state.

## Properties

A property is a member that looks like a field from the outside, but actually runs accessor logic. properties are commonly used to expose data in a controlled way.

```cs
public class Counter
{
	private int _value;
	
	public int Value
	{
		get { return _value; }
		set { _value = value; }
	}
}
```

Here, reading `value` calls `get`, and assigning `value = ...` calls `set`.

## Auto-properties

When no extra logic is needed, an auto-property is usually preferred. The compiler creates a hidden backing field automatically.

```cs
public class Person
{
	public string Name { get; set; } = "";
	public int Age { get; set; }
}
```

This is shorter than manually declaring a field plus property.

Auto-properties can also be read-only or [[personal/systems_engineering/programming_languajes/C_sharp/common_immutability_patterns#`init`-only properties|initialization-only]].

```cs
public class Person
{
	public string Name { get; } = "unknown";
	public int Age { get; init; }
}
```

## Getters and setters

A getter returns the current value. A setter assigns a new value. Accessor bodies can contain validation or transformation logic.

```cs
public class BankAccount
{
	private decimal _balance;
	
	public decimal Balance
	{
		get { return _balance; }
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException();
			}
	
			_balance = value;
		}
	}
}
```

A setter can also be restricted with an access modifier.

```cs
public class User
{
	public string Name { get; private set; } = "";
	
	public User(string name)
	{
		this.Name = name;
	}
}
```

## `readonly`

It applies to fields. It means the field can be assigned only at its declaration or inside a constructor.

```cs
public class Person
{
	private readonly string _id;
	
	public Person(string id)
	{
		_id = id;
	}
}
```

This is useful when a value should be fixed after object construction.

A `readonly` field is not the same as deep immutability. If the field refers to a mutable object, that object can still change.

```cs
private readonly List<int> _items = new();
```


## `const`

It declares a compile-time constant. It must be assigned immediately and its value cannot change.

```cs
public class MathInfo
{
	public const double PI = 3.1415926535897931;
}
```

## Expression-bodied member

It is a short form used when the body is a single expression. It is often used for simple properties, methods or constructors.

### Property (expression-bodied member)

```cs
public class circle
{
	public double Radius { get; set; }
	
	public double area => Math.PI * radius * radius;
}
```

This is equivalent to a getter that returns that expression.

### Method (expression-bodied member)

```cs
public int square(int x) => x * x;
```

### Getter and setter (expression-bodied member)

```cs
private string _name = "";

public string Name
{
	get => _name;
	set => _name = value;
}
```

This style is useful when the logic is very small. When the logic becomes longer, a block body is usually easier to read.
