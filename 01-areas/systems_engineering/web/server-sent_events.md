---
reviewed_on: 2026-03-17
---

# Server-sent events

It is a browser mechanism for receiving a continuous stream of events from a server over HTTP through the `EventSource` interface.

A connection is opened to an endpoint that keeps sending events over time. Communication is one-way: data is pushed from the server to the client.

## Event stream

The stream is sent with the `text/event-stream` format. Each message can contain `data`, may declare a custom `event` name, and is decoded as UTF-8 text. The default event type is `message`.

## Why is it used?

It is useful when the server must keep pushing updates but messages do not need to be sent back from the client on the same channel.

## Important note

Reconnection is usually handled automatically by the browser if the connection is closed. The stream can be ended without reconnection by responding with HTTP `204 No Content`.
