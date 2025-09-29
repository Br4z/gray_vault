# Asynchronous programming

> "Who can wait quietly while the mud settles? Who can remain still until the moment of action?" - Laozi, Tao Te Ching.

## Callbacks

One approach to asynchronous programming is to make functions that need to wait for something take an extra argument, a **callback function**. The asynchronous function starts a process, sets things up so that the callback function is called when the process finishes, and then returns.

## Promises

A promise is a receipt representing a value that may not be available yet. It provides a `then` method that allows you to register a function that should be called when the action for which it is waiting finishes. When the promise is **resolved**, meaning its value becomes available, such functions (there can be multiple) are called with the result value.

```JS
let fifteen = Promise.resolve(15)
fifteen.then(value => console.log(`Got ${value}`)) // Got 15
```

Generally, it is useful to think of a promise as a device that lets code ignore the question of when a value is going to arrive. A normal value has to actually exist before we can reference it. A promised value is a value that **might** already be there or might appear at some point in the future. Computations defined in terms of promises, by wiring them together with `then` calls, are executed asynchronously as their inputs become available.

## Failure

Promises can be either resolved (the action finished successfully) or rejected (it failed). Resolve handlers (as registered with `then`) are called only when the action is successful, and rejections are propagated to the new promise returned by `then`. When a handler throws an exception, this automatically causes the promise produced by its `then` call to be rejected. If any element in a chain of asynchronous actions fails, the outcome of the whole chain is marked as rejected, and no success handlers are called beyond the point where it failed.

As a shorthand, `then` also accepts a rejection handler as a second argument, so you can install both types of handlers in a single method call: `.then(accept_handler, reject_handler)`.

## Async functions

...JavaScript allows you to write pseudosynchronous code to describe asynchronous computation. An `async` function implicitly returns a promise and can, in its body, await other promises in a way that looks synchronous.

Inside an `async` function, the word `await` can be put in front of an expression to wait for a promise to resolve and only then continue the execution of the function. If the promise rejects, an exception is raised at the point of the `await`.

Such a function no longer runs from start to completion in one go like a regular JavaScript function. Instead, it can be **frozen** at any point that has an `await` and can be resumed at a later time.

## Generators

When you define a function with `function*` (placing an asterisk after the word function), it becomes a generator. When you call a generator, it returns an iterator...

...Every time you call `next` on the iterator, the function runs until it hits a `yield` expression, which pauses it and causes the yielded value to become the next value produced by the iterator. When the function returns...the iterator is done.

An `async` function is a special type of generator. It produces a promise when called, which is resolved when it returns (finishes) and rejected when it throws an exception. Whenever it yields (awaits) a promise, the result of that promise (value or thrown exception) is the result of the `await` expression.

`Promise` has a static method `all` that can be used to convert an array of promises into a single promise that resolves to an array of results. This provides a convenient way to have some asynchronous actions happen alongside each other, wait for them all to finish, and then do something with their results (or at least wait for them to make sure they do not fail).

## The event loop

Asynchronous behavior happens on its own empty function call stack. This is one of the reasons that, without promises, managing exceptions across asynchronous code is so hard. Since each callback starts with a mostly empty stack, your `catch` handlers will not be on the stack when they throw an exception.

```JS
try {
    setTimeout(() => {
        throw new Error("Woosh")
    }, 20)
} catch (e) {
    console.log("Caught", e)
}
```

No matter how closely together events (such as timeouts or incoming requests) happen, a JavaScript environment will run only one program at a time. You can think of this as it running a big loop around your program, called the event loop. When there is nothing to be done, that loop is paused. But as events come in, they are added to a queue, and their code is executed one after the other. Because no two things run at the same time, slow-running code can delay the handling of other events.

```JS
let start = Date.now()
setTimeout(() => {
  console.log("Timeout ran at", Date.now() - start)
}, 20)
while (Date.now() < start + 50) { }
console.log("Wasted time until", Date.now() - start)
// Wasted time until 50
// Timeout ran at 55
```
