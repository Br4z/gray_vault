---
reviewed_on: "2025-01-19"
---

# Real numbers

## 1

Simplifique tanto como sea posible las siguientes expresiones:

1. $\frac{ 24 x^3 y^4 }{ 1 - x^2 } \left ( \frac{ 18 x^{ -2 } y^5 }{ y + x y } \right )^{ -1 }$.

	Primero manipulamos la expresión.

	$$
	\begin{align}
		& = \frac{ 24 x^3 y^4 }{ (1 - x) (1 + x) } \left (\frac{ y (1 + x) }{ \frac{ 18 }{ x^2 } y^5 } \right ) \\
		& = \frac{ 24 x^3 y^4 }{ (1 - x) (1 + x) } \left ( \frac{ x^2 (1 + x) }{ 18 y^4 } \right )
	\end{align}
	$$

	Por último simplificamos la expresión.

	$$
	\frac{ 4 x^5 }{ 3 (1 - x) }
	$$

2. $[(x^2 + y^2) (x - y)^{ -1 } + 2 (x^{ -1 } - y^{ -1 })^{ -1 }]^{ -1 }$.

	$$
	\begin{align}
		& = \left [(x^2 + y^2) \left (\frac{ 1 }{ x - y } \right ) + 2 \left (\frac{ 1 }{ x } - \frac{ 1 }{ y } \right )^{ -1 } \right ]^{ -1 } \\
		& = \left [(x^2 + y^2) \left (\frac{ 1 }{ x - y } \right ) + 2 \left (\frac{ x y }{ y - x } \right ) \right ]^{ -1 } \\
		& = \left [\frac{ x^2 + y^2 }{ x - y } + \frac{ 2 x y }{ y - x } \right ]^{ -1 }
	\end{align}
	$$

	Podemos escribir $y - x$ como $-(x - y)$.

	$$
	\begin{align}
		& = \left [\frac{ x^2 + y^2 }{ x - y } - \frac{ 2 x y }{ x - y } \right ]^{ -1 } \\
		& = \left [\frac{ x^2 - 2 x y + y^2 }{ x - y } \right ]^{ -1 } \\
		& = \frac{ (x - y) }{ (x - y)^2 } \\
		& = (x - y)^{ -1 }
	\end{align}
	$$

3. $\frac{ \frac{ x - y }{ x } - \frac{ x + y }{ y } }{ \frac{ x - y }{ y } + \frac{ x + y }{ x } }$.

	$$
	\begin{align}
		& = \frac{ \frac{ y (x - y) - x (x + y) }{ x y } }{ \frac{ x (x - y) + y (x + y) }{ x y } } \\
		& = \frac{ x y (y (x - y) - x (x + y)) }{ x y (x - y) + y (x + y) } \\
		& = \frac{ x y - y^2 - x^2 - x y }{ x^2 - x y + x y + y^2 } \\
		& = \frac{ -x^2 - y^2 }{ x^2 + y^2 } \\
		& = \frac{ -(x^2 + y^2) }{ x^2 + y^2 } \\
		& = -1
	\end{align}
	$$

## 2

El inverso multiplicativo de $(1 - (1 + x^{ -1 })^{ -1 })$.

Recordemos que si $a$ es el inverso multiplicativo de $b$ se debe cumplir que $a b = 1$ y como consecuencia $a = \frac{ 1 }{ b } = b^{ -1 }$, entonces:

$$
\begin{align}
	& = (1 - (1 + x^{ -1 })^{ -1 })^{ -1 } \\
	& = \left (1 - \frac{ x }{ x + 1 } \right )^{ -1 } \\
	& = \left (\frac{ x + 1 - x }{ x + 1 } \right )^{ -1 } \\
	& = \left (\frac{ 1 }{ x + 1 } \right )^{ -1 } \\
	& = x + 1
\end{align}
$$

## 3

¿Cuál debe ser el valor de $c$ para que la solución de la ecuación $7 - (8 - 2 c) x^{ -1 } = 3 + (2 + 3 c) x^{ -1 }$ sea 2?

Solucionando para $c$.

$$
\begin{align}
	& 7 - \left (\frac{ 8 - 2 c }{ x } \right ) = 3 + \frac{ 2 + 3 c }{ x } \\
	& \frac{ 7 x - (8 - 2 c) }{ x } = \frac{ 3 x + 2 + 3 c }{ x } \\
	& 7 x - (8 - 2 c) = 3 x + 2 + 3 c \\
	& c = 4 x - 10
\end{align}
$$

Con la condición $x = 2$, nos queda que $c = 4 (2) - 10 = -2$.

## 4

Resuelva las siguientes ecuaciones:

1. $\frac{ 4 }{ 1 - x^2 } = \frac{ 3 }{ x - 1 } + \frac{ 2 }{ x + 1 }$.

	Las condiciones de su solución debe cumplir $x \neq -1 \quad y \quad x \neq 1$.

	$$
	\begin{align}
		& \frac{ 4 }{ -(x^2 - 1) } = \frac{ 3 (x + 1) + 2 (x - 1) }{ x^2 -1 } \\
		& 4 = -\frac{ 3 (x + 1) + 2 (x - 1) }{ x^2 - 1 } (x^2 - 1) \\
		& 4 = -5 x - 1 \\\
		& x = \frac{ 5 }{ -5 } = -1
	\end{align}
	$$

	Como $x = -1$, entonces decimos que la ecuación no tiene solución.

2. $\sqrt{ (x - 2) } - x + 4 = 0$.

	Las condiciones de su solución debe cumplir que $x \in [2, \infty)$.

	$$
	\begin{align}
		& (\sqrt{ x - 2 })^2 = (x - 4)^2 \\
		& x - 2 = x^2 - 8 x + 16 \\
		& x^2 - 9 x + 18 = (x - 6) (x - 3) \\
		& (x - 6) (x - 3) = 0
	\end{align}
	$$

	Entonces $x = 6$ o $x = 3$, números que están en el dominio de la ecuación.

3. $|3 x + 6| - 2 |x - 4| = -11$.

	Analizando todos los casos ($2^2$).

	1. $3 x + 6 \geq 0 \quad x - 4 \geq 0$.

		$$
		\begin{align}
			& x \geq -2         & x \geq 4 \\
			& x \in [-2,\infty) & x \in [4,\infty) \\
			& x \in [4,\infty)
		\end{align}
		$$

		$$
		\begin{align}
			& 3 x + 6 - 2 (x - 4) = -11 \\
			& x + 14 = -11 \\
			& x = -25
		\end{align}
		$$

		Como $x = -25$ no está en el intervalo, **no es solución**.

	2. $3 x + 6 < 0 \quad x - 4 < 0$.

		$$
		\begin{align}
			& x < -2             & x < 4 \\
			& x \in (-\infty,-2) & x \in (-\infty,4) \\
			& x \in [-\infty,-2) \\
		\end{align}
		$$

		$$
		\begin{align}
			& -(3 x + 6) - 2 (-(x - 4)) = -11 \\
			& -x - 14 = -11 \\
			& x = -3
		\end{align}
		$$

		Como $x = -3$ está en el intervalo, entonces es **solución**.

	3. $3 x + 6 \geq 0 \quad x - 4 < 0$.

		$$
		\begin{align}
			& x \geq -2         & x < 4 \\
			& x \in [-2,\infty) & x \in (-\infty,4) \\
			& x \in [-2,4)
		\end{align}
		$$

		$$
		\begin{align}
			& 3 x + 6 - 2 (-(x - 4)) = -11 \\
			& 5 x - 2 = -11 \\
			& x = -\frac{ 9 }{ 5 }
		\end{align}
		$$

		Como $-\frac{ 9 }{ 5 }$ está en el intervalo, es **solución**.

	4. $3 x + 6 < 0 \quad x - 4 \geq 0$.

		$$
		\begin{align}
			& x < -2 \quad x \geq 4 \\
			& x \in \emptyset
		\end{align}
		$$

		Ningún número podrá satisfacerla las condiciones, por lo que diremos que **no tiene solución**.

	Diremos que $x \in \{ -3,-\frac{ 9 }{ 5 } \}$.

## 5

Resuelva las siguientes inecuaciones:

1. $x (x - 2) < 15$.

	$$
	\begin{align}
		& x^2 - 2 x < 15 \\
		& x^2 - 2 x - 15 < 0 \\
		& (x - 5) (x + 3) < 0
	\end{align}
	$$

	Para que un producto sea menor a cero, sabemos que debe ocurrir alguno de los siguientes casos:

	1. El primer factor es negativo y el segundo es positivo.

		$$
		\begin{align}
			& x - 5 < 0 & x + 3 > 0 \\
			& x < 5     & x > -3 \\
			& x \in (-3,5)
		\end{align}
		$$

	2. El primer factor es positivo, y el segundo es negativo.

		$$
		\begin{align}
			& x - 5 > 0 & x + 3 < 0 \\
			& x > 5     & x < -3 \\
			& x \in \emptyset
		\end{align}
		$$

	Entonces $x \in (-3,5)$.

2. $\frac{ 2 x + 3 }{ x - 4 } \geq 3$.

	$$
	\begin{align}
		& \frac{ 2 x + 3 }{ x - 4 } - 3 \geq 0 \\
		& \frac{ 2 x + 3 - 3 (x - 4) }{ x - 4 } \geq 0 \\
		& \frac{ -x + 15 }{ x - 4 } \geq 0
	\end{align}
	$$

	Para que un cociente sea positivo, sabemos que debe ocurrir alguno de los siguientes casos:

	1. Tanto el denominador como el numerador son positivos.

		$$
		\begin{align}
			& -x + 15 \geq 0 & x - 4 > 0 \\
			& x \leq 15      & x > 4 \\
			& x \in (4,15]
		\end{align}
		$$

	2. Tanto el denominador como el numerador son negativos.

		$$
		\begin{align}
			& -x + 15 < 0 & x - 4 < 0 \\
			& x > 15      & x < 4 \\
			& x \in \emptyset
		\end{align}
		$$

	Entonces $x \in (4,15]$.

3. $|5 x - 2| \geq 4$.

	Analizando los 2 casos.

	1. $5 x - 2 \geq 0 \quad x \geq \frac{ 2 }{ 3 }$.

		$$
		x \in \left [\frac{ 3 }{ 2 },\infty \right )
		$$

		$$
		\begin{align}
			& 5 x - 2 \geq 4 \\
			& x \geq \frac{ 6 }{ 5 } \\
			& x \in \left [\frac{ 6 }{ 5 },\infty \right )
		\end{align}
		$$

		La intersección entre la condición de la ecuación y la solución es $x \in \left [\frac{ 6 }{ 5 },\infty \right )$.

	2. $5 x - 3 < 0 \quad x < \frac{ 2 }{ 5 }$.

		$$
		x \in \left (-\infty,\frac{ 2 }{ 5 } \right )
		$$

		$$
		\begin{align}
			& -(5 x - 2) \geq 4 \\
			& x \leq -\frac{ 2 }{ 5 }
		\end{align}
		$$

		La intersección entre la condición de la ecuación y la solución es $x \in \left (-\infty, -\frac{ 2 }{ 5 } \right ]$.

	La solución es la **unión** de las soluciones $\mathbb{ R } - \left (-\frac{ 2 }{ 5 }, \frac{ 6 }{ 5 } \right )$.

4. $|x + 3| - 2|x - 1| < 2$.

	Considerando los $2^2$ casos.

	1. $x + 3 \geq 0 \quad x - 1 \geq 0$.

		$$
		\begin{align}
			& x \geq -3         & x \geq 1 \\
			& x \in [-3,\infty) & x \in [1,\infty) \\
			& x \in [1,\infty)
		\end{align}
		 \\[10 pt]
		$$

		$$
		\begin{align}
			& x + 3 - 2 x + 2 < 2 \\
			& -x < -3 \\
			& x > 3 \\
			& x \in (3,\infty)
		\end{align}
		$$

		La **intersección** del caso y la solución es $x \in (3,\infty)$.

	2. $x + 3 < 0 \quad x - 1 < 0$.

		$$
		\begin{align}
			& 3 x < -3             & x < 1 \\
			& x \in (-\infty,-3)   & x \in (-\infty, 1) \\
			& x \in (-\infty,-3)
		\end{align}
		$$

		$$
		\begin{align}
			& -x - 3 + 2 x - 2 < 2 \\
			& x - 5 < 2 \\
			& x < 7 \\
			& x \in (-\infty,7)
		\end{align}
		$$

		La **intersección** del caso y la solución es $x \in (-\infty,-3)$.

	3. $x + 3 \geq 0 \quad x - 1 < 0$.

		$$
		\begin{align}
			& x \geq -3         & x < 1 \\
			& x \in [-3,\infty) & x \in (-\infty,1) \\
			& x \in [-3,1)
		\end{align}
		$$

		$$
		\begin{align}
			& x + 3 + 2 x - 2 < 2 \\
			& 3 x + 1 < 2 \\
			& x < \frac{ 1 }{ 3 } \\
			& x \in \left (-\infty, \frac{ 1 }{ 3 } \right )
		\end{align}
		$$

		La **intersección** del caso y la solución es $x \in \left [-3,\frac{ 1 }{ 3 } \right ]$.

	4. $x + 3 < 0 \quad x - 1 \geq 0$.

		$$
		\begin{align}
			& x < -3 \quad x \geq 1 \\
			& x \in \emptyset
		\end{align}
		$$

		Desde las condiciones del caso podemos ver que es **imposible**.

	La solución de esta inecuación es la **unión** de todos los intervalos en los que encontramos solución.

	$$
	\begin{align}
		& x \in (3,\infty) \cup [-3,1) \cup \left [-3,\frac{ 1 }{ 3 } \right ] \\
		& x \in \mathbb{ R } - \left (\frac{ 1 }{ 3 },3 \right )
	\end{align}
	$$

## 6

El perímetro de un terreno rectangular es $58$ metros. Si el largo aumenta en $2$ metros y el ancho se disminuye en $2$ metros, el área se disminuye en $40$ metros cuadrados. Halle las dimensiones del terreno.

Sí tenemos un rectángulo de medidas $a * b$.

$$
\text{área} = a b \quad \text{perímetro} = 2 (a + b) = 58
$$

$$
\begin{align}
	& (a + 2) (b - 2) = \text{área} - 46 = a b - 43 \quad (1) \\
	& 2 a + 2 b = 58 \quad a = 29 - b \quad (2)
\end{align}
$$

Reemplazando $(2)$ en $(1)$.

$$
\begin{align}
	& ((29 - b) + 2) (b - 2) = (29 - b) b - 46 \\
	& (31 - b) (b - 2) = 29 b - b^2 - 46 \\
	& 31 b - b^2 - 62 + 2 b = -b^2 + 29 b - 46 \\
	& 4 b = 16 \\\
	& b = 4
\end{align}
$$

Reemplazando $b$ en $(2)$.

$$
a = 29 - 4 = 25 \quad (2)
$$
