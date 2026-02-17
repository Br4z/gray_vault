---
reviewed_on: "2025-09-02"
---

# Data structures: objects and arrays

> "On two occasions I have been asked, "Pray, Mr. Babbage, if you put into the machine wrong figures, will the right answers come out?" \[...\] I am not able rightly to apprehend the kind of confusion of ideas that could provoke such a question." - Charles Babbage, Passages from the Life of a Philosopher (1864).

---

Numbers, Booleans, and strings are the atoms from which data structures are built. Many types of information require more than one atom, though. **Objects** allow us to group values (including other objects) to build more complex structures.

## Datasets

...Zero-based counting has a long tradition in technology and in certain ways makes a lot of sense, but it takes some getting used to. Think of the index as the number of items to skip, counting from the start of the array.

## Properties

The two main ways to access properties in JavaScript are with a dot and with square brackets. Both `value.x` and `value[x]` access a property on value, but not necessarily the same property. The difference is in how `x` is interpreted. When using a dot, the word after the dot is the literal name of the property. When using square brackets, the expression between the brackets is **evaluated** to get the property name. Whereas `value.x` fetches the property of value named "x", `value[x]` takes the value of the variable named "x" and uses that, converted to a string, as the property name.

## Methods

Properties that contain functions are generally called **methods** of the value they belong to...

## Objects

Reading a property that does not exist will give `undefined`.

It is possible to assign a value to a property expression with `=` . This will replace the property's value if it already existed or create a new property on the object if it did not.

...`delete`...It is a unary operator that, when applied to an object property, will remove the named property from the object.

...binary `in` operator, when applied to a string and an object, tells you whether that object has a property with that name...

To find out what properties an object has, you can use `Object.keys`. Give the function an object and it will return an array of strings (the object's property names).

`Object.assign` copies all properties from one object into another:

Arrays, then, are just a kind of object specialized for storing sequences of things. If you evaluate `typeof []`, it produces `"object"`...

## Mutability

...numbers, strings, and Booleans, are all immutable (it is impossible to change values of those types). You can combine them and derive new values from them, but when you take a specific string value, that value will always remain the same...

When you compare objects with `==`, it compares by identity: it will produce `true` only if both objects are precisely the same value...

## The lycanthrope's log

...Correlation between variables is usually expressed as a value that ranges from $-1$ to 1. Zero correlation means the variables are not related. A correlation of 1 indicates that the two are perfectly related (if you know one, you also know the other). Negative 1 also means that the variables are perfectly related but are opposites (when one is true, the other is false).

To compute the measure of correlation between two Boolean variables, we can use the **phi coefficient** ($\phi$). This is a formula whose input is a frequency table containing the number of times the different combinations of the variables were observed. The output of the formula is a number between $-1$ and 1 that describes the correlation.

$$
\phi = \frac{ n_{ 11 } n_{ 00 } - n_{ 10 } n_{ 01 } }{ \sqrt{ n_{ 1\cdot } n_{ 0\cdot } n_{ \cdot 1 } n_{ \cdot 0 } } }
$$

## Strings and their properties

Values of type string, number, and Boolean are not objects, and though the language does not complain if you try to set new properties on them, it does not actually store those properties...

## Rest parameters

It can be useful for a function to accept any number of arguments...To write such a function, you put three dots before the function's last parameter...

When such a function is called, the **rest parameter** is bound to an array containing all further arguments. If there are other parameters before it, their values are not part of that array...

You can use a similar three-dot notation to call a function with an array of arguments.

Square bracket array notation similarly allows the triple-dot operator to spread another array into the new array.

This works even in curly brace objects, where it adds all properties from another object. If a property is added multiple times, the last value to be added wins.

## The Math object

`Math` is used as a container to group a bunch of related functionality. There is only one "Math" object, and it is almost never useful as a value. Rather, it provides a **namespace** so that all these functions and values do not have to be global bindings.

Though computers are deterministic machines (they always react the same way if given the same input) it is possible to have them produce numbers that appear random. To do that, the machine keeps some hidden value, and whenever you ask for a new random number, it performs complicated computations on this hidden value to create a new value...

## Destructuring

If you know that the value you are binding is an array, you can use square brackets to "look inside" of the value, binding its contents.

A similar trick works for objects, using braces instead of square brackets.

## Optional property access

When you are not sure whether a given value produces an object, but still want to read a property from it when it does, you can use a variant of the dot notation: `object?.property`.

The expression `a?.b` means the same as `a.b` when `a` is not `null` or `undefined`. When it is, it evaluates to `undefined`...

A similar notation can be used with square bracket access, and even with function calls, by putting `?`. in front of the parentheses or brackets.

## JSON

A popular serialization format is called **JSON** (pronounced "Jason"), which stands for JavaScript Object Notation. It is widely used as a data storage and communication format on the web, even with languages other than JavaScript.

JSON looks similar to JavaScript'ss way of writing arrays and objects, with a few restrictions. All property names have to be surrounded by double quotes, and only simple data expressions are allowed (no function calls, bindings, or anything that involves actual computation). Comments are not allowed in JSON.

JavaScript gives us the functions `JSON.stringify` and `JSON.parse` to convert data to and from this format. The first takes a JavaScript value and returns a JSON-encoded string. The second takes such a string and converts it to the value it encodes.

```javascript
let string = JSON.stringify({
		squirrel: false,
		events: ["weekend"]
	})

console.log(string) // {"squirrel":false,"events":["weekend"]}
console.log(JSON.parse(string).events) // ["weekend"]
```

## Summary

Objects and arrays provide ways to group several values into a single value. This allows us to put a bunch of related things in a bag and run around with the bag instead of wrapping our arms around all of the individual things and trying to hold on to them separately.
