---
reviewed_on: "2025-10-16"
---

# Implicit differentiation and related rates

## 1

Halle $\frac{ dy }{ dx }$ si:

1. $y = x \sqrt{ (x^2 - 3)^3 }$.

	$$
	y = x (x^2 - 3)^{ \frac{ 3 }{ 2 } }
	$$

	$$
	\begin{align}
		& x^\prime (x^2 - 3)^{ \frac{ 3 }{ 2 } } + x \pprime{ (x^2 - 3)^{ \frac{ 3 }{ 2 } } }\\
		& = (x^2 - 3)^{ \frac{ 3 }{ 2 } } + 3 x^2 (x^2 - 3)^{ \frac{ 1 }{ 2 } } \\
		& = ((x^2 - 3) + 3 x^2) (x^2 - 3)^{ \frac{ 1 }{ 2 } } \\
		& = (4 x^2 - 3) (x^2 - 3)^{ \frac{ 1 }{ 2 } }
	\end{align}
	$$

2. $y = x 5^{ 6 x + 1 }$.

	$$
	\begin{align}
		& x^\prime 5^{ 6 x + 1 } + x (5^{ 6 x + 1 })^\prime \\
		& = 5^{ 6 x + 1 } + x \pln 5 (6 x + 1)^\prime \\
		& = 5^{ 6 x + 1 } + 6 x \pln 5
	\end{align}
	$$

3. $y = 3^{ -2 x } + \plog[2]{ 1 - x^3 }$.

	$$
	\begin{align}
	& -2 * 3^{ -2 x } \pln 3 + \frac{ -3 x^2 }{ (1 - x^3) \pln 2 } \\
	& = \frac{ -2 \pln 3 }{ 9^x } + \frac{ -3 x^2 }{ (1 - x^3) \pln 2 } \\
	& = \frac{ -2 \pln 3 \pln 2 (1 - x^3) - 3 x^2 * 9^x }{ 9^x (1 - x^3) \pln 2 }
	\end{align}
	$$

4. $y = \pln{ \parctan{ x^2 } }$.

	$$
	\begin{align}
		& \frac{ 1 }{ \parctan{ x^2 } } \parctan{ x^2 }^\prime \\
		& = \frac{ 1 }{ \parctan{ x^2 } } \frac{ -1 }{ 1 + x^2 } (x^2)^\prime \\
		& = \frac{ -2 x }{ \parctan{ x^2 } (1 + x^2) }
	\end{align}
	$$

5. $y = \parctan{ x - \sqrt{ 1 + x^2 } }$.

	$$
	\begin{align}
		& \frac{ 1 }{ 1 + (x - \sqrt{ 1 + x^2 })^2 } (x - \sqrt{ 1 + x^2 })^\prime \\
		& = \frac{ 1 }{ 1 + (x - \sqrt{ 1 + x^2 })^2 } \left (1 - \frac{ x }{ \sqrt{ 1 + x^2 } } \right ) \\
		& = \frac{ 1 }{ 1 + (x - \sqrt{ 1 + x^2 })^2 } \left (\frac{ \sqrt{ 1 + x^2 } - x }{ \sqrt{ 1 + x^2 } } \right ) \\
		& = \frac{ 1 }{ 1 + (x - (x^2 - 2 x \sqrt{ 1 + x^2 } + (1 + x^2)) } \left (\frac{ \sqrt{ 1 + x^2 } - x }{ \sqrt{ 1 + x^2 } } \right ) \\
		& = \frac{ 1 }{ 2 x^2 - 2 x \sqrt{ 1 + x^2 } + 2 } \left (\frac{ \sqrt{ 1 + x^2 } - x }{ \sqrt{ 1 + x^2 } } \right ) \\
		& = \frac{ \sqrt{ 1 + x^2 } - x }{ 2 (x^2 - x \sqrt{ 1 + x^2 } + 1) \sqrt{ 1 + x^2 } } \\
		& = \frac{ \cancel{ \sqrt{ 1 + x^2 } - x } }{ 2 \sqrt{ 1 + x^2 } \cancel{ (\sqrt{ 1 + x^2 } - x) } \sqrt{ 1 + x^2 } } \\
		& = \frac{ 1 }{ 2 (1 + x^2) }
	\end{align}
	$$

6. $y = x \parcsec{ \frac{ 1 }{ x } }$.

	$$
	\begin{align}
		& x^\prime \parcsec{ \frac{ 1 }{ x } } + x \pprime{ \parcsec{ \frac{ 1 }{ x } } } \\
		& = \parcsin{ \frac{ 1 }{ x } } + x \frac{ 1 }{ \frac{ 1 }{ x } \sqrt{ \left (\frac{ 1 }{ x } \right )^2 - 1 } } \pprime{ \frac{ 1 }{ x } }\\
		& = \parcsin{ \frac{ 1 }{ x } } - x \frac{ 1 }{ \frac{ x^2 }{ x } \sqrt{ \frac{ 1 - x^2 }{ x^2 } } } \\
		& = \parcsin{ \frac{ 1 }{ x } } - \frac{ x }{ \frac{ x^2 }{ x^2 } \sqrt{ 1 - x^2  } } \\
		& = \parcsin{ \frac{ 1 }{ x } } - \frac{ x }{ \sqrt{ 1 - x^2 } }
	\end{align}
	$$

## 2

Usando la derivación implícita, halle $\frac{ dy }{ dx } si$:

1. $x \pcos{ y } + y \pcos{ x } = 1$.

	$$
	\begin{align}
		& \pprime{ \pcos{ y } } + \pprime{ y \pcos{ x } } = 0 \\
		& \left (\pcos{ y } - x \psin{ y } \frac{ dy }{ dx } \right ) + \left (\pcos{ x } \frac{ dy }{ dx } - y \psin{ x } \right ) = 0 \\
		& \pcos{ x } \frac{ dy }{ dx } - x \psin{ y } \frac{ dy }{ dx } =  y \psin{ x } - \pcos{ y } \\
		& \frac{ dy }{ dx } (\pcos{ x } - x \psin{ y }) = y \psin{ x } - \pcos{ y } \\
		& \frac{ dy }{ dx } = \frac{ y \psin{ x } - \pcos{ y } }{ \pcos{ x } - x \psin{ y } }
	\end{align}
	$$

2. $x + y = \pcos{ x y }$.

	$$
	\begin{align}
		& (x + y)^\prime = \pcos{ x y }^\prime \\
		& 1 + \frac{ dy }{ dx } = -\psin{ x y } (x y)^\prime \\
		& 1 + \frac{ dy }{ dx } = -\psin{ x y } \left (y + x \frac{ dy }{ dx } \right ) \\
		& 1 + \frac{ dy }{ dx } = -y \psin{ x y } - x \psin{ x y } \frac{ dy }{ dx } \\
		& \frac{ dy }{ dx } + x \psin{ x y } \frac{ dy }{ dx } = -y \psin{ x y } - 1 \\
		& \frac{ dy }{ dx } = \frac{ -y \psin{ x y } - 1 }{ 1 + x \psin{ x y } } = -\frac{ 1 + y \psin{ x y } }{ 1 + x \psin{ x y } }
	\end{align}
	$$

3. $x - y = \parctan{ x + y }$.

	$$
	\begin{align}
		& (x - y)^\prime = \parctan{ x + y }^\prime \\
		& 1 - \frac{ dy }{ dx } = \frac{ 1 }{ 1 + (x + y)^2 } (x + y)^\prime \\
		& 1 - \frac{ dy }{ dx } = \frac{ 1 }{ 1 + (x + y)^2 } \left (1 + \frac{ dy }{ dx } \right ) \\
		& 1 - \frac{ dy }{ dx } = \frac{ 1 }{ 1 + (x + y)^2 } + \frac{ 1 }{ 1 + (x + y)^2 } \frac{ dy }{ dx } \\
		& -\frac{ dy }{ dx } - \frac{ 1 }{ 1 + (x + y)^2 } \frac{ dy }{ dx } = \frac{ 1 }{ 1 + (x + y)^2 } - 1 \\
		& \frac{ dy }{ dx } \left (-1 - \frac{ 1 }{ 1 + (x + y)^2 } \right ) = \frac{ -(x + y)^2 }{ 1 + (x + y)^2 } \\
		& \frac{ dy }{ dx } \left (\frac{ -2 - (x + y)^2 }{ 1 + (x + y)^2 } \right ) = \frac{ -(x + y)^2 }{ 1 + (x + y)^2 } \\
		& \frac{ dy }{ dx } = \frac{ (x + y)^2 }{ 2 + (x + y)^2 }
	\end{align}
	$$

4. $e^{ x^2 } y - 3 y = x^2 + 1$.

	$$
	\begin{align}
		& (e^{ x^2 } y - 3 y)^\prime = (x^2 + 1)^\prime \\
		& (e^{ x^2 } y)^\prime - 3 y^\prime = 2 x \\
		& 2 x e^{ x^2 } y + e^{ x^2 } \frac{ dy }{ dx } - 3 \frac{ dy }{ dx } = 2 x \\
		& e^{ x^2 } \frac{ dy }{ dx } - 3 \frac{ dy }{ dx } = 2 x - 2 x e^{ x^2 } y \\
		& \frac{ dy }{ dx } (e^{ x^2 } - 3) = 2 x - 2 x e^{ x^2 } y \\
		& \frac{ dy }{ dx } = \frac{ 2 x - 2 x e^{ x^2 } y }{ e^{ x^2 } - 3 }
	\end{align}
	$$

5. $\sqrt{ x y } = 1 + x^2 y$.

	$$
	\begin{align}
		& \sqrt{ x y }^\prime = (1 + x^2 y)^\prime \\
		& \frac{ 1 }{ 2 \sqrt{ x y } (x y)^\prime } = (x^2 y)^\prime \\
		& \frac{ y }{ 2 \sqrt{ x y } } + \frac{ x }{ 2 \sqrt{ x y } } \frac{ dy }{ dx } = 2 x y + x^2 \frac{ dy }{ dx } \\
		& \frac{ dy }{ dx } \left (\frac{ x }{ 2 \sqrt{ x y } } - x^2 \right ) = 2 x y - \frac{ y }{ 2 \sqrt{ x y } } \\
		& \frac{ dy }{ dx } \left (\frac{ 2 x^2 \sqrt{ x y } - x }{ 2 \sqrt{ x y } } \right ) = \frac{ 4 \sqrt[3]{ (x y)^2 } - y }{ 2 \sqrt{ x y } } \\
		& \frac{ dy }{ dx } (2 x^2 \sqrt{ x y } - x) = 4 \sqrt[3]{ (x y)^2 } - y \\
		& \frac{ dy }{ dx } = \frac{ 4 \sqrt[3]{ (x y)^2 } - y }{ 2 x^2 \sqrt{ x y } - x }
	\end{align}
	$$

## 3

Halle la ecuación de la recta tangente y normal a la curva $9 x^3 - y^3 = 1$ en el punto $P(1,2)$.

$$
\begin{align}
	& (9 x^3 - y^3)^\prime = 1^\prime \\
	& 27 x^2 - 3 y^2 \frac{ dy }{ dx } = 0 \\
	& \frac{ dy }{ dx } = \frac{ -27 x^2 }{ -3 y^2 } \\
	& \frac{ dy }{ dx } = \frac{ 27 x^2 }{ 3 y^2 }
\end{align}
$$

La pendiente de la recta tangente en dicho punto es

$$
\begin{align}
	& m = \frac{ 27 (1)^2 }{ 3 (2)^2 } \\
	& = \frac{ 27 }{ 12 } \\
	& = \frac{ 9 }{ 4 }
\end{align}
$$

y su ecuación es

$$
\begin{align}
	& (x - 1) \frac{ 9 }{ 4 } = y - 2 \\
	& y = \frac{ 9 }{ 4 } x - \frac{ 1 }{ 4 }
\end{align}
$$

La pendiente de la recta normal es

$$
\begin{align}
	& m = \frac{ -1 }{ \frac{ 9 }{ 4 } } \\
	& = -\frac{ 4 }{ 9 }
\end{align}
$$

y su ecuación es

$$
\begin{align}
	& (x - 1) -\frac{ 4 }{ 9 } = y - 2 \\
	& y = -\frac{ 4 }{ 9 } x + \frac{ 22 }{ 9 }
\end{align}
$$

## 4

Encuentre el punto sobre la curva $y = (\pln{ x + 4 })^2$ donde la recta tangente es horizontal.

$$
\begin{align}
	& 2 \pln{ x + 4 } (\pln{ x + 4 })^\prime \\
	& = 2 \pln{ x + 4 } \frac{ 1 }{ x + 4 } (x + 4)^\prime \\
	& = \frac{ 2 \pln{ x + 4 } }{ x + 4 }
\end{align}
$$

La recta tangente es horizontal cuando $m = 0$.

$$
\begin{align}
	& \frac{ 2 \pln{ x + 4 } }{ x + 4 } = 0 \\
	& 2 \pln{ x + 4 } = 0 \\
	& \pln{ x + 4 } = 0 \\
	& e^{ \pln{ x + 4 } } = e^0 \\
	& x + 4 = 1 \\
	& x = -3
\end{align}
$$

Como $x = -3$ está en el dominio de la curva, decimos que esta es la respuesta.

## 5

Encuentre el punto donde se cortan las rectas tangentes a la gráfica de $x^2 + y^2 = 25$ en los puntos $P(-3,4)$ y $Q(-3,-4)$.

$$
\begin{align}
	& \pprime{ x^2 + y^2 } = \pprime{ 25 } \\
	& 2 x + 2 y \frac{ dy }{ dx } = 0 \\
	& \frac{ dy }{ dx } = \frac{ -2 x }{ 2 y } \\
	& = -\frac{ x }{ y }
\end{align}
$$

La pendiente en $P$ es

$$
\begin{align}
	& m = -\frac{ -3 }{ 4 } \\
	& = \frac{ 3 }{ 4 }
\end{align}
$$

y la pendiente en $Q$ es

$$
\begin{align}
	& m = -\frac{ -3 }{ -4 } \\
	& = -\frac{ 3 }{ 4 }
\end{align}
$$

La recta tangente de la curva en $P$ es

$$
\begin{align}
	& (x - (-3)) \frac{ 3 }{ 4 } = y - 4 \\
	& -\frac{ 3 }{ 4 } x - \frac{ 9 }{ 4 } = y - 4 \\
	& y = \frac{ 3 }{ 4 } x + \frac{ 25 }{ 4 }
\end{align}
$$

y la de $Q$ es

$$
\begin{align}
	& (x - (-3)) * -\frac{ 3 }{ 4 } = y + 4 \\
	& -\frac{ 3 }{ 4 } x - \frac{ 9 }{ 4 } = y + 4 \\
	& y = -\frac{ 3 }{ 4 } x - \frac{ 25 }{ 4 }
\end{align}
$$

Ahora hallamos el punto de intersección de las rectas

$$
\begin{align}
	& \frac{ 3 }{ 4 } x + \frac{ 25 }{ 4 } = -\frac{ 3 }{ 4 } x - \frac{ 25 }{ 4 } \\
	& \frac{ 6 }{ 4 } x = -\frac{ 50 }{ 4 } \\
	& x = -\frac{ 200 }{ 24 } \\
	& = -\frac{ 25 }{ 3 }
\end{align}
$$

$$
\begin{align}
	& y = \frac{ 3 }{ 4 } \left (-\frac{ 25 }{ 3 } \right ) + \frac{ 25 }{ 4 } \\
	& = -\frac{ 25 }{ 4 } + \frac{ 25 }{ 4 } \\
	& = 0
\end{align}
$$

El punto de intersección es $\left (\frac{ -25 }{ 3 },0 \right )$.

## 6

Halle $\frac{ dy }{ dx }$ si $x^y = y^x$.

$$
\begin{align}
	& \pln{ x^y } = \pln{ y^x } \\
	& y \pln{ x } = x \pln{ y } \\
	& \pprime{ y \pln{ x } } = \pprime{ x \pln{ y } } \\
	& \frac{ dy }{ dx } \pln{ x } + y \frac{ 1 }{ x } = \pln{ y } + x \frac{ 1 }{ y } \frac{ dy }{ dx } \\
	& \frac{ dy }{ dx } \pln{ x } - x \frac{ 1 }{ y } \frac{ dy }{ dx } = \pln{ y } - \frac{ y }{ x } \\
	& \frac{ dy }{ dx } \left (\pln{ x } - \frac{ x }{ y } \right ) = \frac{ x \pln{ y } - y }{ x } \\
	& \frac{ dy }{ dx } \left (\frac{ y \pln{ x } - x }{ y } \right ) = \frac{ x \pln{ y } - y }{ x } \\
	& \frac{ dy }{ dx } = \frac{ y (x \pln{ y } - y) }{ x (y \pln{ x } - x) }
\end{align}
$$

## 7

Use la derivación logarítmica para hallar la derivada de la función

1. $y = \psin{ x }^{ \pln{ x } }$.

	$$
	\begin{align}
		& \pln{ y } = \pln{ \psin{ x }^{ \pln{ x } } } \\
		& \pln{ y } = \pln{ x } * \pln{ \psin{ x } } \\
		& \pln{ y }^\prime = \pprime{ \pln{ x } * \pln{ \psin{ x } } } \\
		& \frac{ 1 }{ y } \frac{ dy }{ dx } = \frac{ \psin{ x } }{ x } + \pln{ x } \frac{ 1 }{ \psin{ x } } \pcos{ x } \\
		& \frac{ 1 }{ y } \frac{ dy }{ dx } = \frac{ \psin{ x } }{ x } + \pln{ x } \pcot{ x } \\
		& \frac{ dy }{ dx } = y \left (\frac{ \psin{ x } }{ x } + \pln{ x } \pcot{ x } \right ) \\
		& \frac{ dy }{ dx } = \psin{ x }^{ \pln{ x } } \left (\frac{ \psin{ x } }{ x } + \pln{ x } \pcot{ x } \right )
	\end{align}
	$$

2. $y = \frac{ x^\frac{ 3 }{ 4 } \sqrt{ x^2 + 1 } }{ (3 x + 2)^5 }$.

	$$
	\begin{align}
		& \pln{ y } = \pln{ \frac{ x^\frac{ 3 }{ 4 } \sqrt{ x^2 + 1 } }{ (3 x + 2)^5 } } \\
		& \pln{ y } = \pln{ x^\frac{ 3 }{ 4 } \sqrt{ x^2 + 1 } } - \pln{ (3 x + 2)^5 } \\
		& \pln{ y } = \pln{ x^\frac{ 3 }{ 4 } } + \pln{ (x^2 + 1)^\frac{ 1 }{ 2 } } - 5 \pln{ 3 x + 2 } \\
		& \pln{ y }^\prime = \pprime{ \frac{ 3 }{ 4 } \pln{ x } + \frac{ 1 }{ 2 } \pln{ x^2 + 1 } - 5 \pln{ 3 x + 2 } } \\
		& \frac{ 1 }{ y } \frac{ dy }{ dx } = \frac{ 3 }{ 4 x } + \frac{ x }{ x^2 + 1 } - \frac{ 15 }{ 3 x + 2 } \\
		& \frac{ dy }{ dx }  = y \left (\frac{ 3 }{ 4 x } + \frac{ x }{ x^2 + 1 } - \frac{ 15 }{ 3 x + 2 } \right ) \\
		& \frac{ dy }{ dx }  = \frac{ x^\frac{ 3 }{ 4 } \sqrt{ x^2 + 1 } }{ (3 x + 2)^5 } \left (\frac{ 3 }{ 4 x } + \frac{ x }{ x^2 + 1 } - \frac{ 15 }{ 3 x + 2 } \right )
	\end{align}
	$$

## 8

Una onda circular en un estanque se expande de tal forma que su área crece a una razón constante de $4 \frac{ \text{m}^2 }{ \text{s} }$. Determine la velocidad de crecimiento del radio en el instante en que el radio es de 1 metro.

$$
\begin{align}
	& A = \pi r^2
	& \frac{ dA }{ dt } = 2 \pi r \frac{ dr }{ dt } \\
	& 4 = 2 \pi r \frac{ dr }{ dt } \\
	& \frac{ dr }{ dt } = \frac{ 2 }{ \pi r } \\
	& \frac{ dr }{ dt } = \frac{ 2 }{ \pi }
\end{align}
$$

## 9

La altura de un cilindro circular recto decrece a razón de $3 \frac{ \text{cm} }{ \text{s} }$, mientras que su radio aumenta a razón de $1 \frac{ \text{cm} }{ \text{s} }$. Si el radio mide 4 cm y la altura 5 cm, entonces, ¿qué pasa con el volumen del cilindro?

$$
\begin{align}
	& V = \pi r^2 h \\
	& \frac{ dh }{ dt } = -3 \frac{ \text{cm} }{ \text{s} } \\
	& \frac{ dr }{ dt } = 1 \frac{ \text{cm} }{ \text{s} } \\
\end{align}
$$

$$
\begin{align}
	& V^\prime = \pprime{ \pi r^2 h } \\
	& \frac{ dV }{ dt } = \pi \left (2 r \frac{ dr }{ dt } h + r^2 \frac{ dh }{ dt } \right ) \\
	& \frac{ dV }{ dt } = \pi (2 (4) (1) (5) + (4)^2 (-3)) \\
	& = -8 \pi
\end{align}
$$

## 10

Un hombre se aleja de un edificio de 18 metros de altura a una velocidad de $1.8 \frac{ \text{m} }{ \text{s} }$. Una persona en la azotea del edificio observa al hombre alejarse. ¿A qué razón varía el ángulo de depresión de la persona hacia el hombre, cuando este está a 24 metros de la base de la torre?

$$
\begin{align}
	& \frac{ dx }{ dt } = 1.8 \frac{ \text{m} }{ \text{s} } \\
	& \ptan{ \theta } = \frac{ 18 }{ x }
\end{align}
$$

$$
\begin{align}
	& \ptan{ \theta }^\prime = \frac{ 18 }{ x }^\prime \\
	& \psec{ \theta }^2 \frac{ d\theta }{ dt } = -\frac{ 18 }{ x^2 } \frac{ dx }{ dt } \quad (1)
\end{align}
$$

Cuando $x = 24$

$$
\begin{align}
	& \ptan{ \theta } = \frac{ 18 }{ 24 } \\
	& = \frac{ \text{CO} }{ \text{CA} } \\
	& H = \sqrt{ 18^2 + 24^2 } \\
	& = 30
\end{align}
$$

$$
\begin{align}
	& \psec{ \theta } = \frac{ \text{H} }{ \text{CA} } \\
	& = \frac{ 30 }{ 24 } \\
	& = \frac{ 5 }{ 4 } \\
	& \psec{ \theta }^2 = \left (\frac{ 5 }{ 4 } \right )^2 \\
	& = \frac{ 25 }{ 16 }
\end{align}
$$

Volvemos a $(1)$ con lo valores que ahora conocemos.

$$
\begin{align}
	& \left (\frac{ 25 }{ 16 } \right )  \frac{ d\theta }{ dt } = -\frac{ 18 }{ (24)^2 } (1.8) \\
	& \frac{ d\theta }{ dt } = -\frac{ 5,184 }{ 144,000 } \\
	& = -\frac{ 9 }{ 250 } \frac{ \text{rad} }{ \text{s} }
\end{align}
$$

## 11

Un abrevadero tiene una longitud de 5 metros y sus extremos son triángulos isósceles con una altura de 1 metro y 2 metros de base, estando el vértice opuesto a la base hacia abajo. Se vierte agua en el abrevadero a razón de $2 \frac{ \text{m}^3 }{ \text{min} }$. ¿A qué velocidad aumenta el nivel del agua en el abrevadero cuando la profundidad del agua es de $0.4$ metros?

> El volumen del agua en el abrevadero (un prisma triangular) es el área de su sección transversal triangular multiplicada por su longitud.

$$
\begin{align}
	& h = 0.4 \text{m} \\
	& V = \left (\frac{ 1 }{ 2 } b h \right ) l \\
	& \frac{ dV }{ dt } = 2 \frac{ \text{m}^3 }{ \text{min} }
\end{align}
$$

$$
V = \frac{ 5 }{ 2 } b h \quad (1)
$$

Esta ecuación tiene dos variables, $b$ y $h$. Necesitamos expresar una en términos de la otra. Para ello, observamos la sección transversal del abrevadero y usamos triángulos semejantes.

El triángulo grande (el abrevadero) tiene una base de 2 metros y una altura de 1 metro. El triángulo pequeño (el agua) tiene una base $b$ y una altura $h$. La relación entre la base y la altura es la misma para ambos.

$$
\begin{align}
	& \frac{ 2 }{ 1 } = \frac{ b }{ h } \\
	& b = 2 h
\end{align}
$$

Sustituyendo en $(1)$.

$$
V = 5 h^2
$$

$$
\begin{align}
	& V^\prime = \pprime{ 5 h^2 } \\
	& \frac{ dV }{ dt } = 10 h \frac{ dh }{ dt } \\
	& 2 = 10 (0.4) \frac{ dh }{ dt } \\
	& \frac{ dh }{ dt } = \frac{ 2 }{ 4 } \\
	& = \frac{ 1 }{ 2 } \frac{ \text{m} }{ \text{min} }
\end{align}
$$

## 12

Se tienen dos tanques llenos de agua, uno cónico invertido y uno cilíndrico con 3 pies de radio en el círculo de la base y 5 pies de altura. En el vértice del cono y en la base del cilindro hay una llave por donde salen $2 \frac{ \text{ft}^3 }{ \text{min} }$ de agua en cada caso. Calcule la rapidez de la variación de la altura en el momento en que $h = 2 \text{ft}$.

### Tanque cónico

La fórmula del volumen de un cono es

$$
V = \frac{ 1 }{ 3 } \pi r^2 h
$$

Usando triángulos semejantes

$$
\begin{align}
	& R = 3 \text{ft} \\
	& H = 5 \text{ft} \\
	& \frac{ dV }{ dt } = -2 \frac{ \text{ft}^3 }{ \text{min} } \\
	& h = 2 \text{ft}
\end{align}
$$

$$
\begin{align}
	& \frac{ r }{ h } = \frac{ R }{ H } \\
	& = \frac{ 3 }{ 5 } \\
	& r = \frac{ 3 }{ 5 } h
\end{align}
$$

$$
\begin{align}
	& V = \frac{ 1 }{ 3 } \pi \left (\frac{ 3 }{ 5 } h \right )^2 h \\
	& = \frac{ 3 \pi }{ 25 } h^3 \\
	& \frac{ dV }{ dt } = \frac{ 9 \pi }{ 25 } h^2 \frac{ dh }{ dt } \\
	& \frac{ dh }{ dt } = \frac{ 25 }{ 9 \pi h^2 } \frac{ dV }{ dt } \\
	& \frac{ dh }{ dt } = \frac{ 25 }{ 9 \pi h^2 } (-2) \\
	& = -\frac{ 50 }{ 36 \pi } \\
	& = -\frac{ 25 }{ 18 \pi } \frac{ \text{ft}^3 }{ \text{min} }
\end{align}
$$

### Tanque cilíndrico

La fórmula del volumen de un cilindro es

$$
V = \pi r^2 h
$$

Como el radio es constante ($r = 3$), la ecuación se simplifica a

$$
V = 9 \pi h
$$

$$
\begin{align}
	& \frac{ dV }{ dt } = 9 \pi \frac{ dh }{ dt } \\
	& \frac{ dh }{ dt } = \frac{ 1 }{ 9 \pi } \frac{ dV }{ dt } \\
	& \frac{ dh }{ dt } = \frac{ 1 }{ 9 \pi } (-2) \\
	& = -\frac{ 2 }{ 9 \pi } \frac{ \text{ft}^3 }{ \text{min} }
\end{align}
$$

## 13

Una escalera de 10 pies de largo está apoyada contra una pared vertical, si el extremo inferior de la escalera resbala alejándose de la pared a razón de $1 \frac{ \text{ft} }{ \text{s} }$, ¿Con qué rapidez resbala hacia abajo su extremo superior cuando su extremo inferior está a 6 pies de la pared?

$$
\begin{align}
	& \frac{ dx }{ dt } = 1 \\
	& x^2 + y^2 = 10^2 \\
	& 2 x \frac{ dx }{ dt } + 2 y \frac{ dy }{ dt } = 0 \\
	& \frac{ dy }{ dt } = -\frac{ 2 x \frac{ dx }{ dt } }{ 2 y } \quad (1)
\end{align}
$$

Para encontrar $y$ cuando la base $x = 6$, usamos el teorema de Pitágoras.

$$
\begin{align}
	& (6)^2 + y^2 = 10^2 \\
	& y = \sqrt{ 100 - 36 } \\
	& y = 8
\end{align}
$$

Volviendo a $(1)$

$$
\begin{align}
	& \frac{ dy }{ dt } = -\frac{ 2 (6) (1) }{ 2 (8) } \\
	& = -\frac{ 6 }{ 8 } \\
	& = -\frac{ 3 }{ 4 }
\end{align}
$$
