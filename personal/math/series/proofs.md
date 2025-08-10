---
reviewed_on: "2025-02-09"
---

# Proofs

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ i = 0 }^n { 2^i } = 2^{ n + 1 } - 1$

### Base case ($\sum_{ i = 0 }^n { 2^i } = 2^{ n + 1 } - 1$)

$$
\begin{align}
	& \sum_{ i = 0 }^{ n = 0 } { 2^i } = 2^{ n + 1 } - 1 \\
	& 2^0 = 2^{ 0 + 1 } - 1 \\
	& 1 = 1
\end{align}
$$

### Induction case ($\sum_{ i = 0 }^n { 2^i } = 2^{ n + 1 } - 1$)

$$
\begin{align}
	& \sum_{ i = 0 }^{ n + 1 } { 2^i } = 2^{ (n + 1) + 1 } - 1 \\
	& 2^0 + 2^1 + \dots + 2^n + 2^{ n + 1 } = 2^{ n + 2 } - 1 \\
	& \underbrace{ 2^{ n + 1 } - 1 }_{ 2^0 + 2^1 + \dots + 2^n } + 2^{ n + 1 } = (2^{ n + 1 } + 2^{ n + 1 }) - 1 \\
	& 2^{ n + 1 } (1 + 1) - 1 = 2^{ n + 2 } - 1
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^n k = \frac{ n (n + 1) }{ 2 }$ (arithmetic series)

$$
\begin{align}
	& \begin{array}{lcllll}
			S   & = & 1       & + 2       & + \dots & + (n - 1) + n \\
			S   & = & (n - 1) & + (n - 2) & + \dots & + (n - (n - 1)) \\
			\hline
			2 S & = & n^2 + n
		\end{array} \\
	& S = \frac{ n^2 + n }{ 2 } = \frac{ n (n + 1) }{ 2 }
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^n k^2 = \frac{ n (n + 1) (2 n + 1) }{ 6 }$ (square series)

- $a^3 - b^3 = (a -b) (a^2 + a b + b^2)$.

$$
\begin{array}{lcr}
	k^3 - (k - 1)^3                         & = & (k - (k - 1)) (k^2 + k (k - 1) + (k - 1)^2) \\
	                                        & = & k^2 + k^2 - k + k^2 - 2 k + 1 \\
	                                        & = & 3 k^2 - 3 k + 1 \\
	(k - 1)^3 - ((k -1) - 1)^3              & = & 3 (k - 1)^2 - 3 (k - 1) + 1 \\
	(k - 2)^3 - ((k -2) - 1)^3              & = & 3 (k - 2)^2 - 3 (k - 2) + 1 \\
	\vdots                                  &   & \\
	(k - (k - 1))^3 - ((k - (k - 1)) - 1)^3 & = & 3 (1)^2 - 3 (1) + 1
\end{array}
$$

If we observe, the second term of the subtraction cancels with the first term of the next element, for example, the $-(n - 1)^3$ of the first element and the $(n - 1)^3$ of the second element.

$$
\begin{align}
	& \sum_{ k = 1 }^n k^3 - (k - 1)^3 = n^3 - 0^3 \\
	& n^3 = 3 \sum_{ k = 1 }^n k^2 - 3 \sum_{ k = 1 }^n k + n \\
	& \sum_{ k = 1 }^n k^2 = \frac{ 1 }{ 3 } \left (n^3 + 3 \sum_{ k = 1 }^n k - n \right ) \\
	& = \frac{ n }{ 3 } \left (n^2 + 3 \frac{ (n + 1) }{ 2 } - 1 \right ) \\
	& = \frac{ n }{ 3 } \left (\frac{ 2 n^2 + 3 n + 3 - 2 }{ 2 } \right ) \\
	& = \frac{ n }{ 3 } \left (\frac{ (2 n + 1) (n + 1) }{ 2 } \right ) \\
	& = \frac{ n (2 n + 1) (n + 1) }{ 6 }
\end{align}
$$

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^n k^3 = \frac{ n^2 (n + 1)^2 }{ 4 }$ (cube series)

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 0 }^n x^k = \frac{ x^{ n + 1 } - 1 }{ x - 1 }$ (geometric series)

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 0 }^\infty x^k = \frac{ 1 }{ 1 - x } \quad |x| < 1$ (geometric series)

## $\forall{ n } \in \mathbb{ N }^*$ satisfied that $\sum_{ k = 1 }^{ n } \frac{ 1 }{ k } = \ln n +$ (harmonic series)
