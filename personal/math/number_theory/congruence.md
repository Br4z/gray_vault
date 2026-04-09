---
reviewed_on: "2025-02-03"
---

# Congruence

If $a$ and $b$ are integers and $m$ is a positive integer, then $a$ is congruent to $b$ modulo $m$ if and only if $a \mod m = b \mod m$.

> $a$ and $b$ have the same remainder when they are divided by $m$.

$$
\forall a,b,m \in \mathbb{Z} \; m > 0 \quad a \equiv b \pmod{ m } \iff a \mod m = b \mod m
$$

$$
\begin{align}
	& a = q m + r \\
	& b = p m + r \\
	& a - b = (q m + r) - (p m + r) \\
	& = (q - p) m
\end{align}
$$

Subtracting two integers ($q$ and $p$) gives another integer, so $m \mid (a - b)$.

## Properties

### Reflexivity

$$
\forall a,m \in \mathbb{Z} \; m > 0 \quad a \equiv a \pmod{ m }
$$

### Symmetry

$$
\forall a,b,m \in \mathbb{Z} \; m > 0 \quad a \equiv b \pmod{ m } \iff b \equiv a \pmod{ m }
$$

### Transitivity

$$
\forall a,b,c,m \in \mathbb{Z} \; m > 0 \quad a \equiv b \pmod{ m } \pand b \equiv c \pmod{ m } \implies a \equiv c \pmod{ m }
$$

## Theorem

$$
\begin{multline}
	a \pmod{ m } = b \pmod{ m } \pand c \pmod{ m } = d \pmod{ m } \implies \\
	(a + c) \pmod{ m } = (b + d) \pmod{ m } \; \pand \\
	(a c) \pmod{ m } = (b d) \pmod{ m }
\end{multline}
$$
