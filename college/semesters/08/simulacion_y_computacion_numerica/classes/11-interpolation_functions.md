---
reviewed_on: "2025-02-08"
---

# Interpolation functions

## Teorema de existencia y unicidad

$$
(x_0,y_0) \quad (x_1,y_1) \dots (x_n,y_n)
$$

> $n + 1$ puntos diferentes ($x_i \ne x_j$ para $i \ne j$).

Existe un polinomio único $P_n$ tal que $P_n(x_i) = y_i$.

## Método de Newton

$$
P_{ k + 1 }(x) = P_k(x) + c_{ k + 1 } \pi
$$

Sabemos que en $P_{ k + 1 }(x_k)$ $c_{ k + 1 } = 0$.

$$
P_{ k + 1 }(x_k)
$$

$$
\begin{array}{rcl}
	P_0(x_0) = & C_0                                                     & = y_0 \\
	P_1(x_1) = & P_0(x_1) + c_1 (x_1 - x_0)                              & = y_1 \\
	P_2(x_2) = & P_1(x_2) + c_2 (x_2 - x_0) (x_2 - x_1)                  & = y_2  \\
	P_n(x_n) = & P_{ n - 1 } + c_n \prod_{ i = 0 }^{ n - 1 } (x_n - x_i) & = y_n
\end{array}
$$

$$
c_n = \frac{ y_n - P_{ n - 1 }(x_n) }{ \prod_{ i = 0 }^{ n - 1 } (x_n - x_i) }
$$

## Polinomios de Newton

### Tablas de diferencias finitas

$$
\begin{array}{ccccc}
	x      & y      & \nabla^1                                                       & \nabla^2                                                      & \dots  & \nabla^n \\[10 pt]
	x_0    & x_0    & \delta_0 = \frac{ y_{ 0 + 1 } - y_0 }{ x_{ 0 + 1 } - x_0 }     & \frac{ \delta_{ 0 + 1 } - \delta_0 }{ x_{ 0 + 2 } - x_0 }     & \dots  & \frac{ { \delta^{ n - 1 } }_{ 0 + 1 } - { \delta^{ n - 1 } }_0 }{ x_{ 0 + n } - x_0 } \\
	\vdots & \vdots & \vdots                                                         & \vdots                                                        & \vdots & \vdots \\
	x_i    & y_i    & \delta_i = \frac{ y_{ i + 1 } - y_{ i } }{ x_{ i + 1 } - x_i } & \frac{ \delta_{ i + 1 } - \delta_{ i } }{ x_{ i + 2 } - x_i } & \dots  & \frac{ { \delta^{ n - 1 } }_{ i + 1 } - { \delta^{ n - 1 } }_i }{ x_{ i + n } - x_i } \\[10 pt]
	\vdots & \vdots & \vdots                                                         & \vdots                                                        & \vdots & \vdots \\
\end{array}
$$

Tendremos tantos $\nabla$ como puntos tengamos; en cada columna reducimos el tamaño de la entrada para la siguiente columna.

Los coeficientes ($c_i$) son los valores en la primera fila de cada columna de diferencias divididas.

$$
P_n(x) = \sum_{ i = 0 }^n { c_i \prod_{ j = 0 }^{ i - 1 } (x - x_j) }
$$

## Método de Lagrange

$$
P_n(x_i) = y_i
$$

$$
\begin{align}
	& P_n(x_j) = \sum_{ i = 0 }^n { y_i L_i(x_j) } \\
	& L_i(x_j) = \delta_{ ij }
		\begin{cases}
			1 & j =i \\
			0 & j \neq i
		\end{cases}
\end{align}
$$

Esto garantiza que $P_n(x_i) = y_i$ para cada $i$.

$$
\begin{align}
	& P_n(x)= \sum_{ i = 0 }^n { y_i \prod_{ \underset{ j \neq i }{ j = 0 } }^n \frac{ x - x_j }{ x_i - x_j } } \\
	& = \sum_{ i = 0 }^n { y_i L_i(x) }
\end{align}
$$
