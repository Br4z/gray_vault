# Project: A Programming Language

> "The evaluator, which determines the meaning of expressions in a programming language, is just another program." - Hal Abelson and Gerald Sussman, Structure and Interpretation of Computer Programs.

...there is no magic involved in building a programming language. I have often felt that some human inventions were so immensely clever and complicated that I would never be able to understand them. But with a little reading and experimenting, they often turn out to be quite mundane.

## Parsing

The most immediately visible part of a programming language is its **syntax**, or notation. A **parser** is a program that reads a piece of text and produces a data structure that reflects the structure of the program contained in that text. If the text does not form a valid program, the parser should point out the error.

The data structure that the parser will use to describe a program consists of expression objects, each of which has a `type` property indicating the kind of expression it is and other properties to describe its content.

```
do(define(x, 10),
   if(>(x, 5),
        print("large"),
        print("small")))
```

The `>(x, 5)` part of the previous program would be represented like this:

```JSON
{
    "type": "apply",
    "operator": { "type": "word", "name": ">" },
    "args": [
        { "type": "word", "name": "x" },
        { "type": "value", "value": 5 }
    ]
}
```

Such a data structure is called a **syntax tree**. If you imagine the objects as dots and the links between them as lines between those dots, as shown in the following diagram, the structure has a treelike shape. The fact that expressions contain other expressions, which in turn might contain more expressions, is similar to the way tree branches split and split again.

![syntaxt tree example](./assets/13_1-syntax_tree_example.svg)

## Compilation

Compilation is the process of adding another step between the parsing and the running of a program, which transforms the program into something that can be evaluated more efficiently by doing as much work as possible in advance.

Traditionally, compilation involves converting the program to machine code, the raw format that a computer's processor can execute. But any process that converts a program to a different representation can be thought of as compilation.

## Cheating

...a **domain-specific** language, a language tailored to express a narrow domain of knowledge. Such a language can be more expressive than a general-purpose language because it is designed to describe exactly the things that need to be described in its domain and nothing else.
