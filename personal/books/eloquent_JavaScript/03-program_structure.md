---
reviewed_on: "2025-08-31"
---

# Program structure

> "And my heart glows bright red under my filmy, translucent skin and they have to administer 10cc of JavaScript to get me to come back. (I respond well to toxins in the blood.) Man, that stuff will kick the peaches right out your gills!" - why, Why's (Poignant) Guide to Ruby.

## Expressions and statements

In some cases, JavaScript allows you to omit the semicolon at the end of a statement. In other cases, it has to be there, or the next line will be treated as part of the same statement. The rules for when it can be safely omitted are somewhat complex and error-prone...

## Bindings

You should imagine bindings as tentacles rather than boxes. They do not **contain** values; they **grasp** them (two bindings can refer to the same value). A program can access only the values to which it still has a reference. When you need to remember something, you either grow a tentacle to hold on to it or reattach one of your existing tentacles to it.

The words "var" and "const" can also be used to create bindings, similarly to "let".

The first of these, "var" (short for "variable"), is the way bindings were declared in pre-2015 JavaScript, when "let" did not exist yet...For now, remember that it mostly does the same thing...

## The environment

The collection of bindings and their values that exist at a given time is called the **environment**. When a program starts up, this environment is not empty. It always contains bindings that are part of the language standard, and most of the time, it also has bindings that provide ways to interact with the surrounding system...

## Functions

...A function is a piece of program wrapped in a value. Such values can be applied in order to run the wrapped program....

## The `console.log` function

Though binding names cannot contain period characters, `console.log` does have one. This is because `console.log` is not a simple binding, but an expression that retrieves the `log` property from the value held by the `console` binding...

## Indenting code

...You could write a program as a single long line if you felt like it.

The role of this indentation inside blocks is to make the structure of the code stand out to human readers. In code where new blocks are opened inside other blocks, it can become hard to see where one block ends and another begins. With proper indentation, the visual shape of a program corresponds to the shape of the blocks inside it...
