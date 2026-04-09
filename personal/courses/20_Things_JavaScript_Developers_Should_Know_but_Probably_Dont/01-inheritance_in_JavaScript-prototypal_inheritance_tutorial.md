# Inheritance in JavaScript

## Classes

```JS
const me = {
    talk() {
        return "Talking"
    }
}

me.talk()

const you = {
    talk() {
        return "Talking"
    }
}

you.talk()
```

The problem with this approach is that it lends itself to repetitive and unmaintainable code.

> Imagine that you have to update the function definition, you must modify all the objects.

## `prototype` And `__proto__`

```JS
class Person {
    talk() {
      return "Talking"
    }
}

const me = new Person()
me.talk()

const you = new Person()
you.talk()

Person.prototype.talk = function () {
    return "New and improved Talking"
}
```

Now, with this approach, we can modify the function definition in all objects by modifying the prototype.

> Class syntax is just another way of referring to prototype inheritance (**syntatic sugar**).

## Objects and prototypal inheritance

What JavaScript is doing under is this:

```JS
function Person() { }

Person.prototype.talk = function () {
    return "Talking"
}
```

## Properties vs methods

Assigning `talk` as a property to the constructor would be this:

```JS
function Person() {
    this.talk = function() {
        return "Talking"
    }
}
```

The problem with this is that every time we create a person the `talk` is being copied, which leads to the same problem as the first approach.

## Extending Classes

```JS
class Person {
    talk() {
      return "talking"
    }
}

class SuperHuman extends Person {
    fly() {
      return "flying"
    }
}

const me = new Person()
console.log(me.talk)
console.log(me.fly)

const you = new SuperHuman()
console.log(you.fly)
console.log(you.talk)
```

## 3 Ways to create an inheritance chain

### Inheritance using pure objects with `Object.create`

```JS
const person = {
    talk() {
      return "Talking"
    }
}

const me = Object.create(person)
me.talk()
```

### Inheritance using pure objects with `Object.setPrototypeOf`

```JS
const person = { }

person.__proto__.talk = function (){
    return "Talking"
}
const me = { }
Object.setPrototypeOf(me, person);
me.talk()
```
