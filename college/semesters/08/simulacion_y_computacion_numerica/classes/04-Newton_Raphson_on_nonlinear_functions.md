---
reviewed_on: "2025-02-06"
---

# Newton Raphson on nonlinear functions

Considere un sistema de ecuaciones $F$.

$$
F(X) =
	\begin{cases}
		f_1(X) \\
		f_2(X) \\
		\vdots \\
		f_n(X)
	\end{cases}
$$

> Donde $f$ es una función que depende de varias variables.

Truncado la serie de Taylor a dos términos, tenemos que

$$
\begin{align}
	& 0 = F(X + H) = F(X) + F'(X) H + O(H^2) \\
	& F'(X) H = -F(X)
\end{align}
$$

> Entiéndase la función evaluada en $X$ como la evaluación en cada una de las variables del sistema de ecuaciones (pudiéndose considerar como tupla).

A $F'(X)$ se le conoce como Jacobiano ($J(X)$).

$$
J(X) H = -F(X)
$$

Para despejar $H$ tendríamos que multiplicar por la matriz inversa de $J$, pero hallar esta matriz es muy **costoso**, así que vamos a calcular el vector $H$ partiendo de un $X_0$ y a través de iteraciones nos vamos acercando a una mejor aproximación (siguiendo el método de Newton Raphson).

En general, la matriz jacobiana de una función vectorial de varias variables es la matriz cuyos elementos son las derivadas parciales de primer orden de dicha función.

$$
J(X) =
	\begin{pmatrix}
		\frac{ \partial f_1 }{ \partial x_1 }(X) & \frac{ \partial f_1 }{ \partial x_2 }(X) & \dots  & \frac{ \partial f_1 }{ \partial x_n }(X) \\
		\frac{ \partial f_2 }{ \partial x_1 }(X) & \frac{ \partial f_2 }{ \partial x_2 }(X) & \dots  & \frac{ \partial f_2 }{ \partial x_n }(X) \\
		\vdots                                   & \vdots                                   & \ddots & \vdots \\
		\frac{ \partial f_m }{ \partial x_1 }(X) & \frac{ \partial f_m }{ \partial x_2 }(X) & \dots  & \frac{ \partial f_m }{ \partial x_n }(X)
	\end{pmatrix}
$$
