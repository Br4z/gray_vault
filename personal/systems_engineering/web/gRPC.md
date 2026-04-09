---
reviewed_on: 2026-03-17
---

# gRPC

It is a remote procedure call framework used for communication between distributed applications and services. It allows methods on a server to be called from a client as part of a defined service contract, which makes it well suited to backend and service-to-service communication.

In gRPC, the API is organized around services and remote methods instead of around resource URLs. A contract is defined first, and communication happens by calling those methods with structured request and response messages.

This means that the interface is explicit and strongly typed, and that the same contract can be used to generate code for different programming languages.

## Service definition and protocol buffers

By default, gRPC uses protocol buffers as both the interface definition language and the message format. Services, methods, request messages, and response messages are described in a `.proto` file.

From that definition, code can be generated for clients and servers. The client receives a stub with the available remote methods, while the server implements the service defined in the contract.

## Types of RPC

- `unary`: a single request is sent and a single response is returned.

- `server streaming`: one request is sent and a stream of responses is returned.

- `client streaming`: a stream of requests is sent and one response is returned.

- `bidirectional streaming`: both sides exchange streams of messages independently.

## Why is it used?

gRPC is often chosen when efficient communication, strong contracts, and code generation are important. It is especially common in distributed systems where many backend services must communicate reliably and with low overhead.

It also provides features such as streaming, authentication, load balancing, tracing and health checking.

---

gRPC is often used between backend services rather than directly from browsers. In browser-based environments, a related approach such as gRPC-Web is often used instead.
