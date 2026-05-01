---
reviewed_on: 2026-03-15
---

# Exceptions and error patterns

## `try`, `catch`, and `finally`

A `try` block contains code that may fail. a `catch` block handles a matching exception. a `finally` block runs whether an exception happened or not, which makes it useful for cleanup work.

```
try
{
    int x = int.Parse(text);
    Console.WriteLine(x);
}
catch (FormatException)
{
    Console.WriteLine("invalid number format");
}
finally
{
    Console.WriteLine("done");
}
```

A common pattern is to catch only the exceptions that can actually be handled. if the code cannot recover or translate the error meaningfully, catching only to swallow the problem usually makes debugging harder.

Different `catch` blocks can be used for different exception types.

```
try
{
    var text = File.ReadAllText(path);
    Console.WriteLine(text);
}
catch (FileNotFoundException)
{
    Console.WriteLine("file was not found");
}
catch (UnauthorizedAccessException)
{
    Console.WriteLine("access denied");
}
```

A general `catch (Exception)` exists, but it should usually be reserved for boundaries such as logging, translating an error, or preventing the whole application from crashing at a top level.

## rethrowing

Sometimes an exception is caught only to add context or perform logging. when rethrowing the same exception, `throw;` preserves the original stack trace.

```
try
{
    saveOrder(order);
}
catch (Exception)
{
    Console.WriteLine("save failed");
    throw;
}
```

By contrast, `throw ex;` resets the stack trace and usually loses useful debugging information.

## `finally` and cleanup

`finally` is useful when some cleanup must always happen.

```
FileStream? stream = null;

try
{
    stream = File.OpenRead(path);
    Console.WriteLine(stream.Length);
}
finally
{
    stream?.Dispose();
}
```

This pattern appears less often in modern code because `using` usually handles it more cleanly.

## `using` and `await using`

`using` is used with objects that implement `IDisposable`. it ensures disposal even if an exception happens, which makes it behave like structured cleanup.

```
using var stream = File.OpenRead(path);
using var reader = new StreamReader(stream);

string text = reader.ReadToEnd();
Console.WriteLine(text);
```

This is roughly similar to writing a `try` / `finally` where `Dispose()` is called in the `finally` block.

```
var stream = File.OpenRead(path);

try
{
    Console.WriteLine(stream.Length);
}
finally
{
    stream.Dispose();
}
```

`await using` is the async version for types that implement `IAsyncDisposable`. disposal is awaited instead of happening synchronously.

```
await using var resource = new asyncResource();
await resource.saveAsync();
```

The main idea is the same: cleanup happens reliably, even when an exception is thrown.

## when to throw

Exceptions are usually appropriate when something unexpected, invalid, or impossible for normal flow happens.

Examples include invalid arguments, missing required state, unsupported operations, and infrastructure failures such as file or network problems.

```
public static int divide(int a, int b)
{
    if (b == 0)
    {
        throw new DivideByZeroException();
    }

    return a / b;
}
```

For argument validation, exceptions such as `ArgumentNullException`, `ArgumentException`, and `ArgumentOutOfRangeException` are commonly used.

```
public static void setAge(int age)
{
    if (age < 0)
    {
        throw new ArgumentOutOfRangeException(nameof(age));
    }
}
```

A useful rule is this: exceptions are usually for exceptional situations, not for expected outcomes that happen often during normal logic.

For example, “user typed a wrong password” or “search returned no rows” is often better modeled as normal control flow, not as an exception.

## when not to throw

Exceptions are usually a poor fit when failure is expected and frequent.

Parsing is a classic example. if invalid input is common, a `Try...` pattern is often better than throwing repeatedly.

```
if (int.TryParse(text, out int value))
{
    Console.WriteLine(value);
}
else
{
    Console.WriteLine("invalid input");
}
```

This avoids using exceptions for ordinary input checking.

## custom exceptions

A custom exception is useful when a domain-specific failure should be represented explicitly.

```
public class insufficientFundsException : Exception
{
    public insufficientFundsException()
        : base("balance is too low for this operation")
    {
    }
}
```

It can then be thrown from domain logic.

```
public static void withdraw(decimal balance, decimal amount)
{
    if (amount > balance)
    {
        throw new insufficientFundsException();
    }
}
```

Custom exceptions are most useful when the calling code needs to distinguish that specific failure from other failures.

When creating a custom exception, inheriting from `Exception` is the usual starting point. extra constructors or additional data can be added if needed.

```
public class orderValidationException : Exception
{
    public orderValidationException(string message)
        : base(message)
    {
    }
}
```

## choosing exception types

In many cases, using an existing framework exception is better than inventing a new one.

`ArgumentNullException`, `InvalidOperationException`, `NotSupportedException`, and `TimeoutException` already communicate common meanings clearly.

A custom exception tends to make more sense when the failure belongs to the application’s own domain, such as `paymentDeclinedException` or `orderValidationException`.

## result-style patterns

Sometimes an operation can fail, but that failure is part of normal flow rather than an exceptional condition. in those cases, returning a result object can be clearer than throwing.

A simple result style might look like this.

```
public record result(bool isSuccess, string? error);

public static result validateName(string name)
{
    if (string.IsNullOrWhiteSpace(name))
    {
        return new result(false, "name is required");
    }

    return new result(true, null);
}
```

Usage then becomes explicit.

```
var result = validateName(input);

if (!result.isSuccess)
{
    Console.WriteLine(result.error);
}
```

This style keeps expected failures inside normal control flow.

A generic version can also carry a value.

```
public record result<T>(bool isSuccess, T? value, string? error);

public static result<int> parsePositiveInt(string text)
{
    if (!int.TryParse(text, out int value))
    {
        return new result<int>(false, default, "not a valid integer");
    }

    if (value <= 0)
    {
        return new result<int>(false, default, "must be positive");
    }

    return new result<int>(true, value, null);
}
```

Usage:

```
var result = parsePositiveInt(text);

if (result.isSuccess)
{
    Console.WriteLine(result.value);
}
else
{
    Console.WriteLine(result.error);
}
```

## exceptions vs result style

The difference is mostly about what kind of failure is being modeled.

- exceptions fit unexpected or exceptional failures.

- result values fit expected outcomes such as validation failures, missing search results, or user input problems.

- exceptions interrupt control flow automatically.

- result values keep failure visible in the method’s return type.

A useful practical split is this: domain validation and user-facing expected failures often fit result-style code, while programming errors and infrastructure failures often fit exceptions.

## common pattern at application boundaries

A common design is to use result-style failures in domain logic and convert truly unexpected failures into exceptions, then handle those exceptions at an outer boundary such as a web endpoint, UI event handler, or background worker.

This keeps the inner logic explicit while still allowing unexpected failures to be logged and handled centrally.

## quick summary

`try`, `catch`, and `finally` are the core exception-handling tools. `using` and `await using` are structured cleanup tools that are closely related to `finally`.

Exceptions are best for exceptional failures, invalid state, and infrastructure problems. custom exceptions are useful when a domain-specific failure needs its own meaning.

When failure is expected and common, a result-style pattern often leads to clearer control flow than throwing exceptions.