---
reviewed_on: "2025-01-10"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/decorators-in-python
    language: English
---

# Decorator

Allows programmers to modify the behavior of a function or class. Decorators allow us to wrap another function in order to **extend the behavior** of the wrapped function, **without permanently modifying it**.

In Python, functions are **first-class objects**, which means that functions can be used or passed as arguments.

---

In Decorators, functions are taken as arguments for another function and then called inside the wrapper function.

```python
@my_decorator
def my_function():
	print("")
```

The code above is equivalent to:

```python
def my_function():
	print("")

my_function_decorator = my_decorator(my_function)
```

When you want to "decorate" a function that receives arguments, you can specify these arguments through `*args` and `**kwargs`.

## Usage examples

1. Calculating the time of execution.

	```python
	import time
	import math


	def calculate_time(function):
		def inner(*args, **kwargs):
			begin = time.time()
			function(*args, **kwargs)
			end = time.time()

			print("Total time taken in : ", function.__name__, end - begin)

		return inner

	@calculate_time
	def factorial(number):
		time.sleep(2)
		print(math.factorial(number))

	factorial(10)
	```

2. Chaining decorators.

	```python
	def decorator_1(function):
		def inner():
			number = function()
			return number * 10
		return inner

	def decorator_2(function):
		def inner():
			number = function()
			return number ** 2
		return inner

	@decorator_1
	@decorator_2
	def number():
		return 5

	print(number()) # 250
	```
