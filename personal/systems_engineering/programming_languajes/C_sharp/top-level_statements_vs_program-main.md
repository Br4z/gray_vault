---
reviewed_on: 2026-03-01
---

# Top-level statements vs `program.main`

In modern C# executable code can be directly written in a file without explicitly declaring a `program` class and a `main` method. This is called **top-level statements**. The compiles still generates a `main` method behind the scenes.

## How they compile

Both approaches produce an entry point. with top-level statements, the compiler generates something equivalent to a `program` class and a `main` method and moves the top-level code into it. practically, this means:

- A `string[] args`-style argument list is available (as `args`) if needed it.

- `return` can still be used to return an exit code in appropriate forms, similar to returning an `int` from `main`.

- Async works: `await` can be used at the top level and the compiler uses an async-capable entry point shape.
