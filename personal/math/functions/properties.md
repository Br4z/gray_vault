---
reviewed_on: "2025-02-02"
---

# Properties

## Injectivity

A function $f$ is called one-to-one or injective if and only if each associated image is unique.

$$
\begin{align}
	& \forall a,b \quad (f(a) = f(b) \implies a = b) \\
	& \forall a,b \quad (a \neq b \implies f(a) \neq f(b))
\end{align}
$$

In other words, these are functions that never assign two different elements of the domain to the same value in the codomain.

## Surjective

A function $f$ is surjective **if and only if**, for each element $b \in B$ (codomain), there exists an element $a \in A$ (domain) such that $f(a) = b$.

> In this case, the codomain is **equal** to the range.

$$
\forall y \; \exists x \quad (f(x) = y)
$$

## Bijective

A function $f$ is bijective if it is **injective** and **surjective**.

$$
(\forall a,b \quad (f(a) = f(b) \implies a = b)) \pand (\forall y \; \exists x \; (f(x) = y))
$$
