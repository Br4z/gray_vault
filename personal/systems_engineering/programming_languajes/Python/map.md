---
reviewed_on: "2025-01-10"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/python-map-function
    language: English
---

# `map`

Applies a given function to all the items in an input sequence (or multiple sequences) and returns an iterator with the results.

## Maps syntax

```python
map(function, sequences)
```

- `function`: function that transforms an element or elements.

	> The function must accept as many arguments as there are sequences.

- `sequences`: one or more sequences that need to be mapped. These can be lists, tuples, sets, or any other iterable.

It returns an iterator that applies the function to all items of the given sequences.

## Usage expample

```python
numbers_1 = [1, 2, 3]
numbers_2 = [4, 5, 6]

result = map(lambda x, y: x + y, numbers_1, numbers_2)
print(list(result)) # [5, 4, 9]
```
