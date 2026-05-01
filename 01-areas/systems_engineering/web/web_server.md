---
reviewed_on: 2026-03-17
---

# Web server

It is a server whose main responsibility is to receive HTTP or HTTPS requests and deliver web content efficiently.

## What does it do?

A web server accepts network connections, interprets HTTP requests, and returns responses such as HTML, CSS, JavaScript, images, files or error pages. It is very often the first public layer that receives traffic from clients.

In addition to serving files, a web server commonly handles tasks such as TLS termination, virtual hosts, URL routing, redirects, compression, caching, logging, authentication checks and [[personal/systems_engineering/web/reverse_proxy|reverse proxying] .

## Relation with dynamic applications

A web server is often placed in front of an application server or another backend service. In that arrangement, the web server can serve static assets directly and forward only the requests that require server-side execution.

## Why does it exist?

Its job is focused on delivery, connection handling and HTTP concerns. For that reason, it is usually optimized for handling many concurrent requests efficiently and for protecting or simplifying access to backend services.

---

The usual shortcut is that a web server serves static content. That is useful as a first approximation, but it is incomplete. A web server can also proxy requests and participate in the delivery of dynamic content, even when the application logic is actually executed elsewhere.
