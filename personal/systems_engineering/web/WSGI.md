---
reviewed_on: 2026-03-17
---

# WSGI

It stands for web server gateway interface. It is the Python standard interface between a web server and a web application or framework.

A server invokes the application once for each HTTP request. The application receives request data through `environ`, starts the response through `start_response`, and returns an iterable that provides the response body.

## Why is it used?

WSGI was designed to make Python web servers and Python web frameworks interoperable. Because of that, an application can be moved between different WSGI-compatible servers more easily.

## Best fit

WSGI fits the classic HTTP request-response model very well. It is well suited to traditional server-rendered sites and conventional APIs.

## Important limitation

Its design is tied to the HTTP-style request-response cycle. For that reason, it is not the natural model for long-lived, bidirectional protocols such as WebSocket.
