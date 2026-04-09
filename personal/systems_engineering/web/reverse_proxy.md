---
reviewed_on: 2026-03-16
---

# Reverse proxy

It is a server placed between clients and backend services. Incoming requests are received first by the proxy and then forwarded to the appropriate internal server. From the client side, the reverse proxy appears to be the main server, while the actual backend remains hidden behind it.

## Why it sits in front of the backend

A reverse proxy is placed in front of the backend so that direct access to internal services is avoided. This allows traffic to be controlled before it reaches the application servers. Routing decisions, filtering, authentication checks, caching and load balancing can all be handled at this front layer, which reduces complexity in the backend and creates a cleaner architecture.

## Benefits

The application performance is improved because caching, compression, connection reuse, and load balancing can be handled by the proxy. As a result, backend servers can focus more on application logic and less on repetitive network tasks.
