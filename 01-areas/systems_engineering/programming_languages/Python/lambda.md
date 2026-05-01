---
reviewed_on: "2025-01-10"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/python-lambda
    language: English
---

# `lambda`

`lambda` is used to create anonymous functions.

## Lambda syntax

```python
lambda arguments: expression
```

## Lambda properties

- Can have any number of arguments but only one expression, which is evaluated and returned.

- Syntactically restricted to a single expression.

## Usage examples

```python
filter_numbers = lambda string: "".join([character for character in string if not character.isdigit()])
print(f"filter_numbers(): {filter_numbers("Geeks101")}") # filter_numbers(): Geeks

do_exclaim = lambda string: string + "!"
print(f"do_exclaim(): {do_exclaim("I am tired")}") # do_exclaim(): I am tired

sum_digits = lambda number: sum([int(digit) for digit in str(number)])
print(f"sum_digits(): {sum_digits(101)}") # sum_digits(): 2
```
