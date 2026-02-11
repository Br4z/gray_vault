---
reviewed_on: "2025-02-10"
---

# Types

## Arithmetic

Is a sequence of numbers such that the difference from any succeeding term to its preceding term remains constant throughout the sequence. The constant difference is called common difference of that arithmetic progression.

$$
a_n = a_1 + n (d - 1)
$$

- $a_1$: initial term of an arithmetic sequence.

- $d$: the common difference of successive members.

### Sum

The sum of the members of a finite arithmetic progression is called an **arithmetic series**.

$$
\begin{align}
	& S_n = a_1 + a_2 + \dots + a_{ n - 1 } + a_n \quad (1) \\
	& S_n = a_1 + (a_1 + d) + \dots + (a_1 + (n - 2) d) + (a_1 + (n - 1) d) \quad (2)
\end{align}
$$

Rewriting the terms in reverse order of $(2)$.

$$
S_n = (a_1 + (n - 1) d) + (a_1 + (n - 2) d) + \dots + (a_1 + d) + a_1 \quad (3)
$$

Adding $(2)$ and $(3)$.

$$
\begin{align}
	& \begin{array}{lclllll}
			S_n   & = & a_1               & + (a_1 + d)         & + \dots & + (a_1 + (n - 2) d) & + (a_1 + (n - 1) d) \\
			S_n   & = & (a_1 + (n - 1) d) & + (a_1 + (n - 2) d) & + \dots & + (a_1 + d)          & + a_1 \\
			\hline
			2 S_n & = & n (2 a_1 + (n - 1) d)
		\end{array} \\
	& S_n = \frac{ n }{ 2 } (2 a_1 + (n - 1) d) \quad (4)
\end{align}

$$

Rewriting $(4)$.

$$
\begin{align}
	& S_n = n \frac{ a_1 + a_1 + (n - 1) d }{ 2 } \\
	& = n \frac{ a_1 + a_n }{ 2 }
\end{align}

$$

[[personal/math/serie/proofs#$ forall{ n } in mathbb{ N } *$ satisfied that $ sum_{ k = 1 } n k = frac{ n (n + 1) }{ 2 }$ (arithmetic series)|Gauss sum]]

## Geometric sequence

Is a sequence of numbers where each term after the first is found by multiplying the previous one by a fixed, non-zero number called the common **ratio**.

$$
a_n = a_1 r^{ n - 1 }
$$

- $a_1$: initial term of a geometric sequence.

- $r$: the **ratio** of a geometric sequence.

This sequence follows the recursive relation.

$$
a_n = r a_{ n - 1 } \quad n \in \mathbb{ N } \; n \geq 2
$$
