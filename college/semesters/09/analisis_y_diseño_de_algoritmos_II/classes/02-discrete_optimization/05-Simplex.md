---
reviewed_on: "2025-05-04"
---

# Simplex

Sea un problema de programación lineal en forma de holgura

![[college/semesters/09/analisis_y_diseño_de_algoritmos_II/classes/02-discrete_optimization/04-lineal_programming-standard_form_and_slack#Forma de holgura|Forma de holgura]]

$$
\begin{align}
	& z = c_1 x_1 + c_2 x_2 + \dots + c_n x_n \\
	& x_{ n + 1 } = b_1 - (a_{ 11 } x_1 + a_{ 12 } x_2 + \dots + a_{ 1n } x_n) \\
	& \vdots \\
	& x_{ n + m } = b_m - (a_{ m1 } x_1 + a_{ m2 } x_2 + \dots + a_{ mn } x_n)
\end{align}
$$

1. Inicialmente, se busca una solución básica **factible**. En una solución básica se igualan todas las variables en la parte derecha de las ecuaciones (variables no-básicas) a 0 y luego se calcula el valor de las variables en la parte izquierda (variables básicas).

	$$
	(x_1,x_2,\dots,x_n,{ x_1 }',{ x_2 }',\dots,{ x_m }') = (0_1,0_2,\dots,0_n,b_1,b_2,\dots,b_m)
	$$

2. Ahora se debe seleccionar una variable que al modificarse genere que el valor de la función objetivo aumente, llamemos esta variable $x_{ \max }$ y $c_{ \max }$ su respectivo coeficiente.

	> La variable cuyo coeficiente positivo sea mayor al de las demás.

3. Ahora es necesario seleccionar una variable no-básica para intercambiarla con $x_{ \max }$. Para esto, es necesario determinar cuál es el valor más alto que puede tomar $x_{ \max }$ sin violar las restricciones. Esto es, que la parte derecha de las restricciones alcance un valor mayor o igual a 0.

	$$
	\begin{align}
		& x_{ n + 1 } = 0 \implies x_{ \max } = \frac{ b_1 }{ \text{coefficient of ${ x_{ \max } }_1$} } \\
		& \vdots \\
		& x_{ n + m }= 0 \implies x_{ \max } = \frac{ b_m }{ \text{coefficient of ${ x_{ \max } }_m$} }
	\end{align}
	$$

	> En caso de que $x_{ \max }$ no se encuentre en el RHS, decimos que esa restricción no impone cota.

4. Despejar la variable $x_{ \max }$ de la ecuación que haya dado el menor valor positivo del anterior paso, sea esa ecuación $i$.

	$$
	x_{ \max } = \frac{ b_i - x_{ n + i } - (a_{ i1 } x_1 + a_{ i2 } x_2 + \dots + a_{ in } x_n) }{ \text{coefficient of ${ x_{ \max } }_i$} }
	$$

	> $x_{ \max }$ y su coeficiente no se encuentran en $(a_{ i1 } x_1 + a_{ i2 } x_2 + \dots + a_{ in } x_n)$.

5. Sustituir $x_{ \max }$ con el nuevo valor en todas las ecuaciones (función objetivo y restricciones) y reemplazar la ecuación original $i$ por la que se obtuvo del despeje anterior.

6. Repetir todo hasta llegar a una función objetivo sin coeficientes positivos (además de que $x_i \neq 0$).

Del LP final

$$
\begin{align}
	& z = c_0 + c_1 x_1 + c_2 x_2 + \dots + c_n x_n \\
	& { x_1 }' = a_{ 10 } + a_{ 11 } x_1 + a_{ 12 } x_2 + \dots + a_{ 1n } x_n \\
	& \vdots \\
	& { x_m }' = a_{ m0 } + a_{ m1 } x_1 + a_{ m2 } x_2 + \dots + a_{ mn } x_n
\end{align}
$$

> $c_i$ y $a_{ ij }$ no tiene relación con su significado en el apartado anterior.

La solución

$$
({ x_1 }',{ x_2 }',\dots,{ x_m }') = (a_{ 10 },a_{ 2,0 },\dots,a_{ m_0 })
$$

> Se asumen que las variables que no aparecen, valen 0.

es la óptima y su valor corresponde a $c_0$.

## Tablero

Es posible utilizar un tablero para facilitar el procedimiento

$$
\begin{array}{c|c|c|c|c|c}
	\text{variable básica} & z & x_1  & \dots    & x_n    & \text{RHS} \\
	z                      & 1 & c_1  & \dots    & c_n    & b_0 \\
	x_{ n + 1 }            & a_{ 10 } & a_{ 11 } & \dots  & a_{ 1n } & b_1 \\
	\vdots                 & \vdots   & \vdots   & \vdots & \vdots & \vdots \\
	x_{ n + m }            & a_{ m0 } & a_{ m1 } & \dots  & a_{ mn } & b_m
\end{array}
$$

1. Selección de variable entrante.

	Escoger la variable no-básica de menor valor en la fila de $z$ ($c_j$).

2. Cálculo de cotas (razones mínimas).

	Para cada fila $i$, calcular $\theta_i = \frac{ b_i }{ a_ij }$

	> $a_ij \neq 0$

3. Selección de variable saliente y pivoteo.

	Elegir la fila $i$ con la mínima $\theta$ positiva. Dividir la fila pivote por $a_{ ij }$ para obtener 1, y luego anular ese coeficiente en las demás filas sumando múltiplos adecuados.

4. Actualización y repetición.

	La variable entrante se convierte en básica y se actualizan todas las ecuaciones. Repetir desde el paso 1 hasta que no queden coeficientes negativos en la fila de $z$.

5. Solución óptima.

	Cuando todos los coeficientes en la fila de $z$ sean $\geq 0$, la solución básica actual es óptima. El valor óptimo de la función objetivo aparece en el RHS de la fila de $z$.

## Solución básica no factible

Cuando al formular el problema en forma de holgura alguna $b_i < 0$, la solución básica inicial

$$
(x_1,x_2,\dots,x_n,{ x_1 }',{ x_2 }',\dots,{ x_m }') = (0_1,0_2,\dots,0_n,b_1,b_2,\dots,b_m)
$$

no es factible. Para obtener una solución factible se recurre al **método de las variables artificiales**, habitualmente organizado en dos fases:

### Fase 1: minimizar la suma de variables artificiales

1. Introducción de variables artificiales.

	Para cada restricción con $b_i < 0$ (o, en general, para todas las restricciones), añadimos una variable artificial $a_i \geq 0$ de forma que la restricción quede

	$$
	x_{ n + i } + a_i = b_i \quad a_i \geq 0
	$$

2. Función objetivo auxiliar.

	Definimos

	$$
	w = \sum_{ i = 1 }^m a_i
	$$

	y formulamos el problema auxiliar

	$$
	\begin{align}
		& \text{maximize}   && -w \\
		& \text{subject to} && x_{ n + i } + a_i = b_i \quad i = 1,2,\dots,m \\
		&                   && x_j,a_i \geq 0
	\end{align}
	$$

3. Tablero inicial de la fase 1.

	En el tablero se incluyen las columnas de las variables originales, de holgura y de las $a_i$, y la fila-objetivo corresponde a $-w$, expresado como

	$$
	-w + \sum_{ i = 1 }^m a_i = 0
	$$

	> Si alguna $b_i$ era negativa, antes de añadir $a_i$ conviene multiplicar toda la ecuación por $-1$ para que quede con RHS positivo.

4. Iteraciones de simplex.

	Se aplica el método simplex para maximizar $-w$.

5. Fin de la fase 1.

	Si al concluir $w^* = 0$, entonces $\sum_{ i = 1 }^m a_i = 0$, lo que obliga a cada $a_i = 0$; de ahi que la base resultante satisfaga todas las restricciones originales sin necesidad de artificiales.

### Fase 2: optimización del problema original

1. Eliminación de variables artificiales.

	Una vez $w^* = 0$, retiramos las columnas de las $a_i$ del tablero.

2. Restablecer la función objetivo original.

	Reconstruimos la fila-objetivo ajustando los términos constantes según la base obtenida. Sea $B$ el índice de variables básicas y $N$ el de no básicas; entonces

	$$
	\begin{align}
	& z = \sum_{ j \in N } c_j x_j + \sum_{ i \in B } c_{ B_i } \left ( b_i + \sum_{ j \in N } a_{ ij } x_j \right ) \\
	& z - \sum_{ j \in N } { \left (c_j + \sum_{ i \in B } c_{ B_i } a_{ ij } \right ) x_j } = \sum_{ i \in B } c_{ B_i } b_i
	\end{align}
	$$

3. Iteraciones de simplex.

	La solución del nuevo tablero es también la solución al problema original.
