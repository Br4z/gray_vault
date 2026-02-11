---
reviewed_on: "2025-02-10"
---

# Properties

# 1

$$
\log_b b = 1 \rightarrow b^1 = b
$$

# 2

$$
\log_b 1 = 0 \rightarrow b^0 = 1
$$

# 3

$$
b^{ \log_b a } = a \rightarrow \log_b a = \log_b a
$$

Using the [[personal/math/logarithm/definition|definition]].

# 4

$$
\log_b a^n = n \log_b a
$$

$$
\begin{align}
	& b^{ n\log_b a } = a^n \\
	& a^n = (b^{ \log_b a })^n \\
	& a^n = a^n
\end{align}
$$

# 5

$$
\log_b ac = \log_b a + \log_b c
$$

$$
\begin{align}
	& \begin{array}{lr}
			p = \log_b a & q = \log_b c \\[5 pt]
			a = b^p      & c = b^q
		\end{array} \\
	& \log_b { b^p * b^q } = \log_b b^{ p + q } \\
	& (p + q) \log_b b \\
	& = p + q \\
	& = \log_b a + \log_b c
\end{align}
$$

# 6

$$
\log_b \frac{ a }{ c } = \log_b a - \log_b c
$$

$$
\begin{align}
	& \log_b a c^{ -1 } \\
	& = \log_b a + \log_b c^{ -1 } \\
	& = \log_b a - \log_b c
\end{align}
$$

# 7

$$
\log_b a = \frac{ \log_c a }{ \log_c b } \quad b \neq 1
$$

$$
\begin{align}
	& b^c = a \\
	& \log_c a = \log_c b^c \\
	& \log_c a = c \log_c b \\
	& \log_c a = \log_b a \log_c b \\
	& \log_b a = \frac{ \log_c a }{ \log_c b }
\end{align}
$$

# 8

$$
n^{ \log_y x } = x^{ \log_y n } \quad \{n,x,y\} \in \mathbb{ N } \pand y \neq 1
$$

$$
\begin{align}
	& \log_y(n^{ \log_y x }) = \log_y(x^{ \log_y n }) \\
	& \log_y x \log_y n = \log_y n \log_y x \\
	& \frac{ \log_y x \log_y n }{ \log_y n } = \frac{ \log_y n \log_y x }{ \log_y n } \\
	& \log_y x = \log_y x
\end{align}
$$
