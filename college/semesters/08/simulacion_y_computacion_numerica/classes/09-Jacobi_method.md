---
reviewed_on: "2024-12-12"
---

# Jacobi's method

Este método es un procedimiento iterativo utilizado para resolver sistemas de ecuaciones lineales de la forma $A x = b$.

1. Planteamiento del sistema de ecuaciones.

	Considérese un sistema de $n$ ecuaciones lineales con $n$ incógnitas.

	$$
	\begin{cases}
		a_{ 11 } x_1 + a_{ 12 } x_2 + \dots + a_{ 1n } x_n = b_1 \\
		a_{ 21 } x_1 + a_{ 22 } x_2 + \dots + a_{ 2n } x_n = b_2 \\
		\vdots \\
		a_{ n1 } x_1 + a_{ n2 } x_2 + \dots + a_{ nn } x_n = b_n
	\end{cases}
	$$

2. Reordenamiento de las ecuaciones.

	Es importante que el sistema esté diagonalmente dominante para asegurar la convergencia.

	$$
	\abs{ a_{ ii } } \geq \sum_{ \underset{ j \neq i }{ j = 1 } }^n \abs{ a_{ ij } }
	$$

3. Elección de valores iniciales.

	Selecciona un vector inicial $x^{ (0) }$. Si no se tiene información previa, se puede empezar con ceros o unos.

4. Proceso iterativo.

	En el método de Jacobi, todas las variables se actualizan simultáneamente utilizando únicamente los valores de la iteración anterior.

	En la iteración $k + 1$, para cada $i = 1$ y $j = 1$ hasta $n$ calcular ${ x_i }^{ (k + 1) }$ usando los valores ${ x_j }^{ (k) }$ de la iteración anterior.

	$$
	{ x_i }^{ (k + 1) } = \frac{ 1 }{ a_{ ii } } \left (b_i - \sum_{ \underset{ j \neq i }{ j = 1 } }^n { a_{ ij } { x_j }^{ (k) } } \right )
	$$

	Después se calcula el error relativo para cada variable con la siguiente fórmula:

	$$
	\varepsilon_i = \abs{ \frac{ x^{ (k + 1) } - x^{ (k) } }{ x^{ (k + 1) } } } * 100\%
	$$

	Si todos los $\varepsilon_i$ son menores que el criterio de tolerancia, se detiene el proceso.
