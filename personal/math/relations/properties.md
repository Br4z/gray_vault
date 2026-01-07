---
reviewed_on: "2025-02-02"
---

# Properties

## Reflexive

A relation $R$ defined on the set $A$ is reflexive if:

$$
\forall a \in A \quad (a,a) \in R
$$

## Irreflexive

A relation $R$ defined on the set $A$ is irreflexive if:

$$
\forall a \in A \quad (a,a) \notin R
$$

## Symmetric

A relation $R$ defined on the set $A$ is symmetric if:

$$
\forall a,b \quad ((a,b) \in R \implies (b,a) \in R)
$$

## Antisymmetric

A relation $R$ defined on the set $A$ is antisymmetric if:

$$
\begin{align}
	& \forall a,b \quad ((a,b) \in R \implies (b,a) \notin R) \\
	& \forall a,b \quad (((a,b) \in R \pand (b,a) \in R) \implies a = b)
\end{align}
$$

## Transitive

A relation $R$ defined on the set $A$ is transitive if:

$$
\forall a,b,c \quad (((a,b) \in R \pand (b,c) \in R) \implies (a,c) \in R)
$$

## Equivalence

A relation $R$ defined on the set $A$ is an equivalence relation if:

$$
\begin{multline}
	(\forall a \in A \quad (a,a) \in R) \pand (\forall a,b \quad ((a,b) \in R \implies (b,a) \in R)) \; \pand \\
	(\forall a,b,c \quad (((a,b) \in R \pand (b,c) \in R) \implies (a,c) \in R))
\end{multline}
$$

> That is, it is **reflexive**, **symmetric**, and **transitive**.

## Partial Order

A relation $R$ defined on the set $A$ is a partial order if:

$$
\begin{multline}
	(\forall a \in A \quad (a,a) \in R) \pand (\forall a,b \quad ((a,b) \in R \implies (b,a) \notin R)) \; \pand \\
	(\forall a,b,c \quad (((a,b) \in R \pand (b,c) \in R) \implies (a,c) \in R))
\end{multline}
$$

> That is, it is **reflexive**, **antisymmetric**, and **transitive**.
