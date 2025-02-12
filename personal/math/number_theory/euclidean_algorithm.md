---
reviewed_on: "2025-02-03"
---

# Euclidean algorithm

$$
\forall a,b \in \mathbb{Z} \quad \operatorname{ GCD }(a,b) =
	\begin{cases}
		a                          & b = 0 \\
		\operatorname{ GCD }(b,a\%b) & b \neq 0
	\end{cases}
$$

## Theorem

Let $a$ and $b$ be two positive integers. Then, there exist integers $s$ and $t$ such that:

$$
\operatorname{ GCD }(a,b) = a s + b t
$$

That is, the greatest common divisor of two numbers can be expressed as a linear combination of them with integer coefficients. In general, we have the following:

$$
\begin{align}
	& r_0 = a \quad r_1 = b \\
	& r_0 = r_1 q_1 + r_2 \\
	& r_1 = r_2 q_2 + r_3 \\
	& \vdots \\
	& r_{ n - 3 } = r_{ n - 2 } q_{ n - 2 } + r_{ n - 1 } \\
	& r_{ n - 2 } = r_{ n - 1 } q_{ n - 1 } + r_n \\
	& r_{ n - 1 } = q_n r_n + 0
\end{align}

$$

> $r_n$ corresponds to $\operatorname{ GCD }(a,b)$.

From the second-to-last equation, we could work backward to express $r_n$ in terms of $q_0$ and $r_0$.
