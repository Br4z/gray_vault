---
reviewed_on: 2026-02-25
---

# Gherkin

It is a domain specific language for writing acceptance criteria. It is used to describe business behavior without going into implementation detail.

## Core structure

Given a certain *scenario* (context), when an *action* takes place (event), then this should be the *outcome*.

> The **scenarios** should be specified in third person.

## Keywords

- Feature: the high-level capability or behavior being described (the "what" you want from the system).

- Scenario: a specific example that shows one behavior of the feature in a concrete situation, written as steps.

- Scenario outline: a scenario template that runs multiple times with different input data.

- Examples: the table (or set) of input values used to generate each run of a scenario outline.

- Rule: a way to group scenarios under a single business rule or constraint, so the feature stays organized around important rules.

- Background: shared setup steps that apply to all (or most) scenarios in the same feature file, used to avoid repeating the same "given" context.

- And.

- But.
