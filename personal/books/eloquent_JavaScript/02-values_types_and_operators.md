---
reviewed_on: "2025-08-31"
---

# Values types and operator

> "Below the surface of the machine, the program moves. Without effort, it expands and contracts. In great harmony, electrons scatter and regroup. The forms on the monitor are but ripples on the water. The essence stays invisibly below." - Master Yuan-Ma, The Book of Programming.

## Numbers

...Unfortunately, calculations with fractional numbers are generally not (precise). Just as $\pi$ (pi) cannot be precisely expressed by a finite number of decimal digits, many numbers lose some precision when only $64$ bits are available to store them. This is a shame, but it causes practical problems only in specific situations. The important thing is to be aware of it and treat fractional digital numbers as approximations, not as precise values.

## Special numbers

There are three special values in JavaScript that are considered numbers but do not behave like normal numbers. The first two are `Infinity` and `-Infinity`, which represent the positive and negative infinities...

## Strings

...a backslash (`\`) inside quoted text indicates that the character after it has a special meaning. This is called escaping the character. A quote that is preceded by a backslash will not end the string but will be part of it. When an `n` occurs after a backslash, it is interpreted as a newline. Similarly, a `t` after a backslash means a tab character...

When you write something inside `${}` in a **template literal** (backtick-quoted strings), its result will be computed, converted to a string, and included at that position....

```javascript
`half of 100 is ${100 / 2}` // half of 100 is 50
```

## Boolean values

### Comparison

The way strings are ordered is roughly alphabetic but not really what you would expect to see in a dictionary: uppercase letters are always "less" than lowercase ones, so $\text{Z} < \text{a}$, and nonalphabetic characters (`!`, `-`, and so on) are also included in the ordering. When comparing strings, JavaScript goes over the characters from left to right, comparing the Unicode codes one by one.

```javascript
console.log("Aardvark" < "Zoroaster") // true
```

There is only one value in JavaScript that is not equal to itself, and that is `NaN` ("not a number").

```javascript
console.log(NaN == NaN) // false
```

## Empty values

There are two special values, written `null` and `undefined`, that are used to denote the absence of a **meaningful** value. They are themselves values, but they carry no information.

Many operations in the language that do not produce a meaningful value yield `undefined` simply because they have to yield some value.

## Automatic type conversion

When an operator is applied to the "wrong" type of value, JavaScript will quietly convert that value to the type it needs, using a set of rules that often are not what you want or expect. This is called **type coercion**...

When comparing values of the same type using `==`, the outcome is easy to predict: you should get true when both values are the same, except in the case of `NaN`. But when the types differ, JavaScript uses a complicated and confusing set of rules to determine what to do. In most cases, it just tries to convert one of the values to the other value's type. However, when `null` or `undefined` occurs on either side of the operator, it produces true only if both sides are one of `null` or `undefined`.

## Short-circuiting of logical operators

The `||` operator, for example, will return the value to its left when that value can be converted to true and will return the value on its right otherwise...

The `??` operator resembles `||`, but returns the value on the right only if the one on the left is `null` or `undefined`, not if it is some other value that can be converted to false...

The `&&` operator works similarly but the other way around. When the value on its left is something that converts to false, it returns that value, and otherwise, it returns the value on its right.

Another important property of these two operators is that the part to their right is evaluated only when necessary. In the case of `true || X`, no matter what `X` is (even if it is a piece of program that does something terrible) the result will be `true`, and `X` is never evaluated. The same goes for `false && X`, which is false and will ignore `X`. This is called **short-circuit evaluation**.
