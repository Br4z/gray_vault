---
reviewed_on: 2026-03-01
---

# Style conventions

A consistent style improves scanning, reduces merge conflicts, and makes intent obvious. Modern C# codebases often follow conventions close to the framework design guidelines while also aligning with team preferences and analyzers.

## Naming

Public APIs typically use pascal case for namespaces, types, methods, properties, and events. Private fields are often camel case with a leading underscore, while local variables and parameters remain camel case. Constants are usually pascal case.

## File layout

Most files keep directives first, then the namespace, then types. a common ordering is:

1. `using` and `global using`.

2. Namespace declaration.

3. Type declarations.

Inside a type, a common order is:

- Constant and fields.

- Constructors.

- Public members.

- Internal members.

- Private members.

## Indentation and whitespace

Four spaces per indentation level is common, with tabs avoided unless the codebase is tab-first. Braces are usually on the next line for types and members in many C# styles.

Blank lines are used to separate logical blocks, but excessive vertical spacing makes code harder to scan.

## Braces and one-liners

Braces are usually kept even for single-statement blocks to reduce bugs during future edits. expression-bodied members can be used when they stay readable.
