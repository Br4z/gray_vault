---
reviewed_on: "2025-09-06"
---

# Higher-order functions

> "There are two ways of constructing a software design: One way is to make it so simple that there are obviously no deficiencies, and the other way is to make it so complicated that there are no obvious deficiencies." - C.A.R. Hoare, 1980 ACM Turing Award Lecture.

---

A large program is a costly program, and not just because of the time it takes to build. Size almost always involves complexity, and complexity confuses programmers. Confused programmers, in turn, introduce mistakes (**bugs**) into programs. A large program then provides a lot of space for these bugs to hide, making them hard to find.

## Abstraction

...Abstractions give us the ability to talk about problems at a higher (or more abstract) level, without getting sidetracked by uninteresting details.

It is a useful skill, in programming, to notice when you are working at too low a level of abstraction.

## Higher-order functions (section)

Functions that operate on other functions, either by taking them as arguments or by returning them, are called **higher-order functions**...The term comes from mathematics, where the distinction between functions and other values is taken more seriously.

There is a built-in array method, `forEach`, that provides something like a for/of loop as a higher-order function:

```javascript
["A", "B"].forEach(l => console.log(l))
// A
// B
```

## Filtering arrays

```javascript
function filter(array, test) {
	let passed = []

	for (let element of array)
		if (test(element))
			passed.push(element)

	return passed
}
```

Note how `filter`, rather than deleting elements from the existing array, builds up a new array with only the elements that pass the test. This function is **pure**. It does not modify the array it is given.

## Transforming with `map`

The `map` transforms an array by applying a function to all of its elements and building a new array from the returned values. The new array will have the same length as the input array, but its content will have been **mapped** to a new form by the provided function.

```javascript
function map(array, transform) {
	let mapped = []

	for (let element of array)
		mapped.push(transform(element))

	return mapped
}
```

## Summarizing with `reduce`

```javascript
function reduce(array, combine, start) {
	let current = start

	for (let element of array)
		current = combine(current, element)

	return current
}
```

`reduce`, which of course corresponds to this function, has an added convenience. If your array contains at least one element, you are allowed to leave off the start argument. The method will take the first element of the array as its start value and start reducing at the second element.

## Strings and character codes

...JavaScript strings are encoded as a sequence of $16$-bit numbers. These are called **code units**. A Unicode character code was initially supposed to fit within such a unit (which gives you a little over $65,000$ characters). When it became clear that was not going to be enough, many people balked at the need to use more memory per character. To address these concerns, UTF-$16$, the format also used by JavaScript strings, was invented. It describes most common characters using a single $16$-bit code unit but uses a pair of two such units for others.

## Summary

Being able to pass function values to other functions is a deeply useful aspect of JavaScript. It allows us to write functions that model computations with "gaps" in them. The code that calls these functions can fill in the gaps by providing function values.
