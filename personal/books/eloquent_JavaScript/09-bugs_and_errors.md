---
reviewed_on: "2025-09-26"
---

# Bugs and errors

> "Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it." - Brian Kernighan and P.J. Plauger, The Elements of Programming Style.

If a program is crystallized thought, we can roughly categorize bugs into those caused by the thoughts being confused and those caused by mistakes introduced while converting a thought to code. The former type is generally harder to diagnose and fix than the latter.

## Language

Often, however, your nonsense computation will merely produce `NaN` or an `undefined`, while the program happily continues, convinced that it is doing something meaningful. The mistake will manifest itself only later, after the bogus value has traveled through several functions. It might not trigger an error at all, but silently cause the program's output to be wrong. Finding the source of such problems can be difficult.

## Strict mode

```javascript
function can_you_spot_the_problem() {
	"use strict"
	for (counter = 0; counter < 10; counter++)
		console.log("Happy happy")
}

can_you_spot_the_problem() // ReferenceError: counter is not defined
```

Normally, when you forget to put `let` in front of your binding, as with `counter` in the example, JavaScript quietly creates a global binding and uses that. In strict mode, an error is reported instead....

Another change in strict mode is that `this` holds the value `undefined` in functions that are not called as methods. When making such a call outside of strict mode, this refers to the global scope object, which is an object whose properties are the global bindings...

Fortunately, constructors created with `class` will always complain if they are called without `new`, making this less of a problem even in nonstrict mode.

## Error propagation

If you are programming only for yourself, you can afford to just ignore such problems until they occur. But if you build something that is going to be used by anybody else, you usually want the program to do better than just crash. Sometimes the right thing to do is take the bad input in stride and continue running. In other cases, it is better to report to the user what went wrong and then give up. In either situation the program has to actively do something in response to the problem.

## Exceptions

When a function cannot proceed normally, what we would often **like** to do is just stop what we are doing and immediately jump to a place that knows how to handle the problem. This is what **exception handling** does.

Exceptions are a mechanism that makes it possible for code that runs into a problem to **raise** (or **throw**) an exception. An exception can be any value. Raising one somewhat resembles a super-charged return from a function: it jumps out of not just the current function but also its callers, all the way down to the first call that started the current execution. This is called **unwinding the stack**.

## Cleaning up after exceptions

Writing programs that operate reliably even when exceptions pop up in unexpected places is hard. Many people simply do not bother, and because exceptions are typically reserved for exceptional circumstances, the problem may occur so rarely that it is never even noticed. Whether that is a good thing or a really bad thing depends on how much damage the software will do when it fails.

## Selective catching

When a `catch` body is entered, all we know is that something in our `try` body caused an exception. But we do not know what did or which exception it caused.

JavaScript (in a rather glaring omission) does not provide direct support for selectively catching exceptions: either you catch them all or you do not catch any. This makes it tempting to **assume** that the exception you get is the one you were thinking about when you wrote the `catch` block.

## Assertions

...are checks inside a program that verify that something is the way it is supposed to be. They are used not to handle situations that can come up in normal operation but to find programmer mistakes.
