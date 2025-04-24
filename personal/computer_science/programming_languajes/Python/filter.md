---
reviewed_on: "2025-01-10"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/filter-in-python
    language: English
---

# `filter`

Filters the given sequence with the help of a function that tests each element in the sequence to be true or not.

## Filters syntax

```python
filter(function, sequence)
```

- `function`: function that tests if each element of a sequence is true or not.

- `sequence`: sequence that needs to be filtered; it can be sets, lists, tuples, or containers of any iterators.

It returns an iterator that is already filtered.

## Usage example

```python
def is_multiple_of_3(number):
	return number % 3 == 0

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
result = list(filter(lambda x: not is_multiple_of_3(x), numbers))
print(result) # [1, 2, 4, 5, 7, 8, 10]
```
