---
reviewed_on: 2026-03-16
---

# REST

It is an architectural style for designing distributed systems. It describes a set of constraints that make communication between clients and servers more consistent, scalable and easier to maintain.

> The important point is that rest is not an API by itself. It is the design model or style behind many web APIs. A [[personal/systems_engineering/web/REST_API|REST API]] is therefore one possible implementation of rest principles.

In REST, the system is organized around resources. A resource can be anything meaningful in the application, such as a user, a product or an order. Each resource is identified through a URL, and the client interacts with it through standard HTTP methods.

This means that the focus is placed less on custom actions and more on representing and manipulating resources in a predictable way.

## Constraints

REST is usually described through several constraints:

- Client-server separation is maintained so that the frontend and backend can evolve more independently.

- Stateless communication is used, which means each request contains the information needed to be understood.

- Cacheability is encouraged so that responses can be reused when appropriate, improving efficiency.

- A uniform interface is used so that communication follows consistent rules across the system.

- A layered system can be present, which means intermediaries such as proxies or gateways may exist between client and server.

## Resources and representations

In REST, the client does not usually interact with the internal object itself, but with a representation of that resource. That representation is often returned as JSON or XML.

