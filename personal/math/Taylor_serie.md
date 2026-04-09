---
reviewed_on: "2024-09-24"
---

# Taylor serie

Suppose that $f \in C^{ n + 1 } [a,b]$, $f^{ n + 1 }$ exists on $[a,b]$, and $x_0 \in [a,b]$. For every $x \in [a,b]$, there exists a number $\xi(x)$ between $x_0$ and $x$ such that:

> $f \in C^{ n + 1 } [a,b]$ means that the function and its first $n + 1$ derivatives are continuous on that interval.

$$
f(x) = P_n(x) + R_n(x)
$$

where

$$
P_n(x) = f(x_0) + f'(x_0) (x - x_0) + \frac{ f''(x_0) }{ 2! } (x - x_0)^2 + \dots + \frac{ f^n(x_0) }{ n! } (x - x_0)^n \\[10 pt]

P_n(x) = \sum_{ k = 0 }^n \frac{ f^k(x_0) }{ k! } (x - x_0)^k
$$

$$
R_n(x) = \frac{ f^{ n + 1 }(\xi(x)) }{ (n + 1)! } (x - x_0)^{ n + 1 }
$$

Here, $P_n(x)$ is called the nth Taylor polynomial for $f$ at $x_0$, and $R_n(x)$ is called the remainder term (or truncation error) associated with $P_n(x)$. Since the number $\xi(x)$ in the truncation error $R_n(x)$ depends on the value of $x$ at which the polynomial $P_n(x)$ is being evaluated, it is a function of the variable $x$. However, we should not expect to be able to explicitly determine the function $\xi(x)$. Taylor's Theorem simply assures that such a function exists and that its value lies between $x$ and $x_0$. In fact, one common problem in numerical methods is trying to determine a realistic bound for the value of $f^{n + 1}(\xi(x))$ when $x$ is within a specified interval.

The infinite series obtained by taking the limit of $P_n(x)$ as $n \to \infty$ are called the Taylor series for $f$ at $x_0$. In the case where $x_0 = 0$, the Taylor polynomial is often called a Maclaurin polynomial, and the Taylor series is often called a Maclaurin series.

The term truncation error in the Taylor polynomial refers to the error involved in using a truncated, or finite, sum to approximate the sum of an infinite series.
