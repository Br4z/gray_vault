---
reviewed_on: "2025-12-19"
---

# Handling events

> "You have power over your mind-not outside events. Realize this, and you will find strength." - Marcus Aurelius, Meditations.

## Event handlers

**Polling** is a technique where the system uses a queue to process events. However, its main drawback is that it can make the software feel **unresponsive** due to the delay between queue checks.

A better mechanism is for the system to actively notify the code when an event occurs. Browsers do this by allowing us to register functions as **handlers** for specific events.

## Events and DOM nodes

A handler can be attached to an event using the attribute named by prefixing the event type with "on". However, using this attribute method allows only one handler per event type on a node. To attach multiple handlers to the same event, the `addEventListener` method is required.

The `removeEventListener` method removes a handler when called with arguments matching those used in `addEventListener`. The function passed to `removeEventListener` must be the exact function reference used previously. Therefore, storing the function in a variable or constant is required, as anonymous functions cannot be removed.

## Event objects

Event handler functions are passed an argument: the **event object**. This object holds additional information about the event.

The object's `type` property always holds a string identifying the event.

## Propagation

For most event types, handlers registered on nodes with children will also receive events that happen in the children.

The event is said to **propagate** outward from the node where it happened to that node's parent node and on to the root of the document. Finally, after all handlers registered on a specific node have had their turn, handlers registered on the whole window get a chance to respond to the event.

At any point, an event handler can call the `stopPropagation` method on the event object to prevent handlers further up from receiving the event.

Most event objects have a `target` property that refers to the node where they originated. That property can be used to cast a wide net for a specific type of event.

## Default actions

Many events have a default action. If you click a link, you will be taken to the link's target. If you press the down arrow, the browser will scroll the page down. If you right-click, you will get a context menu. And so on.

For most types of events, the JavaScript event handlers are called **before** the default behavior takes place. If the handler does not want this normal behavior to happen, typically because it has already taken care of handling the event, it can call the `preventDefault` method on the event object.

## Key events

When a key on the keyboard is pressed, your browser fires a `keydown` event. When it is released, you get a `keyup` event.

Despite its name, "keydown" fires not only when the key is physically pushed down. When a key is pressed and held, the event fires again every time the key **repeats**.

Modifier keys such as `SHIFT`, `CTRL` and `ALT` generate key events just like normal keys. When looking for key combinations, you can also find out whether these keys are held down by looking at the `shiftKey`, `ctrlKey` and `altKey` properties of keyboard and mouse events.

The DOM node where a key event originates depends on the element that has focus when the key is pressed. Most nodes cannot have focus unless you give them a `tabindex` attribute, but things like links, buttons, and form fields can.

## Pointers events

### Mouse clicks

Pressing a mouse button causes a number of events to fire. The "mousedown" and "mouseup" events are similar to "keydown" and "keyup" and fire when the button is pressed and released. These happen on the DOM nodes that are immediately below the mouse pointer when the event occurs.

After the "mouseup" event, a "click" event fires on the most specific node that contained both the press and the release of the button.

If two clicks happen close together, a "dblclick" (double-click) event also fires, after the second click event.

### Mouse motion

Every time the mouse pointer moves, a "mousemove" event fires...A common situation in which this is useful is when implementing some form of mouse-dragging functionality.

## Scroll events

Calling `preventDefault` on a scroll event does not prevent the scrolling from happening. In fact, the event handler is called only **after** the scrolling takes place.

## Focus events

When an element gains focus, the browser fires a "focus" event on it. When it loses focus, the element gets a "blur" event.

Unlike the events discussed earlier, these two events do not propagate.

## Load event

When a page finishes loading, the "load" event fires on the window and the document body objects. This is often used to schedule initialization actions that require the whole document to have been built.

Elements such as images and script tags that load an external file also have a "load" event that indicates the files they reference were loaded. Like the focus-related events, loading events do not propagate.

## Events and the event loop

...browser event handlers behave like other asynchronous notifications. They are scheduled when the event occurs but must wait for other scripts that are running to finish before they get a chance to run.

For cases where you **really** do want to do some time-consuming thing in the background without freezing the page, browsers provide something called **web workers**. A worker is a JavaScript process that runs alongside the main script, on its own timeline.

## Timers

The `setTimeout` function schedules another function to be called later, after a given number of milliseconds. Sometimes you need to cancel a function you have scheduled. You can do this by storing the value returned by `setTimeout` and calling `clearTimeout` on it.

## Debouncing

Some types of events have the potential to fire rapidly many times in a row, such as the "mousemove" and "scroll" events. When handling such events, you must be careful not to do anything too time-consuming or your handler will take up so much time that interaction with the document starts to feel slow.

If you do need to do something nontrivial in such a handler, you can use `setTimeout` to make sure you are not doing it too often. This is usually called **debouncing** the event. There are several slightly different approaches to this.