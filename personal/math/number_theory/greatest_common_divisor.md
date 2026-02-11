---
reviewed_on: "2025-02-03"
---

# Greatest common divisor

## Greatest Common Divisor (GCD)

Let $a$ and $b$ be nonzero integers. The largest integer $d$ such that $d \mid a$ and $d \mid b$ is called the greatest common divisor of $a$ and $b$, and it is denoted by $\operatorname{ GCD }(a,b)$.

> It is the largest number that divides both.

---

Using the prime factorization of $a$ and $b$:

$$
\begin{align}
	& a = p_1^{ a_1 } p_2^{ a_2 } \dots p_n^{ a_n } \\
	& b = p_1^{ b_1 } p_2^{ b_2 } \dots p_n^{ b_n } \\
	& \operatorname{ GCD }(a,b) = p_1^{ \operatorname{ min }(a_1,b_1) } p_2^{ \operatorname{ min }(a_2,b_2) } \dots p_n^{ \operatorname{ min }(a_n,b_n) }
\end{align}
$$
