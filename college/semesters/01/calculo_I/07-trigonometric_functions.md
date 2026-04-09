---
reviewed_on: "2025-08-26"
---

# Trigonometric functions

## 1

Determine si existe un ángulo $\theta$ tal que

1. $\psin{ \theta } = -\frac{ \sqrt{ 5 } }{ 3 }$ y $\pcos{ \theta } = -\frac{ 1 }{ 4 }$.

	$$
	\begin{align}
		& \psin{ \theta }^2 + \pcos{ \theta }^2 = 1 \\
		& \left (-\frac{ \sqrt{ 5 } }{ 3 } \right )^2 + \left (-\frac{ 1 }{ 4 } \right )^2 \\
		& = \frac{ 5 }{ 9 } + \frac{ 1 }{ 16 } \\
		& = \frac{ 89 }{ 144 } \neq 1
	\end{align}
	$$

2. $\ptan{ \theta } = \frac{ \sqrt{ 5 } }{ 2 }$ y $\pcos{ \theta } = \frac{ 2 }{ 3 }$.

	$$
	\begin{align}
		& 1 + \ptan{ \theta }^2 = \sec \theta^2 \\
		& = 1 + \ptan{ \theta }^2 = \frac{ 1 }{ \pcos{ \theta }^2 } \\
		& 1 + \left (\frac{ \sqrt{ 5 } }{ 2 } \right )^2 = \frac{ 1 }{ \left (\frac{ 2 }{ 3 } \right )^2 } \\
		& 1 + \frac{ 5 }{ 4 } = \frac{ 1 }{ \frac{ 4 }{ 9 } } \\
		& \frac{ 9 }{ 4 } = \frac{ 9 }{ 4 }
	\end{align}
	$$

3. $\sec \theta = -\frac{ 5 }{ 4 }$ y $\pcos{ \theta } = -\frac{ \sqrt{ 21 } }{ 5 }$.

	$$
	\begin{align}
		& \psin{ \theta }^2 + \pcos{ \theta }^2 = 1 \\
		& \psin{ \theta }^2 + \frac{ 1 }{ \sec \theta } = 1 \\
		& \left (-\frac{ \sqrt{ 21 }  }{ 5 } \right )^2 + \frac{ 1 }{ \left (-\frac{ 5 }{ 4 } \right )^2 } \\
		& = \frac{ 21 }{ 25 } + \frac{ 1 }{ \frac{ 25 }{ 16 } } \\
		& = \frac{ 37 }{ 25 } \neq 1
	\end{align}
	$$

## 2

Halle:

1. $\pcos(1,575 \degree)$.

	$$
	\begin{align}
		& = \pcos{ 135 \degree + 4 * 360 \degree } \\
		& = \pcos{ 135 \degree } \\
		& = \pcos{ \frac{ \pi }{ 2 } + \frac{ \pi }{ 4 } } \\
		& = \pcos{ \frac{ 3 \pi }{ 4 } }
	\end{align}
	$$

2. $\tan(-2,220 \degree)$.

	$$
	\begin{align}
		& = \ptan{ -(60 \degree + 6 (360 \degree)) } \\
		& = \ptan{ -60 \degree } \\
		& = -\ptan{ 60 \degree } \\
		& = \ptan{ \frac{ \pi }{ 3 } }
	\end{align}
	$$

## 3

Un ángulo $\theta$ se encuentra en posición estándar. Si el lado terminal de $\theta$ esta en el segundo cuadrante sobre la recta $y = -4 x$, determine los valores de las funciones trigonométricas.

![graph](college/semesters/01/assets/calculo_I/2_07_01-graph.svg)

TODO: create a standard angle link.

$$
\begin{align}
	& P(x,-4 x) \\
	& x = \pcos{ \theta } = x \\
	& y = \psin{ \theta } = -4 x
\end{align}
$$

$$
\begin{align}
	& \psin{ \theta }^2 + \pcos{ \theta }^2 = 1 \\
	& x^2 + (-4 x)^2 = 1 \\
	& 17 x^2 = 1 \\
	& x = \pm \frac{ 1 }{ \sqrt{ 17 } } \\
	& x = -\frac{ 1 }{ \sqrt{ 17 } } \; \text{es negativo por estar en el segundo cuadrante}
\end{align}
$$

$$
\begin{align}
	& \pcos{ \theta } = -\frac{ 1 }{ \sqrt{ 17 } } \\
	& \psin{ \theta } = -4 \left (-\frac{ 1 }{ \sqrt{ 17 } } \right ) \\
	& \psin{ \theta } = \frac{ 4 }{ \sqrt{ 17 } }
\end{align}
$$

## 4

Un ángulo central intercepta un arco de 8 cm de largo, en una circunferencia de 3 cm de radio. Halle la medida del ángulo tanto en radianes, como en grados.

$2 \pi r$ que corresponde al perímetro de un circulo de radio $r$, es también el arco de un $\alpha = 360 \degree$.

$$
\begin{align}
	& 8 = \frac{ 2 \pi (3) }{ 360 } * \alpha \\
	& \alpha = \frac{ 2880 }{ 6 \pi } \\
	& = { \frac{ 480 }{ \pi } }^\degree \\
	& \approx 152.79^\degree
\end{align}
$$

$$
\begin{align}
	& \alpha = { \frac{ 480 }{ \pi } }^\degree \\
	& = \frac{ 480 }{ \pi } \frac{ \pi }{ 180 } \\
	& = \frac{ 8 }{ 3 } \; \text{rad}
\end{align}
$$

## 5

Use la ley de Senos y la ley de Cosenos para hallar las partes restantes del triangulo

1. $b = 10$, $c = 5$ y $\gamma = 30^\degree$.

	$$
	\begin{align}
		& \frac{ \psin{ 30^\degree } }{ 5 } = \frac{ \psin{ \beta } }{ 5 } \\
		& \psin{ \beta } = \frac{ 10 \psin{ 30^\degree } }{ 5 } \\
		& = 2 \psin{ 30^\degree } \\
		& = 2 * \frac{ 1 }{ 2 } \\
		& = 1 \\
		& \beta = 90^\degree \\
		& \alpha = 180 - (\beta + \gamma) \\
		& = 60
	\end{align}
	$$

	$$
	\begin{align}
		& a^2 = b^2 + c^2 - 2 b c \pcos{ \alpha } \\
		& a = \sqrt{ 10^2 + 5^2 - 2 (10) (5) \pcos{ 60^\degree } } \\
		& = \sqrt{ 100 + 25 - 100 * 0.5 } \\
		& = \sqrt{ 75 } \\
		& = 5 \sqrt{ 3 }
	\end{align}
	$$

2. $b = 45$, $\alpha = 48^\degree$ y $\gamma = 56^\degree$.

	$$
	\begin{align}
		& \beta = 180 - (\alpha + \gamma) \\
		& = 76^\degree \\
		& \frac{ \psin{ 76^\degree } }{ 45 } = \frac{ \psin{ 48^\degree} }{ a } \\
		& a = \frac{ 45 \psin{ 48^\degree } }{ \psin{ 76^\degree } } \\
		& \frac{ \psin{ 76^\degree } }{ 45 } = \frac{ \psin{ 56^\degree} }{ c } \\
		& c = \frac{ 45 \psin{ 56^\degree } }{ \psin{ 76^\degree } }
	\end{align}
	$$

3. $a = 10$, $c = 15$ y $\beta = 60^\degree$.

	$$
	\begin{align}
		& b^2 = a^2 + c^2 - 2 a c \pcos{ \beta } \\
		& b = \sqrt{ 10^2 + 15^2 - 2 (10) (15) \pcos{ 60^\degree } } \\
		& = \sqrt{ 100 + 225 - 150 * 0.5 } \\
		& = \sqrt{ 325 - 75 } \\
		& = \sqrt{ 250 } \\
		& = 5 \sqrt{ 10 }
	\end{align}
	$$

## 6

Los lados de un terreno triangular miden 350, 300 y 220 pies de longitud. Encuentre el ángulo mas pequeño del terreno.

> En cualquier triángulo, el ángulo más pequeño siempre está opuesto al lado más corto.

$$
\begin{align}
	& a = 220 \\
	& b = 300 \\
	& c = 350 \\
	& a^2 = b^2 + c^2 - 2 b c \pcos{ \beta } \\
	& 220^2 = 300^2 + 350^2 - 2 (300) (350) \pcos{ \alpha } \\
	& 48,400 = 90,000 + 122,500 - 210,000 \pcos{ \alpha } \\
	& \pcos{ \alpha } = \frac{ -164,100 }{ -210,000 } \\
	& \alpha = \parcsin{ \frac{ 544 }{ 700 } }
\end{align}
$$

## 7

Evalué:

1. $\parcsin{ \pcos{ -\frac{ \pi }{ 2 } } }$.

	$$
	x \in [0,\pi]
	$$

	$$
	\begin{align}
		& \pcos{ -\frac{ \pi }{ 2 } } = \pcos{ \frac{ \pi }{ 2 } } \\
		& \parcsin{ \pcos{ -\frac{ \pi }{ 2 } } } = \frac{ \pi }{ 2 }
	\end{align}
	$$

2. $\parcsin{ \psin{ \frac{ 2 \pi }{ 3 } } }$.

	$$
	x \in \left [-\frac{ \pi }{ 2 },\frac{ \pi }{ 2 }\right ]
	$$

	$$
	\begin{align}
		& \psin{ \frac{ 2 \pi }{ 3 } } = \psin{ \pi - \frac{ 2 \pi }{ 3 } } \\
		& \parcsin{ \psin{ \frac{ \pi }{ 3 } } } = \frac{ \pi }{ 3 }
	\end{align}
	$$

3. $\pcos{ \parcsec{ \frac{ 4 }{ 3 } } - \parccos{ \frac{ 2 }{ 5 } } }$.

	$$
	x \in \left [0,\frac{ \pi }{ 2 }\right ]
	$$

	$$
	\pcos{ \alpha - \beta } = \pcos{ \alpha } \pcos{ \beta } + \psin{ \alpha } \psin{ \beta }
	$$

	$$
	\begin{align}
		& \alpha = \parcsec{ \frac{ 4 }{ 3 } } \quad \psec{ \alpha } = \frac{ 4 }{ 3 } \\
		& \psec{ \alpha } = \frac{ H }{ \text{CA} } = \frac{ 4 }{ 3 } \\
		& \text{CO}^2 = 4^2 - 3^2 \\
		& \text{CO} = \sqrt{ 7 } \\
		& \psin{ \alpha } = \frac{ \sqrt{ 7 } }{ 4 } \\
		& \pcos{ \alpha } = \frac{ 3 }{ 4 }
	\end{align}
	$$

	$$
	\begin{align}
		& \beta = \parccos{ \frac{ 2 }{ 5 } } \quad \pcos{ \beta } = \frac{ 2 }{ 5 } \\
		& \pcos{ \beta } = \frac{ \text{CA} }{ H } = \frac{ 2 }{ 5 } \\
		& \text{CO}^2 = 5^2 - 2^2 \\
		& \text{CO} = \sqrt{ 21 } \\
		& \psin{ \beta } = \frac{ \sqrt{ 21 } }{ 5 }
	\end{align}
	$$

	$$
	\begin{align}
		& \pcos{ \alpha - \beta } = \left (\frac{ 3 }{ 4 } \right ) \left (\frac{ 2 }{ 5 } \right ) + \left (\frac{ \sqrt{ 7 } }{ 4 } \right ) \left (\frac{ \sqrt{ 21 } }{ 5 } \right ) \\
		& = \frac{ 6 + 7 \sqrt{ 3 } }{ 20 }
	\end{align}
	$$

4. $\psin{ \alpha - \beta }$ sabiendo que $\alpha$ y $\beta$ son ángulos en los cuadrantes I y III respectivamente, además $\psin{ \alpha } = \frac{ 2 }{ 5 }$ y $\ptan{ \beta } = \frac{ 3 }{ 2 }$.

	$$
	\psin{ \alpha - \beta } = \psin{ \alpha } \pcos{ \beta } - \pcos{ \alpha } \psin{ \beta }
	$$

	En el primer cuadrante, tanto el seno como el coseno son positivos.

	$$
	\begin{align}
		& \psin{ \alpha } = \frac{ \text{CO} }{ H } = \frac{ 2 }{ 5 } \\
		& \text{CA}^2 = 5^2 - 2^2 \\
		& \text{CA} = \sqrt{ 21 } \\
		& \pcos{ \alpha } = \frac{ \sqrt{ 21 } }{ 5 }
	\end{align}
	$$

	En el tercer cuadrante, tanto el seno como el coseno son negativos.

	$$
	\begin{align}
		& \ptan{ \beta } = \frac{ \text{CO} }{ \text{CA} } = \frac{ 3 }{ 2 } \\
		& H^2 = 2^2 + 3^2 \\
		& H = \sqrt{ 13 } \\
		& \psin{ \beta } = -\frac{ 3 }{  \sqrt{ 13 } } = -\frac{ 3 \sqrt{ 13 } }{ 13 } \\
		& \pcos{ \beta } = -\frac{ 2 }{  \sqrt{ 13 } } = -\frac{ 2 \sqrt{ 13 } }{ 13 }
	\end{align}
	$$

	$$
	\begin{align}
			& \psin{ \alpha - \beta } = \left (\frac{ 2 }{ 5 } \right ) \left (-\frac{ 2 \sqrt{ 13 } }{ 13 } \right ) - \left (\frac{ \sqrt{ 21 } }{ 5 } \right ) \left (-\frac{ 3 \sqrt{ 13 } }{ 13 } \right ) \\
			& = -\frac{ 4 \sqrt{ 13 } }{ 65 } - \left (-\frac{ 3 \sqrt{ 273 } }{ 65 } \right ) \\
			& = \frac{ 3 \sqrt{ 273 } - 4 \sqrt{ 13 } }{ 65 }
	\end{align}
	$$

## 8

Verifique las siguientes identidades:

1. $(\pcos{ x }^2 - 1) (\ptan{ x }^2 + 1) = 1 - \psec{ x }^2$.

	$$
	\begin{align}
		& \pcos{ x }^2 = \frac{ 1 }{ \psec{ x }^2 } \\
		& \ptan{ x }^2 + 1 = \psec{ x }^2 \\
		& \left (\frac{ 1 }{ \psec{ x }^2 } - 1 \right ) \psec{ x }^2 \\
		& = 1 - \psec{ x }^2
	\end{align}
	$$

2. $\frac{ \pcot{ \theta } - \ptan{ \theta } }{ \psin{ \theta } + \pcos{ \theta } } = \pcsc{ \theta } - \psec{ \theta }$.

	$$
	\begin{align}
		& \pcot{ x } - \ptan{ x } = \frac{ \pcos{ x } }{ \psin{ x } } - \frac{ \psin{ x } }{ \pcos{ x } } \\
		& = \frac{ \pcos{ x }^2 - \psin{ x }^2 }{ \psin{ x } \pcos{ x } } \\
		& \frac{ \frac{ \pcos{ x }^2 - \psin{ x }^2 }{ \psin{ x } \pcos{ x } } }{ \psin{ x } + \pcos{ x } } \\
		& = \frac{ \pcos{ x }^2 - \psin{ x }^2 }{ \psin{ x } \pcos{ x } (\psin{ x } + \pcos{ x }) } \\
		& = \frac{ \cancel{ (\psin{ x } + \pcos{ x }) } (\psin{ x } - \pcos{ x }) }{ \psin{ x } \pcos{ x } \cancel{ (\psin{ x } + \pcos{ x }) } } \\
		& =\frac{ \psin{ x } - \pcos{ x } }{ \psin{ x } \pcos{ x } } \\
		& = \frac{ \pcos{ x } }{ \psin{ x } \pcos{ x } } - \frac{ \psin{ x } }{ \psin{ x } \pcos{ x } } \\
		& = \frac{ 1 }{ \psin{ x } } - \frac{ 1 }{ \pcos{ x } } \\
		& = \pcsc{ x } - \psec{ x }
	\end{align}
	$$

3. $\frac{ 1 }{ \pcot{ x }^2 } + \frac{ 1 }{ \psin{ x } \pcsc{ x } } = \psec{ x }^2$.

	$$
	\begin{align}
		& \frac{ 1 }{ \pcot{ x }^2 } = \frac{ \psin{ x }^2 }{ \pcos{ x }^2 } \\
		& \frac{ 1 }{ \psin{ x } \pcsc{ x } } = \frac{ 1 }{ \psin{ x } \frac{ 1 }{ \psin{ x } } } = 1 \\
		& \frac{ \psin{ x }^2 }{ \pcos{ x }^2 } + 1 = \psec{ x }^2 \\
		& \frac{ \psin{ x }^2 }{ \pcos{ x }^2 } + 1 = \frac{ \psin{ x }^2 + \pcos{ x }^2 }{ \pcos{ x }^2 } \\
		& \frac{ \psin{ x }^2 + \pcos{ x }^2 }{ \pcos{ x }^2 } = \frac{ \psin{ x }^2 + \pcos{ x }^2 }{ \pcos{ x }^2 }
	\end{align}
	$$

4. $\frac{ \pcos{ x }^3 - \psin{ x }^3 }{ \pcos{ x } - \psin{ x } } = 1 + \psin{ x } \pcos{ x }$.

	$$
	\begin{align}
		& \frac{ \cancel{ (\pcos{ x } - \psin{ x }) } (\pcos{ x }^2 + \psin{ x } \pcos{ x } + \psin{ x }^2) }{ \cancel{ \pcos{ x } - \psin{ x } } } \\
		& = 1 + \psin{ x } \pcos{ x }
	\end{align}
	$$

5. $\frac{ \psin{ z } \ptan{ z } }{ \ptan{ z } - \psin{ z } } = \frac{ \ptan{ z } + \psin{ z } }{ \psin{ z } \ptan{ z } }$.

	$$
	\frac{ a }{ b } = \frac{ c }{ a } \quad a^2 = b c
	$$

	$$
	\begin{align}
		& (\psin{ x } \ptan{ x })^2 = (\ptan{ x } + \psin{ x }) (\ptan{ x } - \psin{ x }) \\
		& \psin{ x }^2 \ptan{ x }^2 = \ptan{ x }^2 - \psin{ x }^2 \\
		& \psin{ x }^2 * \frac{ \psin{ x }^2 }{ \pcos{ x }^2 } = \frac{ \psin{ x }^2 }{ \pcos{ x }^2 } - \psin{ x }^2 \\
		& \frac{ \psin{ x }^4 }{ \pcos{ x }^2 } = \frac{ \psin{ x^2 } - \psin{ x }^2 \pcos{ x }^2 }{ \pcos{ x }^2 } \\
		& = \frac{ \psin{ x }^2 (1 - \pcos{ x }^2) }{ \pcos{ x }^2 } \\
		& = \frac{ \psin{ x }^4 }{ \pcos{ x }^2 }
	\end{align}
	$$

6. $\psin{ \frac{ \theta }{ 2 } } = \pm \sqrt{ \frac{ 1 - \pcos{ \theta } }{ 2 } }$.

	$$
	\begin{align}
		& \pcos{ \frac{ \theta }{ 2 } + \frac{ \theta }{ 2 } } = \pcos{ \theta } \\
		& = \pcos{ \frac{ \theta }{ 2 } } \pcos{ \frac{ \theta }{ 2 } } - \psin{ \frac{ \theta }{ 2 } } \psin{ \frac{ \theta }{ 2 } } \\
		& = \pcos{ \frac{ \theta }{ 2 } }^2 - \psin{ \frac{ \theta }{ 2 } }^2 \\
		& 1 - \psin{ \frac{ \theta }{ 2 } }^2 - \psin{ \frac{ \theta }{ 2 } }^2 = \pcos{ \theta } \\
		& 1 - 2 \psin{ \frac{ \theta }{ 2 } }^2 = \pcos{ \theta } \\
		& \psin{ \frac{ \theta }{ 2 } } = \pm \sqrt{ \frac{ 1 - \pcos{ \theta } }{ 2 } }
	\end{align}
	$$

7. $\pcos{ \frac{ \theta }{ 2 } } = \pm \sqrt{ \frac{ 1 + \pcos{ \theta } }{ 2 } }$.

	$$
	\begin{align}
		& \pcos{ \frac{ \theta }{ 2 } + \frac{ \theta }{ 2 } } = \pcos{ \frac{ \theta }{ 2 } }^2 - \psin{ \frac{ \theta }{ 2 } }^2 = \pcos{ \theta } \\
		& \pcos{ \frac{ \theta }{ 2 } }^2 - \left (1 - \pcos{ \frac{ \theta }{ 2 }^2 } \right ) = \pcos{ \theta } \\
		& 2 \pcos{ \frac{ \theta }{ 2 } }^2 - 1 = \pcos{ \theta } \\
		& \pcos{ \frac{ \theta }{ 2 } } = \pm \sqrt{ \frac{ 1 + \pcos{ \theta } }{ 2 } }
	\end{align}
	$$

## 9

Resuelva las siguientes ecuaciones:

1. $\psin{ \theta } - \pcos{ \theta } = 1$.

	$$
	\begin{align}
		& \psin{ \theta } = 1 \quad \pcos{ \theta } = 0 \quad (1) \\
		& \psin{ \theta } = 0 \quad \pcos{ \theta } = 1 \quad (2)
	\end{align}
	$$

	Para el primer caso:

	$$
	\theta = \frac{ \pi }{ 2 } + 2 \pi k \; k \in \mathbb{ Z }
	$$

	Para el segundo caso:

	$$
	\theta = 2 \pi k \; k \in \mathbb{ Z }
	$$

2. $3 \psin{ x }^2 - 5 \psin{ x } + 2 = 0$.

	$$
	\begin{align}
		& (3 \psin{ x } - 2) (\psin{ x } - 1) \\
		&
			\begin{array}{lr}
				3 \psin{ x } = 2             & \psin{ x } = 1 \\
				\psin{ x } = \frac{ 2 }{ 3 } & x = \frac{ \pi }{ 2 } + 2 \pi k \; k \in \mathbb{ Z }
			\end{array} \\
		& x = \parcsin{ \frac{ 2 }{ 3 } } + \frac{ \pi }{ 2 } + 2 \pi
	\end{align}
	$$

3. $\pcos{ 2 x } = 1 + 4 \psin{ x }$.

	$$
	\begin{align}
		& \pcos{ 2 x } = \pcos{ x + x } \\
		& = \pcos{ x }^2 - \psin{ x }^2 \\
		& = (1 - \psin{ x }^2) - \psin{ x }^2 \\
		& = 1 - 2 \psin{ x }^2
	\end{align}

	$$

	$$
	\begin{align}
		& 1 - 2 \psin{ x }^2 = 1 + 4 \psin{ x } \\
		& - 2 \psin{ x }^2 - 4 \psin{ x } = 0 \\
		& -2 (\psin{ x }^2 + 2 \psin{ x }) = 0 \\
		& \psin{ x }^2 + 2 \psin{ x } = 0 \\
	\end{align}
	$$

	Solo hay una forma de que eso se cumpla:

	$$
	\begin{align}
		& \psin{ x }^2 = 0 \quad 2 \psin{ x } = 0 \\
		& x = 2 \pi k \; k \in \mathbb{ Z }
	\end{align}
	$$

4. $2 \pcos{ x }^2 + 5 \psin{ x } + 1 = 0$, $x \in [0, 2 \pi]$.

	$$
	\pcos{ x }^2 = 1 - \psin{ x }^2
	$$

	$$
	\begin{align}
		& 2 (1 - \psin{ x }^2 ) + 5 \psin{ x } + 1 = 0 \\
		& -2 \psin{ x }^2 + 5 \psin{ x } + 3 = 0 \\
		& -2 y^2 + 5 y + 3 = 0 \quad y = \psin{ x } \\
		& y = \frac{ -(5) \pm \sqrt{ (5)^2 - 4 (-2) (3) } }{ 2 (-2) } \\
		& = \frac{ -5 \pm \sqrt{ 25 + 24 } }{ -4 } \\
		& = \frac{ 5 \pm \sqrt{ 49 } }{ 4 } \\
		& y_1 = \frac{ 5 + 7 }{ 4 } = 3 \quad y_2 = \frac{ 5 - 7 }{ 4 } = -\frac{ 1 }{ 2 } \\
		& \psin{ x_1 } = 3 \quad \psin{ x_2 } = -\frac{ 1 }{ 2 } \\
		& \psin{ x } = -\frac{ 1 }{ 2 } \\
		& x = \parcsin{ -\frac{ 1 }{ 2 } }
	\end{align}
	$$

5. $\pcsc{ 2 x }^4 - 4 = 0$.

	$$
	\pcsc{ x } = \frac{ 1 }{ \psin{ x } }
	$$

	$$
	\begin{align}
		& \sqrt[4]{ \pcsc{ 2 x }^4 } = \sqrt[4]{ 4 } \\
		& \pcsc{ 2 x } = \pm\sqrt{ 2 } \\
		& \frac{ 1 }{ \psin{ 2 x } } = \pm\sqrt{ 2 } \\
		& \psin{ 2 x } = \pm\frac{ 1 }{ \sqrt{ 2 } }
	\end{align}
	$$

	Los ángulos cuyo seno es $\frac{ \sqrt{ 2 } }{ 2 }$ o $-\frac{ \sqrt{ 2 } }{ 2 }$ son los de $45 \degree$ ($\frac{ \pi }{ 4 }$) en los cuatro cuadrantes (es decir, cada $\frac{ \pi }{ 2 }$).

	$$
	\begin{align}
		& 2 x = \frac{ \pi }{ 4 } + \frac{ k \pi }{ 2 } \; k \in \mathbb{ Z } \\
		& x = \frac{ \pi }{ 8 } + \frac{ k \pi }{ 4 }
	\end{align}
	$$

6. $\ptan{ \theta } + \psec{ \theta } = 1$.

	Conociendo los rangos de las funciones, podemos decir que existen dos casos:

	$$
	\begin{align}
		& \ptan{ \theta } = 1 \quad \psec{ \theta } = 0 \quad (1) \\
		& \ptan{ \theta } = 0 \quad \psec{ \theta } = 1 \quad (2)
	\end{align}
	$$

	$$
	\begin{align}
		& \ptan{ x } = \frac{ \psin{ x } }{ \pcos{ x } } \\
		& \psec{ x } = \frac{ 1 }{ \pcos{ x } }
	\end{align}
	$$

	Para el primer caso:

	$$
	\theta = 2 \pi k \; k \in \mathbb{ Z }
	$$

	Para el segundo caso:

	$$
	\begin{align}
		& \frac{ \psin{ x } }{ \pcos{ x } } = 1 \quad x = \frac{ \pi }{ 4 } + k \pi \; k \in \mathbb{ Z } \\
		& \frac{ 1 }{ \pcos{ x } } = 0 \quad \nexists x
	\end{align}
	$$

7. $\pcot{ \theta } + \ptan{ \theta } = \pcsc{ \theta } \psec{ \theta }$.

	$$
	\begin{align}
		& \pcot{ x } = \frac{ \pcos{ x } }{ \psin{ x } } \\
		& \ptan{ x } = \frac{ \psin{ x } }{ \pcos{ x } } \\
		& \pcsc{ x } = \frac{ 1 }{ \psin{ x } } \\
		& \psec{ x } = \frac{ 1 }{ \pcos{ x } }
	\end{align}
	$$

	$$
	\begin{align}
		& \frac{ \pcos{ x } }{ \psin{ x } } + \frac{ \psin{ x } }{ \pcos{ x } } = \frac{ 1 }{ \psin{ x } } \frac{ 1 }{ \pcos{ x } } \\
		& \frac{ \pcos{ x }^2 + \psin{ x }^2 }{ \psin{ x } + \pcos{ x } } = \frac{ 1 }{ \psin{ x } \pcos{ x } } \\
		& \frac{ 1 }{ \psin{ x } + \pcos{ x } } = \frac{ 1 }{ \psin{ x } \pcos{ x } }
	\end{align}
	$$

10. Desde la punta de un edificio que ve hacia el mar, una persona observa un bote que navega directamente hacia ella. Si se encuentra a 100 pies sobre el nivel del mar y el ángulo de depresión del bote cambia de $25 \degree$ a $40 \degree$ durante el periodo de observación, hallar la distancia aproximada que ha recorrido el bote durante ese tiempo.

	![problem](college/semesters/01/assets/calculo_I/2_07_02-problem.jpg) TODO

	Del primer triangulo, sabemos que:

	$$
	\begin{align}
		& \ptan{ 25 \degree } = \frac{ 100 }{ x + y } \\
		& x = \frac{ 100 }{ \ptan{ 25 \degree } } - y \quad (1)
	\end{align}
	$$

	Del primer triangulo, sabemos que:

	$$
	\begin{align}
		& \ptan{ 40 \degree } = \frac{ 100 }{ x } \\
		& x = \frac{ 100 }{ \ptan{ 40 \degree } } \quad (2)
	\end{align}
	$$

	Igualando $(1)$ y $(2)$:

	$$
	\begin{align}
		& \frac{ 100 }{ \ptan{ 25 \degree } } - y = \frac{ 100 }{ \ptan{ 40 \degree } } \\
		& y = \frac{ 100 \ptan{ 40 \degree } - 100 \ptan{ 25 \degree } }{ \ptan{ 25 \degree } \ptan{ 40 \degree } } \\
		& y \approx 95.27 \; \text{ft}
	\end{align}
	$$