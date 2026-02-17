---
reviewed_on: "2025-08-15"
---

# Functions

## 1

Considere las gráficas de las funciones $f$ y $g$.

![graphs](college/semesters/01/assets/calculo_I/2_03_01-graphs.jpg)

1. Determine él

	- dominio de $g$:

		$$
		D_g = (-5,-2] \cup [-1,3] \cup [4,8]
		$$

	- rango de $f$.

		$$
		R_f = [-12,4]
		$$

2. Calcule:

	- $(f + g)(0)$.

		$$
		f(0) + g(0) = 0 + 4 = 4
		$$

	- $(f g)(-2)$.

		$$
		f(-2) * g(-2) = 4 * 9 = 36
		$$

	- $(f o g)(8)$.

		$$
		f(g(8)) = f(2) = -3
		$$

	- $(g o g)(3)$.

		$$
		g(g(3)) = g(4) = 0
		$$

3. Halle los intervalos de crecimiento y decrecimiento de la función $f$.

	- Crecimiento: $[-6,-2] \cup [2,4)$.

	- Decrecimiento: $(-2,0] \cup [0.5,2)$.

4. Halle los valores de $x \in D_f$ para los cuales $f(x) > 0$.

	$$
	x \in ((-4,0) \cup (3,4))
	$$

5. ¿La función $f$ es [[personal/math/function/properties#Injectivity|inyectiva]]?

	No es inyectiva, $f(-4) = f(0)$, pero $-4 \neq 0$.

## 2

Pruebe que la función $f(x) = \frac{ 2 x^4 - x^2 - 1 }{ |1 - x^2| }$ es [[personal/math/function/even|par]] y que la función $g(x) = \frac{ 1 }{ x } + x^3$ es [[personal/math/function/even|impar]].

### $f(x)$ (2)

$$
\begin{align}
	& f(-x) = \frac{ 2 (-x)^4 - (-x)^2 - 1 }{ |1 - (-x)^2| } \\
	& = \frac{ 2 x^4 - x^2 - 1 }{ |1 - x^2| } \\
	& = f(x)
\end{align}
$$

### $g(x)$ (2)

$$
\begin{align}
	& -g(x) = -\frac{ 1 }{ x } - x^3
	& = \frac{ 1 }{ -x } + (-x)^3
	& = g(-x)
\end{align}
$$

## 3

Pruebe que la única función par e impar a la vez es la función nula.

> La función nula es una función constante cuya imagen es cero.

$$
f(x) = 0
$$

$$
f(x) = f(-x) \quad 0 = 0
$$

$$
f(-x) = -f(x) \quad 0 = 0
$$

## 4

Dadas las funciones $f(x) = \frac{ x^2 }{ 1 - 3 x^2 }$ y $g(x) = \sqrt{ 2 x - 1 }$.

1. Calcule:

	1. $(f + g)(5)$.

		$$
		\begin{align}
			& f(5) + g(5) = \frac{ (5)^2 }{ 1 - 3 (5)^2 } + \sqrt{ 2 (5) - 1 } \\
			& = -\frac{ 25 }{ 74 } + \sqrt{ 9 } \\
			& = \frac{ 197 }{ 74 }
		\end{align}
		$$

	2. $\frac{ f }{ g }(1)$.

		$$
		\begin{align}
		& \frac{ f(1) }{ g(1) } = \frac{ \frac{ (1)^2 }{ 1 - 3 (1)^2 } }{ \sqrt{ 2 (1) - 1 } } \\
		& = \frac{ -\frac{ 1 }{ 2 } }{ 1 } \\
		& = -\frac{ 1 }{ 2 }
		\end{align}
		$$

	3. $(f o f) \left ( \frac{ 2 }{ 3 } \right )$.

		$$
		\begin{align}
		& f(f(x)) = \frac{ \left (\frac{ \left (\frac{ 2 }{ 3 } \right )^2 }{ 1 - 3 \left (\frac{ 2 }{ 3 } \right )^2 } \right)^2 }{ 1 - 3 \left (\frac{ \left (\frac{ 2 }{ 3 } \right )^2 }{ 1 - 3 \left (\frac{ 2 }{ 3 } \right )^2 } \right)^2 } \\
		& = \frac{ \left (-\frac{ 4 }{ 3 } \right )^2 }{ 1 - 3 \left (-\frac{ 4 }{ 3 } \right )^2 } \\
		& = -\frac{ 16 }{ 39 }
		\end{align}
		$$

2. ¿El número 1 pertenece al rango de $f$?

	$$
	\begin{align}
		& 1 - 3 x^2 \neq 0 \\
		& x \neq \pm \sqrt{ \frac{ 1 }{ 3 } }
	\end{align}
	$$

	$$
	\begin{align}
		& \frac{ x^2 }{ 1 - 3 x^2 } = 1 \\
		& x^2 = 1 - 3 x^2 \\
		& 4 x^2 = 1 \\
		& x = \pm \sqrt{ \frac{ 4 }{ 1 } }
	\end{align}
	$$

	Como $\sqrt{ \frac{ 4 }{ 1 } } \neq \pm \sqrt{ \frac{ 1 }{ 3 } }$, 1 está en el rango de $f$.

3. Determine la función $f o g$, si existe, indique su dominio.

	$$
	\begin{align}
		& 2 x - 1 \geq 0 \\
		& x \geq \frac{ 1 }{ 2 }
	\end{align}
	$$

	$$
	\begin{align}
		& x \in \left (\left [\frac{ 1 }{ 2 },\infty \right ] \cap \mathbb{ R } - \left \{\pm \sqrt{ \frac{ 1 }{ 3 } } \right \} \right ) \\
		& x \in \left (\left [\frac{ 1 }{ 2 },\infty \right ] - \left \{\sqrt{ \frac{ 1 }{ 3 } } \right \} \right )
	\end{align}
	$$

	$$
	\begin{align}
		& f(g(x)) = \frac{ (\sqrt{ 2 x - 1 })^2 }{ 1 - 3 (\sqrt{ 2 x - 1 })^2 } \\
		& = \frac{ 2 x - 1 }{ 1 - 3 (2 x - 1) } \\
		& = \frac{ 2 x - 1 }{ - 6 x + 4 }
	\end{align}
	$$

4. Pruebe que $g$ es inyectiva y calcule su inversa ($g^{ - 1 }$), indicando su dominio.

	$$
	\begin{align}
		& \sqrt{ 2 x_1 - 1 } = \sqrt{ 2 x_2 - 1 } \\
		& 2 x_1 - 1 = 2 x_2 - 1 \\
		& 2 x_1 = 2 x_2 \\
		& x_1 = x_2
	\end{align}
	$$

	$$
	\begin{align}
		& y = \sqrt{ 2 x - 1 } \\
		& y^2 = 2 x - 1 \\
		& x = \frac{ y^2 + 1 }{ 2 }
	\end{align}
	$$

	$$
	g^{ -1 }(x) = \frac{ x^2 + 1 }{ 2 } \quad x \in \mathbb{ R }
	$$

## 5

Sea $f(x) = \frac{ x^2 }{ x - 2 }$ y $g(x) = \frac{ x^2 - 4 }{ x^2 + 2 }$. Determine e indique el dominio si existe.

1. $f g$.

	$$
	\begin{align}
		& f(x) g(x) = \frac{ x^2 }{ x - 2 } \frac{ x^2 - 4 }{ x^2 + 2 } \\
		& = \frac{ x^2 (x + 2) (x - 2) }{ (x - 2) (x^2 + 2) } \\
		& = \frac{ x^2 (x + 2) }{ x^2 + 2 }
	\end{align}
	$$

	$$
		x \in (\mathbb{ R } - \{2\})
		$$

2. $f o f$.

	$$
	\begin{align}
		& f(f(x)) = \frac{ \left (\frac{ x^2 }{ x - 2 } \right )^2 }{ \left (\frac{ x^2 }{ x - 2 } \right ) - 2 } \\
		& = \frac{ \frac{ x^4 }{ (x - 2)^2 } }{ \frac{ x^2 - 2 x + 4 }{ x - 2 } } \\
		& = \frac{ x^4 }{ (x - 2) (x^2 - 2 x + 4) }
	\end{align}
	$$

	$$
	x \neq 2
	$$

	$$
	\begin{align}
		& x^2 - 2 x + 4 \neq 0 \\
		& x \neq 1 + \sqrt{ 3 } i \quad x \neq 1 - \sqrt{ 3 } i
	\end{align}
	$$

	$$
	x \in \mathbb{ R } - \{2\}
	$$

## 6

Sea $f(x) = \frac{ x + 1 }{ x }$ y $g(x) = 3 x - 5$. Encuentre una función $h$ tal que $g o h = f$.

$$
\begin{align}
	& 3 h - 5 = \frac{ x + 1 }{ x } \\
	& h = \frac{ \frac{ x + 1 }{ x } - 5 }{ 3 } \\
	& h = \frac{ 6 x + 1 }{ 3 x }
\end{align}
$$

## 7

Escriba la función $h(x) = \left ( \frac{ 5 x - 4 }{ 2 x } \right )^\frac{ 3 }{ 7 } + 2$ como una composición de tres funciones.

$$
\begin{align}
	& f(x) = \frac{ 5 x - 4 }{ x } \\
	& g(x) = \frac{ x }{ 2 } \\
	& i(x) = x^\frac{ 3 }{ 7 } + 2
\end{align}
$$

$$
i(g(f(x))) = h(x)
$$

## 8

Muestre que las funciones $f(x) = \frac{ 1 }{ 2 } x^2 - x + \frac{ 7 }{ 2 }$, con $x \leq 1$ y $g(x) = 1 - \sqrt{ 2 x - 6 }$ son inversas entre sí.

$$
\begin{align}
	& f(g(x)) = \frac{ 1 }{ 2 } (1 - \sqrt{ 2 x - 6 })^2 - (1 - \sqrt{ 2 x - 6 }) + \frac{ 7 }{ 2 } \\
	& = \frac{ -5 + 2 x - 2 \sqrt{ 2 x - 6 } }{ 2 } - 1 + \sqrt{ 2 x - 6 } + \frac{ 7 }{ 2 } \\
	& = \frac{ -7 + 2 x - 2 \sqrt{ 2 x - 6 } }{ 2 } + \sqrt{ 2 x - 6 } + \frac{ 7 }{ 2 } \\
	& = \frac{ -7 + 2 x }{ 2 } + \frac{ 7 }{ 2 } \\
	& = \frac{ 2 x }{ 2 } \\
	& = x
\end{align}
$$

## 9

Una piedra se deja caer en un lago y origina ondas circulares que se extienden a una velocidad de $55 \frac{ \text{cm} }{ \text{s} }$. Exprese el área del círculo formado en función del tiempo $t$, si $t$ está medido en segundos.

$$
A(t) = (55 t)^2 \pi = 3025 t^2 \pi
$$

## 10

Se dispone de $1,000$ metros de cerca para construir un corral rectangular, parte de la cerca se usará para construir tres cercas internas de división paralelas entre sí y perpendiculares a uno de los lados del corral. Exprese el área del corral como función de $x$, indicando su dominio.

TODO: redo the image.

![corral](college/semesters/01/assets/calculo_I/2_03_02-corral.jpg)

$$
\begin{align}
	& 2 x + 5 y = 1,000 \\
	& y = 200 - \frac{ 2 }{ 5 } x \quad (1)
\end{align}
$$

$$
\begin{align}
	& A = x y \\
	& = x \left (200 - \frac{ 2 }{ 5 } x \right ) \\
	& = -\frac{ 2 }{ 5 } x^2 + 200 x \\
	& = \frac{ -2 x^2 + 1,000 x }{ 5 }
\end{align}
$$

$$
\begin{align}
	& A \geq 0 \\
	& -2 x^2 + 1,000 x \geq 0 \\
	& x (-x + 500) \geq 0 \\
	& x \geq 0 \quad x \leq 500 \\
	& x \in [0,500]
\end{align}
$$
