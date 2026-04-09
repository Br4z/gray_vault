---
reviewed_on: 2026-03-17
---

# ASGI

It stands for asynchronous server gateway interface. It is a standard interface between network protocol servers and Python applications.

An ASGI application is usually an async callable with the form `application(scope, receive, send)`. Communication is event-based: incoming protocol events are received, and outgoing events are sent back.

## Why is it used?

ASGI extends the older request-response model so that data can be sent and received at any time. It is designed to support HTTP, HTTP/2, and WebSocket through a common interface.

## Best fit

ASGI fits applications that need asynchronous handling, streaming, or long-lived connections. It is commonly used when real-time features or concurrent I/O are important.

## Relation with [[personal/systems_engineering/web/WSGI|WSGI]]

ASGI goes beyond the model used by WSGI. WSGI is centered on one HTTP request and one response, while ASGI supports message-based communication over a longer-lived connection when needed.
