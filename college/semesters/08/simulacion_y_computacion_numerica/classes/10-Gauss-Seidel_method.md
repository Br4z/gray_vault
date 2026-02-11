---
reviewed_on: "2025-02-08"
---

# Gauss-Seidel method

Este método es un procedimiento iterativo utilizado para resolver sistemas de ecuaciones lineales de la forma $A x = b$. Es especialmente útil para sistemas grandes y dispersos.

> Un sistema disperso (también conocido como sistema ralo o de matriz dispersa) es aquel en el que la mayoría de los elementos de la matriz asociada al sistema de ecuaciones son cero. Es decir, solo una pequeña fracción de los elementos de la matriz son diferentes de cero.

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

3. Despeje de las variables.

	Se despeja cada variable $x_i$ de su respectiva ecuación.

	$$
	x_i = \frac{ 1 }{ a_{ ii } } \left (b_i - \sum_{ j = 1 }^{ i - 1 }{ a_{ ij } { x_j }^{ (k + 1) } } - \sum_{ j = i + 1 }^{ n }{ a_{ ij } { x_j }^{ (k) } }\right )
	$$

	- ${ x_j }^{ (k + 1) }$: valores más recientes calculados en la iteración actual.

	- ${ x_j }^k$: valores de la iteración previa.

4. Elección de valores iniciales.

	Selecciona un vector inicial $x^{ (0) }$. Si no se tiene información previa, se puede empezar con ceros o unos.

5. Proceso iterativo.

	Se repite el siguiente proceso hasta que los valores converjan según el criterio de parada elegido:

	En la iteración $k + 1$, para cada $i = 1$ hasta $n$ calcular $x^{ (k + 1) }$ usando la fórmula del paso $3$.

	Si el método se hace con **relajación**, se debe actualizar el $x^{ (k + 1) }$ con la siguiente fórmula:

	$$
	{ x_i }^{ (k + 1) } = { x_i }^{ (k) } + \lambda ({ x_i }^\text{new} - { x_i }^{ (k) })
	$$

	${ x_i }^\text{new}$ corresponde a los valores calculados en la iteración actual antes de aplicar la relajación.

	Después se calcula el error relativo para cada variable con la siguiente fórmula:

	$$
	\varepsilon_i = \abs{ \frac{ x^{ (k + 1) } - x^{ (k) } }{ x^{ (k + 1) } } } * 100\%
	$$

	Si todos los $\varepsilon_i$ son menores que el criterio de tolerancia, se detiene el proceso.
