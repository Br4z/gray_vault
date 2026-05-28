---
reviewed_on: 2026-05-27
---

# what is a MCP?

MCP stands for **model context protocol**. It is an open standard that lets AI applications connect to external systems such as files, databases, business tools, developer tools, search engines and specialized workflows.

The main idea is standardization. Instead of building a custom integration for every tool or data source, an application can use MCP as a common protocol. This makes it easier for models and agents to discover available tools, request information and perform actions through a consistent interface.

MCP is often compared to a universal connector for AI applications, because it reduces the need for many separate AI integrations.

## Basic architecture

MCP usually involves two sides:

1. MCP client: this is the AI application, assistant or agent that wants to access tools or data.

2. MCP server: this is the service that exposes tools, resources or prompts through the MCP protocol.

The server describes what it can do, including the available tools and the expected input format.

## What can a MCP expose?

An MCP server can expose several kinds of capabilities:

- Tools: these are actions that can be called by a model, such as searching a database, creating a ticket or reading a file.

- Resources: these are pieces of data or context that can be read by the model, such as documents, records or metadata.

- Prompts: these are reusable instructions or workflows that help guide model behavior for a specific task.

## Important cautions

MCP does not automatically make a system safe. Since MCP can give models access to tools and data, permissions, authentication, logging and human approval may still be needed.

A well-designed MCP setup should expose only the tools and data that are necessary for the task. Sensitive actions should require clear controls, especially when external systems can be modified.
