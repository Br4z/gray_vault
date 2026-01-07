---
reviewed_on: "2025-02-03"
---

# Divisibility

Given $n, m \in \mathbb{Z}$, we say that $n$ divides $m$, denoted $n \mid m$, if:

$$
n \mid m \equiv (\exists q \in \mathbb{Z} : m = n q)
$$

We say that:

- $n$ is a **divisor** of $m$.

- $m$ is a **multiple** of $n$.

## Properties

- If $a \mid b$ and $a \mid c$, then $a \mid (b + c)$.

	$$
	\forall a,b,c \in \mathbb{Z} \quad (a \mid b \pand a \mid c) \implies a \mid (b + c)
	$$

- If $a \mid b$, then $a \mid b c$, for every integer $c$.

	$$
	\forall a,b,c \in \mathbb{Z} \quad a \mid b \implies a \mid b c
	$$

- If $a \mid b$ and $b \mid c$, then $a \mid c$.

	$$
	\forall a,b,c \in \mathbb{Z} \quad (a \mid b \pand b \mid c) \implies a \mid c
	$$
