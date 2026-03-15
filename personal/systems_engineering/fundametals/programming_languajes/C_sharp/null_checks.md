---
reviewed_on: 2026-03-02
---

# Null checks

Null handling shows up often with reference types and nullable value types (`T?`). The goal is usually either to avoid `NullReferenceException` or to express a fallback value when `null` appears.

For nullable value types, `HasValue` and `Value` exist, but pattern matching is often clearer.

## `?` and `?[]` null-conditional operator

It stops evaluation when the left side is `null` and produces `null` instead of throwing an exception.

This is useful for safe chaining.

```cs
int? count = order?.Customer?.Addresses?.Count;
```

## `??` null-coalescing operator

It chooses a fallback when the left side is `null`.

```cs
string display = nickname ?? "no nickname";
```

A common pattern is combining `?.` and `??`.

```cs
int len = name?.Length ?? 0;
```

## `??=` null-coalescing assignment

It assigns only if the left side is `null`.

```cs
cache ??= new Dictionary<string, string>();
```

This is often used fo lazy initialization.

```cs
List<int>? _items;

List<int> items => _items ??= new List<int>();
```
