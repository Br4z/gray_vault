# Modules

> "Write code that is easy to delete, not easy to extend." - Tef, Programming is Terrible.

## Modular programs

...A module is a piece of program that specifies which other pieces it relies on and which functionality it provides for other modules to use (its **interface**).

Module interfaces have a lot in common with object interfaces...They make part of the module available to the outside world and keep the rest private.

## ES modules

Since ECMAScript $2015$, JavaScript supports two different types of programs. Scripts behave in the old way: their bindings are defined in the global scope, and they have no way to directly reference other scripts. **Modules** get their own separate scope and support the `import` and `export`, which are not available in scripts, to declare their dependencies and interface...

...Imported bindings can be renamed to give them a new local name using as after their name.

```JS
import { day_name as nom_de_jour } from "./day_name.js"
console.log(nom_de_jour(3)) // Wednesday
```

A module may also have a special export named default, which is often used for modules that only export a single binding...

```JS
export default ["Winter", "Spring", "Summer", "Autumn"]
```

Such a binding is imported by omitting the braces around the name of the import.

```JS
import season_names from "./season_names.js";
```

To import all bindings from a module at the same time, you can use import `*`...

```JS
import * as day_name from "./day_name.js";
console.log(day_name.dayName(3)) // Wednesday
```

## Packages

One of the advantages of building a program out of separate pieces and being able to run some of those pieces on their own is that you might be able to use the same piece in different programs.

...A package is a chunk of code that can be distributed (copied and installed). It may contain one or more modules and has information about which other packages it depends on. A package also usually comes with documentation explaining what it does so that people who did not write it might still be able to use it.

We need a place to store and find packages and a convenient way to install and upgrade them. In the JavaScript world, this infrastructure is provided by [NPM](https://npmjs.com).

NPM is two things: an online service where you can download (and upload) packages, and a program (bundled with Node.js) that helps you install and manage them.

## CommonJS modules

A CommonJS module looks like a regular script, but it has access to two bindings that it uses to interact with other modules. The first is a function called `require`. When you call this with the module name of your dependency, it makes sure the module is loaded and returns its interface. The second is an object named `exports`, which is the interface object for the module...

CommonJS is implemented with a module loader that, when loading a module, wraps its code in a function (giving it its own local scope) and passes the require and exports bindings to that function as arguments.

```JS
function require(name) {
    if (!(name in require.cache)) {
        let code = read_file(name)
        let exports = require.cache[name] = {}
        let wrapper = Function("require, exports", code)
        wrapper(require, exports)
    }
    return require.cache[name];
}
require.cache = Object.create(null);
```

An important difference between this system and ES modules is that ES module imports happen before a module's script starts running, whereas `require` is a normal function, invoked when the module is already running. Unlike `import`, `require` calls can appear inside functions, and the name of the dependency can be any expression that evaluates to a string, whereas import allows only plain quoted strings.

## Building and bundling

Because fetching a single big file tends to be faster than fetching a lot of tiny ones, web programmers have started using tools that combine their programs (which they painstakingly split into modules) into a single big file before they publish it to the web. Such tools are called **bundlers**.

...Apart from the number of files, the **size** of the files also determines how fast they can be transferred over the network. Thus, the JavaScript community has invented **minifiers**. These are tools that take a JavaScript program and make it smaller by automatically removing comments and whitespace, renaming bindings, and replacing pieces of code with equivalent code that take up less space.

## Module design

Designing a fitting module structure for a program can be difficult. In the phase where you are still exploring the problem, trying different things to see what works, you might want to not worry about it too much, since keeping everything organized can be a big distraction. Once you have something that feels solid, that is a good time to take a step back and organize it.
