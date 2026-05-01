---
reviewed_on: "2025-02-09"
---

# Finite differences

We want to approximate the derivatives of a function $y(x)$ numerically in a discrete domain. Suppose we have a grid of points on $x$ with spacing $\Delta{ x }$, where the values of the function at those points are denoted as $y_i = y(x_i)$ and the indices $i$ represent the position on the grid.

The derivate of a continuous function $y(x)$ is given by:

$$
y'(x) = \lim_{ \Delta{ x } \to 0 } \frac{ y(x + \Delta{ x }) - y(x) }{ \Delta{ x } }
$$

However, in a discrete space (with a fixed $\Delta{ x }$ step), we must approximate this value using finite differences.

## First derivate forward approximation

$$
y'(x_i) = \lim_{ \Delta{ x } \to 0 } \frac{ y_{ i + 1 } - y_i }{ \Delta{ x } }
$$

## First derivate backward approximation

$$
y'(x_i) = \lim_{ \Delta{ x } \to 0 } \frac{ y_i - y_{ i - 1 } }{ \Delta{ x } }
$$

## First derivate centered approximation

Let's expand the Taylor serie of $x_i \pm \Delta{ x }$ around $x_i$.

> $(x_i \pm \Delta{ x }) - x_i = \pm \Delta{ x }$.

- $y(x_i + \Delta{ x })$ $(1)$.

	$$
	y(x_i) + y'(x_i) \Delta{ x } + \frac{ y''(x_i) \Delta{ x }^2 }{ 2 } + \frac{ y'''(x_i) \Delta{ x }^3 }{ 3 } + \dots
	$$

- $y(x_i - \Delta{ x })$ $(2)$.

	$$
	y(x_i) - y'(x_i) \Delta{ x } + \frac{ y''(x_i) \Delta{ x }^2 }{ 2 } - \frac{ y'''(x_i) \Delta{ x }^3 }{ 3 } + \dots
	$$

Subtracting $(2)$ from $(1)$.

$$
\begin{align}
	& y(x_i + \Delta{ x }) - y(x_i - \Delta{ x }) = 2 y'(x_i) \Delta{ x } + O(\Delta{ x }^3) \\
	& y'(x_i) = \frac{ y(x_i + \Delta{ x }) - y(x_i - \Delta{ x }) }{ 2 \Delta{ x } }
\end{align}
$$

## Second derivate

Adding $(1)$ and $(2)$.

$$
\begin{align}
	& y(x_i + \Delta{ x }) + y(x_i - \Delta{ x }) = 2 y(x_i) + y''(x_i) \Delta{ x }^2 + O(\Delta{ x }^3) \\
	& y''(x_i) = \frac{ y(x_i + \Delta{ x }) - 2 y(x_i) + y(x_i - \Delta{ x }) }{ \Delta{ x }^2 }
\end{align}
$$
