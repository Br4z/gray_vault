---
reviewed_on: 2026-03-17
---

# GraphQL

It is a query language for APIs and a server-side runtime for executing queries against a type system defined for the data. It allows exactly the needed fields to be requested, and the returned result mirrors the requested structure.

In GraphQL, the API is organized around types and fields instead of around many resource URLs. A schema describes what can be queried, and clients send operations that select the fields that should be returned.

This means that the client decides the shape of the response, while the server resolves those fields from existing code and data sources.

## Schema and type system

A GraphQL schema defines the available types, fields and relationships between pieces of data. Because the schema is strongly typed, queries can be validated before execution and the available structure can be described clearly.

## Operations

- `query`: is used to read data.

- `mutation`: is used to change data.

- `subscription`: is used to receive real-time updates.

## Why it is used

GraphQL is useful when flexible data fetching is needed. Only the requested fields are returned, which helps reduce over-fetching and under-fetching. It is also useful when related data from different parts of the system must be requested in one operation.

> GraphQL is often treated as an alternative to [[personal/systems_engineering/web/REST|REST]], but both approaches can coexist in the same system. A GraphQL layer can even be placed in front of existing REST services.
