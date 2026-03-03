---
reviewed_on: 2026-03-01
---

# Value types vs reference types

C# splits most types into two broad categories that behave differently in memory and in assignment semantics.

## Value types

They store their data directly. Assignment copies the value and passing a value type to a method typically copies it (unless `ref`, `in`, or `out` is used). Value types cannot be `null` by default.

Common value types include:

- numeric types (`int`, `double`, `decimal`).

- `bool`.

- `char`.

- `struct` types.

- `enum` types.

## Reference types

Reference types store a reference (pointer-like) to an object allocated elsewhere (typically on the managed heap). Assignment copies the reference, not the object, so multiple variables can refer to the same instance. Reference types can be `null`.

Common reference types include:

- `class` types.

- `string`.

- arrays.

- delegates.

## Equality intuition

For value types, `==` (when defined) usually compares the contained data. For reference types, `==` often compares references unless the type overloads it (for example, `string` compares contents).
