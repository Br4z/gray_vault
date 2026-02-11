---
reviewed_on: "2026-01-01"
---

# Extremes in a closed interval

## 1

1. Esboce la gráfica de una función continua en $\mathbb{ R }$, que no tenga extremos absolutos pero si un máximo y un mínimo relativo.

	![graph](college/semesters/01/assets/calculo_I/2_12_01-graph.jpg)

2.  Dibuje la gráfica de una función f que sea continua en el intervalo $[0,3]$ y tenga las propiedades dadas: mínimo absoluto en $0$, máximo absoluto en $2$, máximos locales en $1$ y $2$, mínimo local en $\frac{ 3 }{ 2 }$.

	![graph](college/semesters/01/assets/calculo_I/2_12_02-graph.jpg)

## 2

Halle los extremos absolutos de la función dada en el intervalo indicado.

1. $f(x) = \frac{ x - 1 }{ x + 2 }$, $x \in [-1,2]$.

	$$
	\begin{align}
		& f^\prime(x) = \frac{ (x - 1) - (x + 2) }{ (x + 2)^2 } \\
		& = \frac{ 3 }{ (x + 2)^2 } \\
		& x \in \mathbb{ R } \setminus \{2\}
	\end{align}
	$$

	$$
	\begin{align}
		& f(-1) = \frac{ -1 - 1 }{ -1 + 2 } \\
		& = -2 \\
		& f(2) = \frac{ 2 - 1 }{ 2 + 2 } \\
		& = \frac{ 1 }{ 4 }
	\end{align}
	$$

	- Máximo absoluto: el valor es $-2$ y ocurre en $x = -1$.

	- Mínimo absoluto: el valor es $\frac{ 1 }{ 4 }$ y ocurre en $x = 2$.

2. $2 \psin{ x } - \pcos{ 2 x }$, $x \in [0,2 \pi]$.

	$$
	\begin{align}
		& f^\prime(x) = 2 \pcos{ x } + 2 \psin{ 2 x } \\
		& 0 = 2 \pcos{ x } + 2 \psin{ 2 x } \\
		& = \pcos{ x } + \psin{ 2 x } \\
		& = \pcos{ x } + 2 \psin{ x } \pcos{ x } \\
		& = \pcos{ x } (1 + 2 \psin{ x }) \\
	\end{align}
	$$

	Tenemos dos casos:

	1. $\pcos{ x } = 0$: $x = \frac{ \pi }{ 2 }$ y $x = \frac{ 3 \pi }{ 2 }$.

	2. $1 + 2 \psin{ x } = 0$ o $\psin{ x } = -\frac{ 1 }{ 2 }$: $\frac{ 7 \pi }{ 6 }$ y $\frac{ 11 \pi }{ 6 }$.

	$$
	\begin{align}
		& f(0) = 2 (0) - 1 = -1 \\
		& f \left (\frac{ \pi }{ 2 } \right ) = 2 (1) - (-1) = 3 \\
		& f \left (\frac{ 7 \pi }{ 6 } \right ) = 2 (-0.5) - (0.5) = -1.5 \\
		& f \left (\frac{ 3 \pi }{ 2 } \right ) = 2 (-1) - (-1) = -1 \\
		& f \left (\frac{ 11 \pi }{ 6 } \right ) = 2 (-0.5) - (-0.5) = -1.5 \\
		& f(2 \pi) = 2 (0) - 1 = -1 \\
	\end{align}
	$$

	- Máximo absoluto: el valor es $3$ y ocurre en $x = \frac{ \pi }{ 2 }$.

	- Mínimo absoluto: el valor es $-\frac{ 3 }{ 2 }$ y ocurre en $x = \frac{ 7 \pi }{ 6 }$ y $x = \frac{ 11 \pi }{ 6 }$.

3. $f(x) = 1 - (x - 3)^\frac{ 2 }{ 3 }$, $x \in [-5,4]$.

	$$
	\begin{align}
		& f^\prime(x) =-\frac{ 2 }{ 3 \sqrt[3]{ x - 3 } }
	\end{align}
	$$

	Como $x = 3$ está en el intervalo y la función original está definida en ese punto, $x = 3$ es un **punto crítico**.

	$$
	\begin{align}
		& f(-5) = 1 - (-5 - 3)^\frac{ 2 }{ 3 } \\ 
		& = 1 - (-8)^\frac{ 2 }{ 3 } \\
		& = 1 - 4 \\
		& = -3 \\
		& f(3) = 1 - (3 - 3)^\frac{ 2 }{ 3 } \\
		& = 1 - 0 \\
		& = 1 \\
		& f(4) = 1 - (4 - 3)^\frac{ 2 }{ 3 } \\
		& = 1 - 1 \\
		& = 0
	\end{align}
	$$

	- Máximo absoluto: el valor es $1$ y ocurre en $x = 3$.

	- Mínimo absoluto: el valor es $-3$ (o $-\frac{ 3 }{ 2 }$) y ocurre en $x = -5$.

4. $f(x) = \abs{ x + 1 } + \abs{ x - 1 }$, $x \in [-2,2]$.

	$$
	f(x) =
		\begin{cases}
			-2 x & -2 \leq x \leq -1 \\
			2    & -1 \leq x \leq 1 \\
			2 x  & 1 < x \leq 2
		\end{cases}
	$$

	$$
	f^\prime(x) =
		\begin{cases}
			-2 & -2 < x < -1 \\
			0  & -1 < x < 1 \\
			2  & 1 < x < 2
		\end{cases}
	$$

	La derivada no existe en $x = -1$ y $x = 1$.

	$$
	\begin{align}
		& f(-2) = 1 + 3 \\
		& = 4 \\
		& f(-1) = 2 \\
		& f(1) = 2 \\
		& f(2) = 4
	\end{align}
	$$

	- Máximo absoluto: el valor es $4$ y ocurre en $x = -2$ y $x = 2$.

	- Mínimo absoluto: el valor es $2$ y ocurre en todo el intervalo cerrado $[-1,1]$.

## 3

Se va a construir una caja abierta a partir de una lámina cuadrada de cartón de 18 pulgadas de lado, cortando en cada esquina cuadrados de igual tamaño y doblando las caras laterales. Halle las dimensiones de la caja que tenga el máximo volumen.

$$
\begin{align}
	& A = (18 - 2 x)^2 \\
	& V = x (18 - 2 x)^2 \quad 0 \leq x < 9 \\
	& V^\prime = (18 - 2 x)^2 - 4 x (18 - 2 x) \\
	& = 4 x^2 - 72 x + 324 - 72 x + 8 x^2 \\
	& = 12 x^2 - 144 x + 324 
\end{align}
$$

$$
\begin{align}
	& V^\prime = 0 \\
	& 12 x^2 - 144 x + 324 = 0 \\
	& x^2 - 144 x + 324 = 0 \\
	& (x - 9) (x - 3) = 0 \\
	& x_1 = 9 \quad x_2 = 3
\end{align}
$$

El volumen se maximiza con $x = 3$, la altura corresponde a $3$ pulgadas y el largo y el ancho a $18 - 2 (3) = 12$ pulgadas.

## 4

Halle las dimensiones del rectángulo de mayor área que puede inscribirse en un semicírculo de radio $r$.

La ecuación de la circunferencia es $x^2 + y^2 = r^2$. Se inscribe un rectángulo dentro de este semicírculo de tal manera que:

- Su base descansa sobre el eje $x$ (el diámetro).

- Sus dos esquinas superiores tocan el arco del semicírculo.

Si se denota la esquina superior derecha del rectángulo como el punto $(x,y)$:

- La longitud de la base (ancho) del rectángulo será $2 x$ (va desde $-x$ a $x$).

- La altura del rectángulo será $y$.

$$
\begin{align}
	& y = \sqrt{ r^2 - x^2 } \\
	& A = (2 x) y \\
	& = (2 x) \sqrt{ r^2 - x^2 } \quad x \in (0, r)
\end{align}
$$

$$
\begin{align}
	& A^\prime = (A^2)^\prime \\
	& = \pprime{ 4 x^2 (r^2 - x^2) } \\
	& = 8 r^2 x - 16 x^3 \\
	& A^\prime = 0 \\
	& 8 r^2 x - 16 x^3 = 0 \\
	& r^2 x - 2 x^3 = 0 \\
	& x (r^2 - 2 x^2) = 0 \\
	& r^2 - 2 x^2 = 0 \\
	& x = \sqrt{ \frac{ r^2 }{ 2 } } \\
	& = \frac{ r }{ \sqrt{ 2 } } \\
	& = \frac{ \sqrt{ 2 } r }{ 2 }
\end{align}
$$

$$
\begin{align}
	& y = \sqrt{ r^2 - \left (\frac{ \sqrt{ 2 } r }{ 2 } \right )^2 } \\
	& = \sqrt{ r^2 - \frac{ r^2 }{ 2 } } \\
	& = \sqrt{ \frac{ r^2 }{ 2 } } \\
	& = \frac{ \sqrt{ 2 } r }{ 2 }
\end{align}
$$

El ancho correspondería a $2 \left ( \frac{ \sqrt{ 2 } r }{ 2 } \right ) = \sqrt{ 2 } r$.

## 5

Encuentre las dimensiones del rectángulo de mayor área que pueda inscribirse en un triángulo rectángulo de $80$ centímetros de base y $50$ centímetros de altura.

El triángulo rectángulo está colocado en un plano cartesiano:

- El ángulo recto está en el origen $(0,0)$.

- La base de $80$ cm descansa sobre el eje $x$.

- La altura $50$ descansa sobre el eje $y$.

El triángulo inscrito tendrá:

- Una base $x$ sobre el eje $x$.

- Una base $y$ sobre el eje $y$.

- Un vértice coincidiendo con el origen $(0,0)$ y el vértice opuesto $(x,y)$ tocando la hipotenusa del triángulo.

Se forma un triángulo pequeño en la parte superior (encima del rectángulo) que es semejante con el triángulo grande.

$$
\begin{align}
	& \frac{ 50 - y }{ x } = \frac{ 50 }{ 80 } \\
	& 50 - y = \frac{ 5 x }{ 8 } \\
	& y = 50 - \frac{ 5 x }{ 8 } \\
\end{align}
$$

$$
\begin{align}
	& A = x y \\
	& = x \left (50 - \frac{ 5 x }{ 8 } \right ) \\
	& = 50 x - \frac{ 5 x^2 }{ 8 } \\
	& A^\prime = 50 - \frac{ 5 }{ 4 } x \\
	& A^\prime = 0 \\
	& 50 - \frac{ 5 }{ 4 } x = 0 \\
	& x = 40
\end{align}
$$

$$
\begin{align}
	& y = 50 - \frac{ 5 x }{ 8 } \\
	& = 50 - 25 \\
	& = 25
\end{align}
$$
