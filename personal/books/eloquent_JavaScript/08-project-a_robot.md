---
reviewed_on: "2025-09-14"
---

# Project: A Robot

> "The question of whether Machines Can Think \[...\] is about as relevant as the question of whether Submarines Can Swim." - Edsger Dijkstra, The Threats to Computing Science.

---

...Theory is necessary to learn to program, but reading and understanding actual programs is just as important.

## The task

...The fact that something sounds like an object does not automatically mean that it should be an object in your program. Reflexively writing classes for every concept in your application tends to leave you with a collection of interconnected objects that each have their own internal, changing state. Such programs are often hard to understand and thus easy to break.

## Persistent data

In JavaScript, just about everything **can** be changed, so working with values that are supposed to be persistent requires some restraint. There is `Object.freeze` that changes an object so that writing to its properties is ignored.

```javascript
let object = Object.freeze({ value: 5 })
object.value = 10
console.log(object.value) // 5
```

Unfortunately, although understanding a system built on persistent data structures is easier, **designing** one, especially when your programming language is not helping, can be a little harder.

## Pathfinding

The problem of finding a route through a graph is a typical **search problem**. We can tell whether a given solution (a route) is valid, but we cannot directly compute the solution the way we could for $2 + 2$. Instead, we have to keep creating potential solutions until we find one that works.

The number of possible routes through a graph is infinite. But when searching for a route from $A$ to $B$, we are interested only in the ones that start at $A$. We also do not care about routes that visit the same place twice (those are definitely not the most efficient route anywhere). So that cuts down on the number of routes that the route finder has to consider.
