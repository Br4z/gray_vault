---
reviewed_on: "2025-05-16"
---

# Fundamental rules of propositional logic

## Identity

- $p \pand T \equiv p$.

- $p \por T \equiv p$.

## Domination

- $p \por T \equiv T$.

- $p \pand F \equiv F$.

## Idempotent

- $p \pand p \equiv p$.

- $p \por p \equiv p$.

## Double negation

$$
\neg (\neg p) \equiv p
$$

## Commutative

- $p \por q \equiv q \por p$.

- $p \pand q \equiv q \pand p$.

## Associative

- $(p \pand q) \pand r \equiv p \pand (q \pand r)$.

- $(p \por q) \por r \equiv p \por (q \por r)$.

## Distributive

- $p \por (q \pand r) \equiv (p \por q) \pand (p \por r)$.

- $p \pand (q \por r) \equiv (p \pand q) \por (p \pand r)$.

## Absorption

- $p \por (p \pand q) \equiv p$.

- $p \pand (p \por q) \equiv p$.

## Morgan's

- $\neg(p \pand q) \equiv \neg p \por \neg q$.

- $\neg(p \por q) \equiv \neg p \pand \neg q$.

## Biconditional definition

$$
p \leftrightarrow q \equiv (p \implies q) \pand (q \implies p)
$$

## Biconditional negation

$$
\neg(p \leftrightarrow q) \equiv (p \pand \neg q) \por (\neg p \pand q)
$$

## Inverse conditional

$$
p \por q \equiv \neg p \implies q
$$
