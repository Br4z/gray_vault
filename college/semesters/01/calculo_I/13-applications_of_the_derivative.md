---
reviewed_on: "2026-01-13"
---

# Applications of the derivative

## 1

Verifique las hipótesis del teorema de Rolle en el intervalo indicado y halle los números $c$ que satisfagan la conclusión del teorema.

1. $f(x) = x^3 - 3 x^2 - x + 3$, $x \in [-1,3]$.

	$$
	\begin{align}
		& f(-1) = (-1)^3 - 3 (-1)^2 + 1 + 3 \\
		& = 0 \\
		& f(3) = (3)^3 - 3 (3)^2 - 3 + 3 \\
		& = 0 \\
		& f(-1) = f(3)
	\end{align}
	$$

	$$
	\begin{align}
		& f^\prime(c) = 3 x^2 - 6 x - 1 \\
		& f^\prime(c) = 0  \\
		& 3 c^2 - 6 c - 1 = 0 \\
		& c = \frac{ -(-6) \pm \sqrt{ (-6)^2 - 4 (3)(-1) } }{ 2 (3) } \\
		& c = \frac{ 6 \pm \sqrt{ 36 + 12 } }{ 6 } \\
		& c = 1 \pm \frac{ 2 \sqrt{ 3 } }{ 3 } \\
		& c_1 = 1 + \frac{ 2 \sqrt{ 3 } }{ 3 } \\
		& \approx 2.155 \\
		& c_2 = 1 - \frac{ 2 \sqrt{ 3 } }{ 3 } \\
		& \approx -0.155
	\end{align}
	$$

2. $f(x) = x \sqrt{ x + 6 }$, $x \in [-6,0]$.

	$$
	\begin{align}
		& f(-6) = -6 \sqrt{ 0 } \\
		& = 0 \\
		& f(0) = 0 \sqrt{ 6 } \\
		& = 0 \\
		& f(-6) = f(0)
	\end{align}
	$$

	$$
	\begin{align}
		& f^\prime(c) = \sqrt{ x + 6 } + \frac{ x }{ 2 \sqrt{ x + 6 } } \\
		& = \frac{ 3 x + 12 }{ 2 \sqrt{ x + 6 } } \\
		& f^\prime(c) = 0 \\
		& \frac{ 3 x + 12 }{ 2 \sqrt{ x + 6 } } = 0 \\
		& 3 x + 12 = 0 \\
		& x = -\frac{ 12 }{ 3 } \\
		& x = -4
	\end{align}
	$$

## 2

Verifique las hipótesis del teorema del valor medio en el intervalo indicado y halle los números $c$ que satisfagan la conclusión del teorema.

1. $f(x) = x^4 - 3 x^2 + x$, $x \in [-1,1]$.

	$$
	\begin{align}
		& f^\prime(c) = \frac{ f(1) - f(-1) }{ 1 - (-1) } \\
		& = \frac{ -1 - (-3) }{ 1 + 1 } \\
		& = \frac{ 2 }{ 2 } \\
		& = 1
	\end{align}
	$$

	$$
	\begin{align}
		& f^\prime(c) = 4 c^3 - 6 c + 1 \\
		& f^\prime(c) = 1 \\
		& 4 c^3 - 6 c + 1 = 1 \\
		& 4 c^3 - 6 c = 0 \\
		& 2 c (2 c^2 - 3) = 0 \\
		& 2 c = 0 \por 2 c^2 - 3  = 0 \\
		& c = 0 \por c = \pm \sqrt{  \frac{ 1 }{ 2 } }
	\end{align}
	$$

	Como $c = 0 \in [-1,1]$ y $c = \pm \sqrt{ \frac{ 1 }{ 2 } } \notin [-1,1]$, el $c$ que satisface la conclusión es $c = 0$.

2. $f(x) = \frac{ x }{ x + 2 }$, $x \in [1,4]$.

	$$
	\begin{align}
		& f^\prime(c) = \frac{ f(4) - f(1) }{ 4 - 1 } \\
		& = \frac{ \frac{ 2 }{ 3 } - \frac{ 1 }{ 3 } }{ 3 } \\
		& = \frac{ 1 }{ 9 }
	\end{align}
	$$

	$$
	\begin{align}
		& f^\prime(c) = \frac{ (c + 2) - c }{ (c + 2)^2 } \\
		& = \frac{ 2 }{ (c + 2)^2 } \\
		& f^\prime(c) = \frac{ 1 }{ 9 } \\
		& \frac{ 2 }{ (c + 2)^2 } = \frac{ 1 }{ 9 } \\
		& (c + 2)^2 = 18 \\
		& c = -2 \pm 3 \sqrt{ 2 }
	\end{align}
	$$

	Como $c = 0 \pand c = -2 + 3 \sqrt{ 2 } \in [-1,1]$ y $c = -2 - 3 \sqrt{ 2 } \in [-1,1] \notin [-1,1]$, los valores de $c$ que satisfacen la conclusión del teorema son $c = 0$ y $c = -2 + 3 \sqrt{ 2 }$.

## 3

Use el teorema del valor medio para determinar:

1. ¿Qué valor es probable para $f(2)$ si suponemos que $f(0) = -3$ y que $f^\prime(x) \leq 5$?

	$$
	\begin{align}
		& f^\prime(c) = \frac{ f(2) - f(0) }{ 2 - 0 } \\
		& f^\prime(c) = \frac{ f(2) - (-3) }{ 2 } \\
		& \frac{ f(2) + 3 }{ 2 } \leq 5 \\
		& f(2) + 3 \leq 10 \\
		& f(2) \leq 7
	\end{align}
	$$

2. ¿Cuán pequeña puede ser $f(4)$ si $f(1) = 10$ y $f^\prime(x) \geq 2$ cuando $1 \leq x \leq 4$?

	$$
	\begin{align}
		& f^\prime(c) = \frac{ f(4) - f(1) }{ 4 - 1 } \\
		& f^\prime(c) = \frac{ f(4) - 10 }{ 3 } \\
		& \frac{ f(4) - 10 }{ 3 } \geq 2 \\
		& f(4) - 10 \geq 6 \\
		& f(4) \geq 16
	\end{align}
	$$

	El valor mas pequeño que puede tomar $f(4)$ es 16.

## 4

Muestre que la ecuación $x^9 + 5 x - 3 = 0$ tiene solución unica en los números reales.

$$
\begin{align}
	& f(0) = 0 + 0 - 3 \\
	& = -3 \\
	& f(1) = 1 + 5 - 3 \\
	& = 3
\end{align}
$$

Como $f(x)$ es una función polinomica, es **continua** en todos los reales, dado que $f(0) < 0$ y $f(1) > 0$, el **teorema del valor intermedio** garantiza que existe al menos un numero $c \in (0,1)$, tal que $f(c) = 0$.

$$
\begin{align}
	& f^\prime(x) = 9 x^8 + 5 \\
	& x^8 \geq 0 \\
	& 9 x^8 \geq 0 \\
	& 9 x^8 + 5 \geq 5 \\
	& f^\prime(x) \geq 5
\end{align}
$$

Como la derivada siempre es **positiva**, la función $f(x)$ es **estrictamente creciente** en todo su dominio.

## 5

Calcule $\frac{ d^2y }{ dx^2 }$ si $x^2 y^2 = x + y$.

$$
\begin{align}
	& \frac{ d }{ dx } (x^2 y^2) = \frac{ d }{ dx } (x + y) \\
	& (2 x y^2) + (x^2) (2 y y^\prime) = 1 + y^\prime \\
	& 2 x^2 y y^\prime - y^\prime = 1 - 2 x y^2 \\
	& y^\prime (2 x^2 y - 1) = 1 - 2 x y^2 \\
	& y^\prime = \frac{ 1 - 2 x y^2 }{ 2 x^2 y - 1 }
\end{align}
$$

$$
y^{ '' } = \frac{ (-2 y^2 -  4 x y y^\prime) (2 x^2 y - 1) - (1 - 2 x y^2) (4 x y + 2 x^2 y^\prime) }{ (2 x^2 y - 1)^2 } \\
$$

Términos sin $y^\prime$:

$$
\begin{align}
	& - 2 y^2 (2 x^2 y - 1) - 4 x y (1 - 2 x y^2) \\
	& = -4 x^2 y^3  + 2 y^2 - 4 x y + 8 x^2 y^3 \\
	& = 4 x^2 y^3 + 2 y^2 - 4 x y \\
	& = 2 y (2 x^2 y^2 + y - 2 x) \\
	& = 2 y (2 (x + y) + y - 2 x) \\
	& = 2 y (3 y) \\
	& = 6 y^2
\end{align}
$$

Términos con $y^\prime$:

$$
\begin{align}
	& y^\prime [-4 x y (2 x^2 y - 1) - 2 x^2 (1 - 2 x y^2)] \\
	& = y^\prime [-8 x^3 y^2 + 4 x y - 2 x^2 + 4 x^3 y^2] \\
	& = y^\prime [-4 x^3 y^2 + 4 x y - 2 x^2] \\
	& = -2 x y^\prime [2 x^2 y^2 - 2 y + x] \\
	& = -2 x y^\prime [2 (x + y) - 2 y + x] \\
	& = -2 x y^\prime [2x + 2y - 2 y + x] \\
	& = -2 x y^\prime [3 x] \\
	& = -6 x^2 y^\prime
\end{align}
$$

$$
\begin{align}
	& y^{ '' } = \frac{ 6 y^2 - 6 x^2 }{ (2 x^2 y - 1)^2 } \left (\frac{ 1 - 2 x y^2 }{ 2 x^2 y - 1 } \right ) \\
	& = \frac{ 6 (x^2 + 4 x y + y^2) }{ (2 x^2 y - 1)^3 }
\end{align}
$$

## 6

1. Encuentre el valor de las constantes $a$, $b$, $c$ y $d$ tal que la función $f(x) = a x^3 + b x^2 + c x + d$ tenga un máximo local igual a 5 en $x = -3$ y un mínimo local igual a 0 en $x = 2$.

	$$
	f^\prime(x) = 3 a x^2 + 2 b x + c
	$$

	$$
	\begin{align}
		& f(-3) = 5 \\
		& -27 a + 9 b - 3 c + d = 5 \\
		& f^\prime(-3) = 0 \\
		& 27 a - 6 b + c = 0 \\
		& f(2) = 0 \\
		& 8 a + 4 b + 2 c + d = 0 \\
		& f^\prime(-2) = 0 \\
		& 12 a - 4 b + c = 0
	\end{align}
	$$

	$$
	\begin{align}
		& \begin{array}{cccc|c}
			-27 & 9  & -3 & 1 & 5 \\
			27  & -6 & 1  & 0 & 0 \\
			8   & 4  & 2  & 1 & 0 \\
			12  & -4 & 1  & 0 & 0
		\end{array} \\[10 pt]
		& \begin{array}{cccc|c}
			1 & 0 & 0 & 0 & \frac{ 2 }{ 25 } \\
			0 & 1 & 0 & 0 & \frac{ 3 }{ 25 } \\
			0 & 0 & 1 & 0 & \frac{ 36 }{ 25 } \\
			0 & 0 & 0 & 1 & \frac{ 44 }{ 25 }
		\end{array} \\
	\end{align}
	$$

	$$
	f(x) = \frac{ 2 }{ 25 } x^3 + \frac{ 3 }{ 25 } x^2 + \frac{ 36 }{ 25 } x + \frac{ 44 }{ 25 }
	$$

2. Halle el valor de la constante $c$, para que la gráfica de $f(x) = c x^2 + \frac{ 1 }{ x^2 }$ tenga un punto de inflexión en $(1,f(1))$.

	$$
	\begin{align}
		& f^\prime(x) = 2 c x - \frac{ 2 }{ x^3 } \\
		& f^{ '' }(x) = 2 c + \frac{ 6 }{ x^4 }
	\end{align}
	$$

	$$
	\begin{align}
		& f^{ '' }(1) = 0 \\
		& 2 c + \frac{ 6 }{ 1 } = 0 \\
		& c = -\frac{ 6 }{ 2 } \\
		& = -3
	\end{align}
	$$

	$$
	f(x) = -3 x^2 + \frac{ 1 }{ x^2 }
	$$

## 7

Elabora una gráfica aproximada de una función $y = f(x)$ que satisfaga:

- Puntos críticos en $(-1,1)$ y $(3,2)$.

- Punto de inflexión en $(4,1)$.

- $\lim_{ x \to 0^- } f(x) = \infty$.

- $\lim_{ x \to 0^+ } f(x) = -\infty$.

- $\lim_{ x \to \infty } f(x) = 0$.

## 8

Una caja cerrada con base cuadrada tiene un volumen de $2,000$ pulgadas cúbicas. El material de la tapa y la base cuesta 3 centavos la pulgada cuadrada, mientras que el material para los lados cuesta $1.5$ centavos la pulgada cuadrada. Encuentre las dimensiones de la caja de modo que el costo del material sea mínimo.

$$
\begin{align}
	& V = x^2 y = 2,000 \\
	& y = \frac{ 2,000 }{ x^2 }
\end{align}
$$

$$
\begin{align}
	& C_{ \text{tapa} + \text{base} } = 3 (2 x^2) = 6 x^2 \\
	& C_{ \text{lados } } = \frac{ 3 }{ 2 } (4 x y) \\
	& C = 6 x^2 + 6 x y \\
	& = 6 x^2 + \frac{ 12,000 }{ x }
\end{align}
$$

$$
\begin{align}
	& C^\prime(x) = 12 x - \frac{ 12,000 }{ x^2 } \\
	& C^{ '' } = 12 + \frac{ 24,000 }{ x^3 }
\end{align}
$$

$$
\begin{align}
	& C^\prime(x) = 0 \\
	& 12 x - \frac{ 12,000 }{ x^2 } = 0 \\
	& 12 x^3 =  12,000 \\
	& x = \sqrt[3]{ 1,000 } \\
	& = 10
\end{align}
$$

$$
\begin{align}
	& C^{ '' }(10) = 12 + \frac{ 24,000 }{ 10^3 } \\
	& = 12 + 24 \\
	& = 36
\end{align}
$$

Como $C^{ '' }(10) > 0$, confirmamos que este en $x = 10$ hay un **mínimo**.

## 9

Un granjero quiere cerrar un terreno rectangular con área de $2,400$ pies cuadrados. También quiere usar algo de cerca para construir una división interna paralela a uno de los lados del corral. ¿Cuál es la longitud mínima total de cerca que requiere este proyecto?

$$
\begin{align}
	& A = 2,400 = x y \\
	& y = \frac{ 2,400 }{ x } \\
	& L(x,y) = 2 x + 3 y \\
	& L(x) = 2 x + \frac{ 7,200 }{ x } \\
	& = \frac{ 2 x^2 + 7,200 }{ x } \\
	& L^\prime(x) = \frac{ (2 x^2 + 7,200) -  4 x^2 }{ x^2 } \\
	& = \frac{ -2 x^2 + 7,200 }{ x^2 }
\end{align}
$$

$$
\begin{align}
	& L^\prime(x) = 0 \\
	& \frac{ -2 x^2 + 7,200 }{ x^2 } = 0 \\
	& -2 x^2 + 7,200 = 0 \\
	& x = \sqrt{ 3,600 } = 60 \\
	& y = \frac{ 2,400 }{ 60 } \\
	& = 40
\end{align}
$$

$$
\begin{align}
	& L(60,40) = 2 (60) + 3 (40) \\
	& = 240
\end{align}
$$

## 10

Un triángulo rectángulo en el primer cuadrante está formado por los ejes coordenados $x$ y $y$, y una recta que pasa por el punto $P(2,3)$. Halle las dimensiones del triángulo para que su área sea mínima.

Tenemos tres puntos:

$$
\begin{align}
	& A(x,0) \\
	& B(2,3) \\
	& C(0,y)
\end{align}
$$

$$
\begin{align}
	& m = \frac{ 3 - 0 }{ 2 - x } \\
	& = \frac{ 3 }{ 2 - x } \\
	& m = \frac{ y - 3 }{ 0 - 2 } \\
	& = \frac{ y - 3 }{ -2 } \\
	& \frac{ 3 }{ 2 - x } = \frac{ y - 3 }{ -2 } \\
	& y = -\frac{ 3 x }{ 2 - x }
\end{align}
$$

$$
\begin{align}
	& A = \frac{ 1 }{ 2 } x y \\
	& = \frac{ 1 }{ 2 } x \left (-\frac{ 3 x }{ 2 - x } \right ) \\
	& = -\frac{ 3 x^2 }{ 4 - 2 x } \\
	& = \frac{ 3 x^2 }{ 2 x - 4 } \\
	& A^\prime(x) = \frac{ 6 x^2 - 24 x }{ (2 x - 4)^2 }
\end{align}
$$

$$
\begin{align}
	& A^\prime(0) = 0 \\
	& \frac{ 6 x^2 - 24 x }{ (2 x - 4)^2 } = 0 \\
	& 6 x^2 - 24 x = 0 \\
	& x (6 x - 24) = 0 \\
	& x = 0 \lor 6 x - 24 = 0 \\
	& x = 0 \lor x = 4
\end{align}
$$

$$
\begin{align}
	& y = -\frac{ 3 (4) }{ 4 - 2 (4) } \\
	& = -\frac{ 12 }{ -8 } \\
	& = 3
\end{align}
$$

## 11

La base de un triángulo está en el eje $x$, un lado sobre la recta $y = 3 x$ y el tercer lado pasa por el punto $P(1,1)$ ¿Cuál es la pendiente del tercer lado si el área del triángulo ha de ser mínima?

La ecuación punto-pendiente para el tercer lado es:

$$
\begin{align}
	& B = (0,0) \\
	& C = (a,3 a) \\
	& D = (x,0) \\
	& A = \frac{ 1 }{ 2 } 3 a x
\end{align}
$$

Los puntos $C$, $D$ y $P$ hacen parte de la recta del tercer lado.

$$
\begin{align}
	& m = \frac{ 1 - 3 a }{ 1 - a } = \frac{ 0 - 1 }{ x - 1 } \\
	& (1 - 3 a) (x - 1) = a + 1 \\
	& x - 1 - 3 a x + 3 a = a + 1 \\
	& -3 a x + 3 a - a = 1 - x + 1 \\
	& a (-3 x + 2) = -x \\
	& a = \frac{ x }{ 3 x - 2 }
\end{align}
$$

$$
\begin{align}
	& A(x) = \frac{ 1 }{ 2 } 3 \left (\frac{ x }{ 3 x - 2 } \right ) x \\
	& = \frac{ 3 x^2 }{ 6 x - 4 } \\
	& A^\prime(x) = \frac{ 18 x^2 - 24 x }{ (6 x - 4)^2 }
\end{align}
$$

$$
\begin{align}
	& A^\prime(x) = 0 \\
	& 18 x^2 - 24 x = 0 \\
	& 2 x (9 x - 12) = 0 \\
	& x = 0 \lor 9 x - 12 = 0 \\
	& x = 0 \lor x = \frac{ 4 }{ 3 }
\end{align}
$$

$$
\begin{align}
	& m = \frac{ -1 }{ \frac{ 4 }{ 3 } - 1 } \\
	& = -3
\end{align}
$$

## 12

¿Qué puntos de la gráfica de $y^2 - x^2 = 1$ están más cerca del punto $P(2,0)$?

$$
\begin{align}
	& y = \pm \sqrt{ x^2 + 1 } \\
	& d = \sqrt{ (x - 2)^2 + (y - 0)^2 } \\
	& D = (x - 2)^2 + y^2
\end{align}
$$

$$
\begin{align}
	& D(x) = (x - 2)^2 + (x^2 + 1) \\
	& = 2 x^2 - 4 x + 5 \\
	& D^\prime(x) = 4 x - 4
\end{align}
$$

$$
\begin{align}
	& D^\prime(x) = 0 \\
	& 4 x - 4 = 0 \\
	& x = 1
\end{align}
$$

$$
\begin{align}
	& y = \pm \sqrt{ 1 + 1 } \\
	& y = \pm \sqrt{ 2 }
\end{align}
$$

Los puntos son $(1,\sqrt{ 2 })$ y $(1,-\sqrt{ 2 })$.

## 13

Siendo la función $f(x) = 5 x^\frac{ 2 }{ 3 } - x^\frac{ 5 }{ 3 }$ halle:

$$
\begin{align}
	& f(x) = 5 \sqrt[3]{ x^2 } - x \sqrt[3]{ x^2 } \\
	& f^\prime(x) = \frac{ 30 - 15 x }{ 9 x^\frac{ 1 }{ 3 } } \\
	& = \frac{ 10 - 5 x }{ 3 x^\frac{ 1 }{ 3 } } \\
	& f^{ '' } = -\frac{ 10 (x^\frac{ 1 }{ 3 } + 1) }{ 9 x^\frac{ 2 }{ 3 } }
\end{align}
$$

- dominio.

	$$
	x \in \mathbb{ R }
	$$

- rango.

	$$
	\begin{align}
		& \lim_{ x \to -\infty } f(x) = \infty \\
		& \lim_{ x \to \infty } f(x) = -\infty
	\end{align}
	$$

- intervalos de crecimiento: $(0,2)$.

- intervalos de decrecimiento: $(-\infty,0) \cup (2,\infty)$.

- intervalos de concavidad hacia arriba: $(-\infty,-1)$.

- intervalos de concavidad hacia abajo: $(-1,0) \cup (0,\infty)$.

- puntos de inflexión: $(-1,f(-1))$.

- asíntotas horizontales: no tiene.

- asíntotas verticales: no tiene.
