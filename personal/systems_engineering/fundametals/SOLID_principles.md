---
reviewed_on: "2026-01-13"
---

# SOLID principles

## Single responsibility

**A class should have one, and only one, reason to change**. Each class should focus on a single task or functionality. If a class does too many things, it becomes difficult to maintain.

## Open/closed

**Software entities should be open for extension, but closed for modification**. Achievable with **interfaces** or **abstract classes**.

## Liskov substitution

**Subtypes must be substitutable for their base types**. If class B inherits from class A, an exchange can be performed without crashing the application or confusing the user.

## Interface segregation

**Clients should not be forced to depend on interfaces they do not use**. In other words, it is better to have several small, specific interfaces than one large, "fat" interface.

## Dependency inversion

**Depend upon abstractions, not concretions**. High-level modules should not depend on low-level modules. Both should depend on abstractions (interfaces).
