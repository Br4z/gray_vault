---
reviewed_on: 2026-03-17
---

# WebSocket

It is a protocol and browser API for maintaining bidirectional communication between a client and a server through a single open connection.

A connection is established once and then kept open so messages can be exchanged in both directions whenever needed. Communication is centered on messages and events rather than on separate request-response cycles.

## Browser API

In browser code, a `WebSocket` object is created for a URL. Once the connection is open, messages can be sent with `send()`, and incoming data is handled through events such as `open`, `message`, `error`, and `close`.

## Why is it used?

It is useful when ongoing two-way communication is needed and repeated polling would be inefficient or awkward.

## Important note

WebSocket is connection-based, not resource-based. The focus is placed on a long-lived channel through which messages are exchanged continuously.
