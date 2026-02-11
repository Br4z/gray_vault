---
reviewed_on: "2025-01-10"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/python-regex
    language: English
---

# RegEx

It is a powerful tool for matching text based on a pre-defined pattern. It can detect the presence or absence of a text by matching it with a particular pattern, and also can split a pattern into one or more sub-patterns. The Python standard library provides a "re" module for regular expressions.

## Raw string notation

Raw string notation (`rtext`) keeps regular expressions sane. Without it, every backslash (`\`) in a regular expression would have to be prefixed with another one to escape it.

### Usage example (Raw string notation)

```python
import re

# Without raw string notation
pattern = "\\d+"  # Matches one or more digits
text = "123 abc 456"
print(re.findall(pattern, text))  # Output: ['123', '456']

# With raw string notation
pattern = r"\d+"  # Same pattern, easier to read
print(re.findall(pattern, text))  # Output: ['123', '456']
```

## `re.search`

```python
re.search(pattern, string, flags=0)
```

Scan through `string` looking for the first location where the `pattern` produces a match, and return a corresponding `Match` (otherwise it returns `None`).

## `re.match`

```python
re.match(pattern, string, flags=0)
```

If zero or more characters at the **beginning** of `string` match `pattern`, return a corresponding `Match` (otherwise, it returns `None`).

## `re.split`

```python
re.split(pattern, string, maxsplit=0, flags=0)
```

Split `string` by the occurrences of `pattern`. If capturing parentheses are used in `pattern`, then the text of all groups in the pattern is also returned as part of the resulting list.

## `re.findall`

```python
re.findall(pattern, string, flags=0)
```

Return all non-overlapping matches of `pattern` in `string`, as a list of strings or tuples. The string is scanned left-to-right, and matches are returned in the order found.
