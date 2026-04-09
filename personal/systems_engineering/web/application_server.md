---
reviewed_on: 2026-03-17
---

# Application server

It is a server whose main responsibility is to run server-side application code and provide the runtime services that the application needs.

## What does it do?

An application server executes the application logic that produces dynamic responses. A request is received, the corresponding code is run, business rules are applied, data may be read or written and a result is returned.

## Runtime services

In addition to executing code, an application server can provide services such as request dispatching, session handling, security, configuration, database connectivity, transactions, messaging or component lifecycle management. The exact set depends on the platform.

## Relation with a [[personal/systems_engineering/web/web_server|web server]]

An application server often sits behind a web server. The web server handles the public HTTP layer, while the application server handles the internal execution of the application.

## Why does it exist?

Its job is focused on application behavior rather than raw delivery of files. For that reason, it is designed around code execution and the services needed by the application runtime.

---

An application server can also return web content, and in some products the distinction from a web server becomes less rigid. The main difference is still the primary responsibility: running the application itself.
