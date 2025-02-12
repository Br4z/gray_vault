---
reviewed_on: "2024-09-24"
---

# Newton Raphson method

It is an algorithm for finding approximations of the zeros or roots of a real function. It can also be used to find the maximum or minimum of a function by finding the zeros of its first derivative.

## Description

Newton's method is an open method in the sense that its global convergence is not guaranteed. The only way to achieve convergence is to select an initial value close enough to the desired root.

Given $f:[a,b] \rightarrow \mathbb{ R }$ a derivable function defined on the real interval $[a,b]. We start with an initial value $x_0$ and define for each natural number $n$

$$
x_{ n + 1 } = x_n - \frac{ f(x_n) }{ f'(x_n) }
$$

## Demonstration

Developing the [Taylor serie](./006-Taylor_serie.md) of $f$ around $x_n$.

$$
f(x) = f(x_n) + f'(x_n) (x - x_n) + \frac{ f''(x_n) }{ 2! } (x - x_n)^2 + \dots
$$

If the development is truncated starting from the term of degree 2, and we evaluate in $x_{ n + 1 }$.

$$
f(x_{ n + 1 }) = f(x_n) + f'(x_n) (x_{ n + 1 } - x_n)
$$

If it is also accepted that $x_{ n + 1 }$ tends to the root, it must be satisfied that $f(x_{ n + 1 }) = 0$ then, substituting in the previous expression, we obtain the algorithm.

$$
0 = f(x_n) + f'(x_n) (x_{ n + 1 } - x_n) \\[10 pt]

f'(x_n) x_{ n + 1 } = f'(x_n) x_n - f(x_n) \\[10 pt]

x_{ n + 1 } = \frac{ f'(x_n) x_n - f(x_n) }{ f'(x_n) } \\[10 pt]

x_{ n + 1 } = x_n - \frac{ f(x_n) }{ f'(x_n) }
$$
