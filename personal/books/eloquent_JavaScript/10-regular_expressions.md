---
reviewed_on: "2025-10-02"
---

# Regular expressions

> "Some people, when confronted with a problem, think 'I know, I will use regular expressions.' Now they have two problems." - Jamie Zawinski.

> "When you cut against the grain of the wood, much strength is needed. When you program against the grain of the problem, much code is needed." - Master Yuan-Ma, The Book of Programming.

Regular expressions are both terribly awkward and extremely useful. Their syntax is cryptic and the programming interface JavaScript provides for them is clumsy. But they are a powerful tool for inspecting and processing strings. Properly understanding regular expressions will make you a more effective programmer.

## Creating a regular expression

A regular expression is a type of object. It can be either constructed with the `RegExp` constructor or written as a literal value by enclosing a pattern in forward slash (`/`) characters.

```javascript
let re_1 = new RegExp("abc")
let re_2 = /abc/
```

## Testing for matches

Regular expression objects have a number of methods. The simplest one is `test`. If you pass it a string, it will return a Boolean telling you whether the string contains a match of the pattern in the expression.

```javascript
console.log(/abc/.test("abcde")) // true
console.log(/abc/.test("abxde")) // false
```

## Sets of characters

In a regular expression, putting a set of characters between square brackets makes that part of the expression match any of the characters between the brackets.

A number of common character groups have their own built-in shortcuts.

|      |                         meaning                          |
|:----:|:--------------------------------------------------------:|
| `\d` |                          digit.                          |
| `\w` |                      alphanumeric.                       |
| `\s` | whitespace character (space, tab, newline, and similar). |
| `\D` |                       not a digit.                       |
| `\W` |                     nonalphanumeric.                     |
| `\S` |                      nonwhitespace.                      |
| `.`  |            any character except for newline.             |

To **invert** a set of characters (that is, to express that you want to match any character except the ones in the set) you can write a caret (`^`) character after the opening bracket.

## International characters

...as far as JavaScript's regular expressions are concerned, a "word character" is only one of the 26 characters in the Latin alphabet (uppercase or lowercase), decimal digits, and, for some reason, the underscore character.

## Matches and groups

`test` is the absolute simplest way to match a regular expression. It tells you only whether it matched and nothing else. Regular expressions also have an `exec` (execute) that will return `null` if no match was found and return an object with information about the match otherwise.

```javascript
let match = /\d+/.exec("one two 100")
console.log(match) // ["100"]
console.log(match.index) // 8
```

When the regular expression contains subexpressions grouped with parentheses, the text that matched those groups will also show up in the array.

If you want to use parentheses purely for grouping, without having them show up in the array of matches, you can put `?:` after the opening parenthesis.

```javascript
console.log(/(?:na)+/.exec("banana")) // ["nana"]
```

## The `Date` class

```javascript
console.log(new Date()) // Fri Feb 02 2024 18:03:06 GMT+0100 (CET)
console.log(new Date(2009, 11, 9)) // Wed Dec 09 2009 00:00:00 GMT+0100 (CET)
console.log(new Date(2009, 11, 9, 12, 59, 59, 999)) // Wed Dec 09 2009 12:59:59 GMT+0100 (CET)
```

JavaScript uses a convention where month numbers start at zero (so December is 11), yet day numbers start at one.

Timestamps are stored as the number of milliseconds since the start of 1970, in the UTC time zone. This follows a convention set by "Unix time", which was invented around that time. You can use negative numbers for times before 1970.

## Boundaries and look-ahead

There is also a `\b` marker that matches **word boundaries**, positions that have a word character on one side, and a nonword character on the other. Unfortunately, these use the same simplistic concept of word characters as \w and are therefore not very reliable.

Note that these boundary markers do not match any actual characters. They just enforce that a given condition holds at the place where it appears in the pattern.

**Look-ahead** tests do something similar. They provide a pattern and will make the match fail if the input does not match that pattern, but they do not actually move the match position forward. They are written between (`?=` and `?!`).

- `?=`: matches a group after the main expression without including it in the result.

- `?!`: specifies a group that can not match after the main expresion (if it matches, the result is discared).

```javascript
console.log(/a(?=e)/.exec("braeburn")) // ["a"]
console.log(/a(?! )/.exec("a b")) // null
```

## The mechanics of matching

Conceptually, when you use `exec` or `test`, the regular expression engine looks for a match in your string by trying to match the expression first from the start of the string, then from the second character, and so on until it finds a match or reaches the end of the string. It will either return the first match that can be found or fail to find any match at all.

## Backtracking

It is possible to write regular expressions that will do a lot of backtracking. This problem occurs when a pattern can match a piece of input in many different ways.

## The replace method

The real power of using regular expressions with replace comes from the fact that we can refer to matched groups in the replacement string....

```javascript
console.log(
	"Liskov, Barbara\nMcCarthy, John\nMilner, Robin"
		.replace(/(\p{L}+), (\p{L}+)/gu, "$2 $1")
)
// Barbara Liskov
// John McCarthy
// Robin Milner
```

...The whole match can be referred to with `$&`.

## Greed

We say the repetition operators (`+`, `*`, `?`, and `{}`) are **greedy**, meaning they match as much as they can and backtrack from there. If you put a question mark after them (`+?`, `*?`, `??`, `{}?`), they become nongreedy and start by matching as little as possible, matching more only when the remaining pattern does not fit the smaller match.

## The `lastIndex` property

Regular expression objects have properties. One is `source`, which contains the string that expression was created from. Another is `lastIndex`, which controls, in some limited circumstances, where the next match will start.

Those circumstances are that the regular expression must have the global (`g`) or sticky (`y`) option enabled, and the match must happen through `exec`.

```javascript
let pattern = /y/g
pattern.lastIndex = 3
let match = pattern.exec("xyzzy")
console.log(match.index) // 4
console.log(pattern.lastIndex) // 5
```

The difference between the global and the sticky options is that when sticky is enabled, the match will succeed only if it starts directly at `lastIndex`, whereas with global, it will search ahead for a position where a match can start.

```javascript
let global = /abc/g
console.log(global.exec("xyz abc")) // [ 'abc', index: 4, input: 'xyz abc', groups: undefined ]
let sticky = /abc/y
console.log(sticky.exec("xyz abc")) // null
sticky.lastIndex = 4
console.log(sticky.exec("xyz abc")) // [ 'abc', index: 4, input: 'xyz abc', groups: undefined ]

```

When using a shared regular expression value for multiple `exec` calls, these automatic updates to the `lastIndex` property can cause problems...

## Parsing an INI file

The exact rules for the INI format are as follows:

- Blank lines and lines starting with semicolons are ignored.

- Lines wrapped in `[` and `]` start a new section.

- Lines containing an alphanumeric identifier followed by an `=` character add a setting to the current section.

- Anything else is invalid.

## Code units and characters

Another design mistake that is been standardized in JavaScript regular expressions is that by default, operators like `.` or `?` work on code units..., not actual characters. This means characters that are composed of two code units behave strangely.

You must add the `u` (Unicode) option to your regular expression to make it treat such characters properly.

## Summary

Regular expressions are a sharp tool with an awkward handle. They simplify some tasks tremendously but can quickly become unmanageable when applied to complex problems. Part of knowing how to use them is resisting the urge to try to shoehorn things into them that they cannot cleanly express.
