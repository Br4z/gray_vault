---
reviewed_on: "2025-11-08"
---

# The document object model

> "Too bad! Same old story! Once you've finished building your house you notice you've accidentally learned something that you really should have known-before you started." - Friedrich Nietzsche, Beyond Good and Evil.

## Trees

We call a data structure a **tree** when it has a branching structure, no cycles (a node may not contain itself, directly or indirectly), and a single, well-defined root. In the case of the DOM, `document.documentElement` serves as the root.

## The standard

Using cryptic numeric codes to represent node types is not a very JavaScript-like thing to do. Later in this chapter, we will see that other parts of the DOM interface also feel cumbersome and alien. This is because the DOM interface was not designed for JavaScript alone. Rather, it tries to be a language-neutral interface that can be used in other systems as well, not just for HTML but also for XML, which is a generic data format with an HTML-like syntax.

## Moving through the tree

...every node has a `parentNode` property that points to the node it is part of, if any. Likewise, every element node (node type 1) has a `childNodes` property that points to an array-like object holding its children.

...The `firstChild` and `lastChild` properties point to the first and last child elements or have the value `null` for nodes without children. Similarly, `previousSibling` and `nextSibling` point to adjacent nodes...For a first child, `previousSibling` will be `null`, and for a last child, `nextSibling` will be `null`.

There is also the children property, which is like `childNodes` but contains only element (type 1) children, not other types of child nodes.

## Attributes

HTML allows you to set any attribute you want on nodes...To read or change custom attributes, which are not available as regular object properties, you have to use the `getAttribute` and `setAttribute` methods.

There is a commonly used attribute, class, which is a keyword in the JavaScript language. For historical reasons (some old JavaScript implementations could not handle property names that matched keywords) the property used to access this attribute is called `className`. You can also access it under its real name, "class", with the `getAttribute` and `setAttribute` methods.

## Layout

...Some, such as paragraphs (`<p>`) or headings (`<h1>`), take up the whole width of the document and are rendered on separate lines. These are called **block** elements. Others, such as links (`<a>`) or the `<strong>` element, are rendered on the same line with their surrounding text. Such elements are called **inline** elements.

The size and position of an element can be accessed from JavaScript. The `offsetWidth` and `offsetHeight` properties give you the space the element takes up in **pixels**. A pixel is the basic unit of measurement in the browser. It traditionally corresponds to the smallest dot that the screen can draw, but on modern displays, which can draw **very** small dots, that may no longer be the case, and a browser pixel may span multiple display dots.

Similarly, `clientWidth` and `clientHeight` give you the size of the space **inside** the element, ignoring border width.

$$
\begin{align}
	& \text{offsetWidth} = \text{content width} + \text{left/right padding} + \text{left/right border} \\
	& \text{offsetHeight} = \text{content height} + \text{top/bottom padding} + \text{top/bottom border} \\
	& \text{clientWidth} = \text{content width} + \text{left/right padding} \\
	& \text{clientHeight} = \text{content height} + \text{top/bottom padding} 
\end{align}
$$

## Styling

A style attribute may contain one or more **declarations**, which are a property followed by a colon and a value. When there is more than one declaration, they must be separated by semicolons.

Some style property names contain hyphens, such as `font-family`. Because such property names are awkward to work with in JavaScript (you would have to say `style["font-family"]`), the property names in the style object for such properties have their hyphens removed and the letters after them capitalized (`style.fontFamily`).

## Cascading styles

The styling system for HTML is called **CSS**, for **cascading style sheets**. A **style sheet** is a set of rules for how to style elements in a document.

The **cascading** in the name refers to the fact that multiple such rules are combined to produce the final style for an element.

When multiple rules define a value for the same property, the most recently read rule gets a higher precedence and wins...Styles in a `style` attribute applied directly to the node have the highest precedence and always win.

The precedence rule favoring the most recently defined rule applies only when the rules have the same **specificity**. A rule's specificity is a measure of how precisely it describes matching elements, determined by the number and kind (tag, class, or ID) of element aspects it requires.

## Query selectors

The `querySelectorAll` method, which is defined both on the document object and on element nodes, takes a selector string and returns a `NodeList` containing all the elements that it matches.

Unlike methods such as `getElementsByTagName`, the object returned by `querySelectorAll` is **not** live.

## Positioning and animating

The `position` style property influences layout in a powerful way. It has a default value of `static`, meaning the element sits in its normal place in the document. When it is set to `relative`, the element still takes up space in the document, but now the `top` and `left` style properties can be used to move it relative to that normal place. When position is set to `absolute`, the element is removed from the normal document flow-that is, it no longer takes up space and may overlap with other elements. Its `top` and `left` properties can be used to absolutely position it relative to the upper-left corner of the nearest enclosing element whose position property is not `static`, or relative to the document if no such enclosing element exists.

If we just updated the DOM in a loop, the page would freeze, and nothing would show up on the screen. Browsers do not update their display while a JavaScript program is running, nor do they allow any interaction with the page. This is why we need `requestAnimationFrame`...
