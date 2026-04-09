---
reviewed_on: "2025-08-31"
---

# Functions

> "People think that computer science is the art of geniuses but the actual reality is the opposite, just many people doing things that build on each other, like a wall of mini stones." - Donald Knuth.

---

...The concept of wrapping a piece of program in a value has many uses. It gives us a way to structure larger programs, to reduce repetition, to associate names with subprograms, and to isolate these subprograms from each other.

## Bindings and scopes

...In pre-2015 JavaScript, only functions created new scopes, so old-style bindings, created with `var`, are visible throughout the whole function in which they appear (or throughout the global scope, if they are not in a function).

```javascript
let x = 10 // global
if (true) {
	let y = 20 // local to block
	var z = 30 // also global
}
```

Each scope can "look out" into the scope around it, so `x` is visible inside the block in the example. The exception is when multiple bindings have the same name (in that case, code can see only the **innermost** one)...

## Declaration notation

```javascript
console.log("The future says:", future())

function future() {
	return "You'll never have flying cars"
}
```

The preceding code works, even though the function is defined **below** the code that uses it. Function declarations are not part of the regular top-to-bottom flow of control. They are conceptually moved to the top of their scope and can be used by all the code in that scope...

## Arrow functions

...Instead of the "function" keyword, it uses an arrow (`=>`) made up of an equal sign and a greater-than character...

The arrow comes **after** the list of parameters and is followed by the function's body...

When there is only one parameter name, you can omit the parentheses around the parameter list. If the body is a single expression, rather than a block in braces, that expression will be returned from the function...

## The call stack

The place where the computer stores this context is the **call stack**. Every time a function is called, the current context is stored on top of this stack. When a function returns, it removes the top context from the stack and uses that context to continue execution.

## Optional arguments

JavaScript is extremely broad-minded about the number of arguments you can pass to a function. If you pass too many, the extra ones are ignored. If you pass too few, the missing parameters are assigned `undefined`.

If you write an `=` after a parameter, followed by an expression, the value of that expression will replace the argument when it is not given...

## Closure

This feature (being able to reference a specific instance of a local binding in an enclosing scope) is called **closure**. A function that references bindings from local scopes around it is called a **closure**...

## Recursion

The dilemma of speed versus elegance is an interesting one. You can see it as a kind of continuum between human friendliness and machine friendliness. Almost any program can be made faster by making it bigger and more convoluted. The programmer has to find an appropriate balance.

Recursion is not always just an inefficient alternative to looping. Some problems really are easier to solve with recursion than with loops. Most often these are problems that require exploring or processing several "branches", each of which might branch out again into even more branches.

## Growing functions

A useful principle is to refrain from adding cleverness unless you are absolutely sure you are going to need it. It can be tempting to write general "frameworks" for every bit of functionality you come across. Resist that urge. You will not get any real work done (you will be too busy writing code that you never use).

## Functions and side effects

Functions can be roughly divided into those that are called for their side effects and those that are called for their return value (though it is also possible to both have side effects and return a value).

A **pure** function is a specific kind of value-producing function that not only has no side effects, but also does not rely on side effects from other code...A pure function has the pleasant property that, when called with the same arguments, it always produces the same value (and does not do anything else)...
