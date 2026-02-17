---
reviewed_on: "2025-02-03"
---

# Small prime divisor theorem

If $n$ is a composite number, then it has a prime divisor less than or equal to $\sqrt{ n }$.

$$
\forall n \in \mathbb{N} \pand n > 1 \pand n \notin \mathbb{P} \implies \exists p : p \in \mathbb{P} \pand p \mid n \pand p \leq \sqrt{ n }
$$

## Proof

A composite number is a number that has at least one prime divisor other than itself and 1. If $n$ is a composite number, then it has at least one pair of divisors, say $a$ and $b$, such that $n = a * b$.

If both $a$ and $b$ were greater than $\sqrt{ n }$, then $a * b$ would be greater than $n$, which is a contradiction. Similarly, if both $a$ and $b$ were less than $\sqrt{ n }$, then $a * b$ would be less than $n$, which is also a contradiction.

Therefore, if $n = a * b$ for some pair of numbers $a$ and $b$, then necessarily one of them must be less than or equal to $\sqrt{ n }$ and the other must be greater than or equal to $\sqrt{ n }$. Since $n$ is composite, at least one of these numbers, $a$ or $b$, must be a prime number. Hence, $n$ has a prime divisor less than or equal to $\sqrt{ n }$.
