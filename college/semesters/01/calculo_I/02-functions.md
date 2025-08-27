---
reviewed_on: "2025-08-15"
---

# Functions

## 1

Determine el dominio de las siguientes funciones:

1. $f(x) = \frac{ \sqrt{ 2 x - 7 } }{ x^2 - 16 }$.

	1. $2 x - 7 \geq 0$.

		$$
		\begin{align}
			& x \geq \frac{ 7 }{ 2 } \\
			& x \in \left [\frac{ 7 }{ 2 },\infty \right )
		\end{align}
		$$

	2. $x^2 - 16 \neq 0$.

		$$
		\begin{align}
			& x \neq \pm \sqrt{ 16 } \\
			& x \neq 4 \quad x \neq -4
		\end{align}
		$$

2. $\frac{ x + 1 }{ x^4 + 2 x^2 - 3 }$.

	- $x^4 + 2 x^2 - 3 \neq 0$.

		$$
		\begin{align}
			& y^2 + 2 y - 3 \quad y = x^2 \\
			& (y + 3) (y - 1) \neq 0 \\
			& (x^2 + 3) (x^2 - 1) \neq 0
		\end{align}
		$$

		$$
		\begin{align}
			& x \neq \pm \sqrt{ -3 } \quad \nexists x \\
			& x \neq \pm \sqrt{ 1 } \quad x \neq 1 \quad x \neq -1 \\
			& D_f = \mathbb{ R } - \{ 1,-1 \}
		\end{align}
		$$

3. $\sqrt{ \frac{ x - 3 }{ 1 - 2 x } }$.

	1. $1 - 2 x \neq 0$.

		$$
		\begin{align}
			& x \neq \frac{ 1 }{ 2 } \\
			& \mathbb{ R } - \left \{ \frac{ 1 }{ 2 } \right \}
		\end{align}
		$$

	2. $\frac{ x - 3 }{ 1 - 2 x } \geq 0$.

		1. $x - 3 = 0$.

			$$
			\begin{align}
				& x = 3 \\
				& x \in \{ 3 \}
			\end{align}
			$$

		2. $x - 3 > 0 \quad 1 - 2 x > 0$.

			$$
			\begin{align}
				& x > 3            & x < \frac{ 1 }{ 2 } \\
				& x \in (3,\infty) & x \in \left (-\infty,\frac{ 1 }{ 2 } \right ) \\
				& x \in \emptyset
			\end{align}
			$$

		3. $x - 3 < 0 \quad 1 - 2 x < 0$.

			$$
			\begin{align}
				& x < 3             & x > \frac{ 1 }{ 2 } \\
				& x \in (-\infty,3) & x \in \left (\frac{ 1 }{ 2 },\infty \right ) \\
				& x \in \left (\frac{ 1 }{ 2 },3 \right )
			\end{align}
			$$

	$$
	\begin{align}
		& x \in \left (\mathbb{ R } - \left \{ \frac{ 1 }{ 2 } \right \} \right ) \cap \left (\{ 3 \} \cup \emptyset \cup \left (\frac{ 1 }{ 2 },3 \right ) \right ) \\
		& x \in \left (\frac{ 1 }{ 2 },3 \right ]
	\end{align}
	$$

## 2

Sean $f(x) = \frac{ x + 1 }{ x - 1 }$ y $f(x) = \sqrt{ x + 1 }$.

1. Calcule:

	1. $f(2)$.

		$$
		\frac{ 2 + 1 }{ 2 - 1 } = 3
		$$

		$$
		\sqrt{ 2 + 1 } = \sqrt{ 3 }
		$$

	2. $f \left (\frac{ 3 }{ 2 } \right )$.

		$$
		\frac{ \frac{ 3 }{ 2 } + 1 }{ \frac{ 3 }{ 2 } - 1 } = \frac{ 10 }{ 2 } = 5
		$$

		$$
		\sqrt{ \frac{ 3 }{ 2 } + 1 } = \sqrt{ \frac{ 5 }{ 2 } }
		$$

	3. $f(0)$.

		$$
		\frac{ 0 + 1 }{ 0 - 1 } = -1
		$$

		$$
		\sqrt{ 0 + 1 } = 1
		$$

2. Simplifique al máximo la expresión $\frac{ f(x + h) - f(x) }{ h }$ $h \neq 0$.

	1. $f(x) = \frac{ x + 1 }{ x - 1 }$.

	$$
	\begin{align}
		& = \frac{ \frac{ (x + h) + 1 }{ (x + h) - 1 } - \frac{ x + 1 }{ x - 1 } }{ h } \\
		& = \frac{ \frac{ ((x + h) + 1) (x - 1) - ((x + h) - 1) (x + 1) }{ ((x + h) - 1) (x - 1) } }{ h } \\
		& = \frac{ -2 }{ x^2 + x h - 2 x - h + 1 }
	\end{align}
	$$

	2. $f(x) = \sqrt{ x + 1 }$.

		$$
		\frac{ \sqrt{ (x + h) + 1 }- \sqrt{ x + 1 } }{ h }
		$$

3. Encuentre todos los valores de $x \in D_f$ tales que $f(x) \geq 4$.

	1. $f(x) = \frac{ x + 1 }{ x - 1 }$.

		$$
		\frac{ x + 1 }{ x - 1 } \geq 4
		$$

		1. $x - 1 > 0$.

			$$
			\begin{align}
				& x > 1 \\
				& x \in (1,\infty)
			\end{align}
			$$

			$$
			\begin{align}
				& x + 1 \geq 4 (x - 1) \\
				& x - 4 x \geq -4 - 1 \\
				& x \leq \frac{ -5 }{ -3 } \\
				& x \in \left (-\infty,\frac{ 5 }{ 3 } \right ]
			\end{align}
			$$

			$$
			x \in \left (1,\frac{ 5 }{ 3 } \right ]
			$$

		2. $x - 1 < 0$.

			$$
			\begin{align}
				& x < 1 \\
				& x \in (-\infty,1)
			\end{align}
			$$

			$$
			\begin{align}
				& x + 1 \leq 4 (x - 1) \\
				& x \geq \frac{ -5 }{ -3 } \\
				& x \in \left [\frac{ 5 }{ 3 },\infty \right )
			\end{align}
			$$

			$$
			x \in \left (1,\frac{ 5 }{ 3 } \right ]
			$$

		$$
		\begin{align}
			& x \in \left (1,\frac{ 5 }{ 3 } \right ] \cup \left (1,\frac{ 5 }{ 3 } \right ] \\
			& x \in \left (1,\frac{ 5 }{ 3 } \right ]
		\end{align}
		$$

	2. $f(x) = \sqrt{ x + 1 }$.

		$$
		\begin{align}
			& x + 1 \geq 0 \\
			& x \geq -1 \\
			& x \in (-1,\infty)
		\end{align}
		$$

	$$
	\begin{align}
		& \sqrt{ x + 1 } \geq 4 \\
		& x + 1 \geq 16 \\
		& x \geq 15 \\
		& x \in [15,\infty)
	\end{align}
	$$

	$$
	\begin{align}
		& x \in (-1,\infty) \cap [15,\infty) \\
		& x \in [15,\infty)
	\end{align}
	$$

## 3

Sea $f(x) = 1 - \sqrt{ \frac{ 3 }{ x^2 } + 1 }$. Determine si $6$ y $-4$ están en el [[personal/math/function/range|rango]] de $f$.

- $6$.

	$$
	\begin{align}
		& 1 - \sqrt{ \frac{ 3 }{ x^2 } + 1 } = 6 \\
		& \sqrt{ \frac{ 3 }{ x^2 } + 1 } = -5
	\end{align}
	$$

	Esa igualdad no es posible, porque una raíz cuadrada nunca puede dar un número negativo (al menos en los números reales).

- $-4$.

	$$
	\begin{align}
		& 1 - \sqrt{ \frac{ 3 }{ x^2 } + 1 } = -4 \\
		& \sqrt{ \frac{ 3 }{ x^2 } + 1 } = 5 \\
		& \frac{ 3 }{ x^2 } + 1 = 25 \\
		& x^2 = \frac{ 3 }{ 24 } \\
		& x = \pm \sqrt{ \frac{ 1 }{ 8 } }
	\end{align}
	$$

## 4

Determine el rango de las siguientes funciones:

1. $f(x) = 4 + |x - 3|$.

	$$
	\begin{align}
		& |x - 3| \geq 0 \\
		& |x - 3| \in [0,\infty)
	\end{align}
	$$

	$$
	y_{ \text{min} } = 4 + 0 = 4 \quad R_f = [4,\infty)
	$$

2. $f(x) = \sqrt{ -x^2 + 6 x }$.

	$$
	\begin{align}
		& -x^2 + 6 x \geq 0 \\
		& -x (x - 6) \geq 0
	\end{align}
	$$

	1. $-x \geq 0 \quad x - 6 \geq 0$.

		$$
		\begin{align}
			& x \leq 0          & x \geq 6 \\
			& x \in [-\infty,0] & x \in [6,\infty) \\
			& x \in \emptyset
		\end{align}
		$$

	2. $-x \leq 0 \quad x - 6 \leq 0$.

		$$
		\begin{align}
			& x \leq 0         & x \leq 6 \\
			& x \in [0,\infty) & x \in (-\infty,6] \\
			x \in [0,6]
		\end{align}
		$$

	$$
	\begin{align}
		& x \in \emptyset \cup [0,6] \\
		& x \in [0,6]
	\end{align}
	$$

	Como $f(x)$ es una función creciente $y_{ \text{min} } = { -x^2 + 6 x }_\text{min}$ y $y_\text{max} = { -x^2 + 6 x }_\text{max}$.

	$$
	\begin{align}
		& y_{ \text{min} } = f(0) = f(6) = \sqrt{ 0 } = 0 \\
		& y_{ \text{max} } = f(3) = \sqrt{ -(3)^2 + 6 (3) } = 3
	\end{align}
	$$

	$$
	R_f = [0,3]
	$$

## 5

Determine si las siguientes gráficas corresponden a la gráfica de una función $y = f(x)$.

Podemos usar el criterio de la línea vertical para determinar si la gráfica corresponde a una función o no, si encontramos una línea que intercepta más de un punto, entonces diremos que no es una función.

> Un $x$ no puede tener más de una imagen asociada a él.

![graphs](college/semesters/01/assets/calculo_I/2_02_01-graphs.jpg)

## 6

Dada la función $f$.

$$
f(x) =
	\begin{cases}
		x^2 - 4         & -2 \leq x < -1 \\
		\frac{ 1 }{ x } & 0 < x < 3 \\
		\sqrt{ x + 1 }  & x \geq 3
	\end{cases}
$$

1. Determine el dominio y rango de $f$.

	$$
	D_f = [-2,-1) \cup (0, 3) \cup [3,\infty) = [-2,-1) \cup (0,\infty)
	$$

	$$
	R_f = (-3,\infty)
	$$

2. Calcule:

	1. $f\left (-\frac{ 3 }{ 2 } \right )$.

		$$
		\begin{align}
			& = \left (-\frac{ 3 }{ 2 } \right )^2 - 4 \\
			& = -\frac{ 7 }{ 4 }
		\end{align}
		$$

	2. $f(−1)$.

		$$
		-1 \notin D_f
		$$

	3. $f(2)$.

		$$
		f(2) = \frac{ 1 }{ 2 }
		$$

	4. $f(3)$.

		$$
		\sqrt{ 3 + 1 } = 2
		$$

	5. $f(a + 3) \quad a > 0$.

		$$
		a > 0 \quad a + 3 > 3
		$$

		$$
		\begin{align}
			& = \sqrt{ (a + 3) + 1 } \\
			& = \sqrt{ a + 4 }
		\end{align}
		$$

	6. $f(−2 a) \quad a > 0$.

		$$
		a > 0 \quad -2 a < 0 \\[10 pt]
		$$

		$$
		\begin{align}
			& -2 \leq -2 a < -1 \\
			& \frac{ 1 }{ 2 } < a \leq 1 \\
			& a \in \left (\frac{ 1 }{ 2 }, 1 \right ]
		\end{align}
		$$

		$$
		\forall a \in \left (\frac{ 1 }{ 2 }, 1 \right ] \quad f(−2 a) = 4 a - 4 = 4 (a - 1)
		$$

3. Grafique $f(x)$.

	![graph](college/semesters/01/assets/calculo_I/2_02_02-graph.svg)

## 7

Un recipiente rectangular sin tapa tiene volumen de $20$ metros cubicos, la longitud de su base es el doble de su ancho. El material para la base cuesta $6$ dólares por metro cuadrado y para las caras $4$ dólares. Exprese el costo del material como función del ancho de la base. Indique el dominio de la función.

![rectangular container](college/semesters/01/assets/calculo_I/2_02_03-rectangular_container.svg)

$$
a = a \quad b = 2 a
$$

$$
\text{volumen} = a b h = v \quad h = \frac{ v }{ a b } = \frac{ v }{ 2 a^2 }
$$

$$
\begin{align}
	\text{costo} & = 2 (4 a h) + 2 (4 b h) + 6 b a \\
	             & = 4 \frac{ v }{ a } + 8 \frac{ v }{ a } + 12 a^2 \\
	             & = \frac{ 12 ( v + a^3) }{ a } \\
	             & = \frac{ 12 ( 20 + a^3) }{ a }
\end{align}
$$

$$
D_f = (0,\infty)
$$

## 8

Se debe construir una caja abierta a partir de un trozo rectangular de cartón, de $12$ pulgadas de ancho y $20$ pulgadas de largo, recortando cuadrados de lados iguales $x$ en cada una de las esquinas y doblando los lados. Exprese el volumen de la caja en función de $x$, indicando su dominio.

![problem](college/semesters/01/assets/calculo_I/2_02_04-figure.svg)

$$
\text{volumen} = a l h = v \quad h = x
$$

$$
l = 20 - 2 x \quad a = 12 - 2 x
$$

$$
\begin{align}
	v & = (12 - 2 x) (20 - 2 x) x
	  & = 4 x^3 - 64 x^2 + 240 x
\end{align}
$$

$$
\begin{align}
	& 4 x^3 - 64 x^2 + 240 x > 0 \\
	& x^3 - 16 x^2 + 60 x > 0 \\
	& x (x - 6) (x - 10) > 0
\end{align}
$$

Hay que probar los casos donde este producto es positivo.

> Este número es $C_{ 3,2 } + 1 = 4$.

1. $x > 0$, $x - 6 > 0$ y $x - 10 > 0$.

	$$
	x \in (10,\infty)
	$$

2. $x > 0$, $x - 6 < 0$ y $x - 10 < 0$.

	$$
	x \in (0,6)
	$$

3. $x < 0$, $x - 6 < 0$ y $x - 10 > 0$.

	$$
	x \in \emptyset
	$$

4. $x < 0$, $x - 6 > 0$ y $x - 10 < 0$.

	$$
	x \in \emptyset
	$$

$$
\begin{align}
	& x \in (10,\infty) \cup (0,6) \cup \emptyset \\
	& x \in (0,6) \cup (10,\infty)
\end{align}
$$

## 9

Un cilindro circular recto de radio $r$ está inscrito en una esfera de radio $2 r$. Determine una fórmula para el volumen $V$ del cilindro en términos de $r$.

![problem](college/semesters/01/assets/calculo_I/2_02_05-figure.svg)

$$
\text{volumen} = \pi r^2 h = v \quad (1) \\
$$

$$
\begin{align}
	& h^2 = (4 r)^2 - (2 r)^2 \\
	& h = \sqrt{ 12 r^2 } \\
	& = 4 \sqrt{ 3 r^2 }
\end{align}
$$

Reemplazando $h$ en $(1)$.

$$
v = 4 \pi r^2 \sqrt{ 3 r^2 }
$$

## 10

Uno de los catetos de un triángulo rectángulo tiene longitud $6$ centímetros. Exprese la longitud de la altura perpendicular a la hipotenusa como función de la longitud de la hipotenusa.

![problem](college/semesters/01/assets/calculo_I/2_02_06-figure.svg)

$$
\begin{align}
	& A = \frac{ 1 }{ 2 } 6 b \\
	& = \frac{ 1 }{ 2 } c h
\end{align}
$$

$$
h^2 = 6^2 + b^2 \quad b = \sqrt{ h^2 - 36 }
$$

$$
\begin{align}
	& \frac{ 1 }{ 2 } 6 b = \frac{ 1 }{ 2 } c h \\
	& h = \frac{ 6 \sqrt{ c^2 - 36 } }{ c }
\end{align}
$$
