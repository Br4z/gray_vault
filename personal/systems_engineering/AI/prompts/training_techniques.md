---
reviewed_on: 2026-02-21
---

# Training techniques

Training techniques do not mean retraining the model; they are structured methods to guide reasoning, behavior, and output quality through prompt design.

## Zero-shot

Give the model a task without examples; best for simple tasks, well-defined instructions, and fast responses; less reliable for complex reasoning.

## Few-shot

Provide examples before the task; works via pattern imitation; best for formatting consistency, classification tasks, and structured outputs.

## Chain-of-thought (COT)

Explicitly instruct the model to reason step-by-step; encourages intermediate reasoning; best for math, logic, and multi-step reasoning.

## Role

Passing a role or persona; activates relevant behavioral and stylistic patterns; best for tone control, domain-specific responses, and professional simulations.

## Instruction framing

Structure instructions clearly using **sections** and **constraints**; reduces ambiguity and increases compliance.

## Output structuring

Force a predefined response format; best for APIs, production systems, and automation pipelines.

## Framework PPS (person-problem-solution)

A structured way to design prompts that are user-centered and context-aware.
