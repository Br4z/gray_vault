---
reviewed_on: "2025-09-08"
---

# Limits and continuity

## 1

Calcule los siguiente limites si existen:

1. $\lim_{ x \to 1 } \frac{ x - 1 }{ \sqrt{ x^2 + 3 } - 2 }$.

	$$
	\begin{align}
		& = \frac{ x - 1 }{ \sqrt{ x^2 + 3 } - 2 } * \frac{ \sqrt{ x^2 + 3 } + 2 }{ \sqrt{ x^2 + 3 } + 2 } \\
		& = \frac{ (x - 1) (\sqrt{ x^2 + 3 } + 2) }{ (\sqrt{ x^2 + 3 })^2 - 2^2 } \\
		& = \frac{ (x - 1) (\sqrt{ x^2 + 3 } + 2) }{ x^2 - 1 } \\
		& = \frac{ \cancel{ (x - 1) } (\sqrt{ x^2 + 3 } + 2) }{ (x + 1) \cancel{ (x - 1) } } \\
		& = \frac{ \sqrt{ x^2 + 3 } + 2 }{ x + 1 } \\
		& = \frac{ \sqrt{ 4 } + 2 }{ 2 } \\
		& = 2
	\end{align}
	$$

2. $\lim_{ x \to 2 } \frac{ \sqrt{ x - 2 } }{ x^2 - 4 }$.

	$$
	\begin{align}
		& \lim_{ x \to 2^- } \frac{ \sqrt{ x - 2 } }{ x^2 - 4 } \; \text{no existe} \\
		& = \lim_{ x \to 2 } \frac{ \sqrt{ x - 2 } }{ x^2 - 4 } \; \text{no existe}
	\end{align}
	$$

3. $\lim_{ x \to 0 } \frac{ 9 x }{ \psin{ 3 x } }$.

	$$
	\begin{align}
		& = 3 * \lim_{ t \to 0 } \frac{ t }{ \psin{ t } } \quad t = 3 x \\
		& = 3 * \left (\lim_{ t \to 0 } \frac{ \psin{ t } }{ t } \right )^{ - 1 } \\
		& = 3 * 1^{ -1 } \\
		& = 3
	\end{align}
	$$

4. $\lim_{ \theta \to 0 } \frac{ \ptan{ \theta } - \psec{ \theta } }{ 1 - \pcos{ \theta } }$.

	$$
	\begin{align}
		& = \frac{ 0 - 1 }{ 1 - 1 } \\
		& = \frac{ -1 }{ 0 } \; \text{no es una forma indeterminada}
	\end{align}
	$$

	Para cualquier valor de $\theta$ muy cercano a 0 (ya sea positivo o negativo), el valor de $\pcos{ \theta }$ es siempre un número ligeramente menor que 1.

	$$
	\lim_{ \theta \to 0 }{ 1 - \pcos{ \theta } } = 0^+
	$$

	$$
	\begin{align}
		& \lim_{ \theta \to 0 } \frac{ \ptan{ \theta } - \psec{ \theta } }{ 1 - \pcos{ \theta } } \\
		& = \frac{ -1 }{ 0^+ } \\
		& = -\infty
	\end{align}
	$$

5. $\lim_{ x \to 0 } \frac{ x \psin{ 2 x } }{ \psin{ x^2 } }$.

	$$
	\begin{align}
		& = \frac{ x (2 \psin{ x } \pcos{ x }) }{ \psin{ x^2 } } \\
		& = \frac{ 2 x \pcos{ x } }{ \psin{ x } } \\
		& = \lim_{ x \to 0 } 2 * \lim_{ x \to 0 } \frac{ x }{ \psin{ x } } * \lim_{ x \to 0 } \pcos{ x } \\
		& = 2 * 1 * 1 \\
		& = 2
	\end{align}
	$$

6. $\lim_{ x \to \frac{ \pi }{ 4 } } \frac{ \psin{ x } - \pcos{ x } }{ \pcos{ 2 x } }$.

	$$
	\begin{align}
		& = \frac{ \psin{ x } - \pcos{ x } }{ \pcos{ x }^2 - \psin{ x }^2 } \\
		& = \frac{ -\cancel{ (\pcos{ x } - \psin{ x }) } }{ (\pcos{ x } + \psin{ x }) \cancel{ (\pcos{ x } - \psin{ x }) } } \\
		& = -\frac{ 1 }{ \pcos{ x } + \psin{ x } } \\
		& = -\frac{ 1 }{ \frac{ \sqrt{ 2 } }{ 2 } + \frac{ \sqrt{ 2 } }{ 2 } } \\
		& = -\frac{ \sqrt{ 2 } }{ 2 }
	\end{align}
	$$

7. $\lim_{ x \to \infty }{ x \psin{ \frac{ 1 }{ x } } }$.

	$$
	\begin{align}
		& = \lim_{ t \to 0 } \frac{ \psin{ t } }{ t } \quad t = \frac{ 1 }{ x } \\
		& = 1
	\end{align}
	$$

8. $\lim_{ x \to \infty }{ \frac{ e^x - e^{ -x } }{ e^x + e^{ -x } } }$.

	$$
	\begin{align}
		& \frac{ e^x - e^{ -x } }{ e^x + e^{ -x } } * \frac{ \frac{ 1 }{ e^x } }{ \frac{ 1 }{ e^x } } \\
		& = \frac{ 1 - \frac{ 1 }{ e^{ 2 x } } }{ 1 + \frac{ 1 }{ e^{ 2 x } } } \\
		& = 1
	\end{align}
	$$

9. $\lim_{ x \to 0 } \frac{ \psin{ \psin{ x } } }{ 3 \psin{ x } }$.

	$$
	\begin{align}
		& \lim_{ t \to 0 } \frac{ \psin{ t } }{ 3 t } \quad t = \psin{ x } \\
		& = \frac{ 1 }{ 3 } \lim_{ t \to 0 }  \frac{ \psin{ t } }{ t } \\
		& = \frac{ 1 }{ 3 }
	\end{align}
	$$

10. $\lim_{ x \to 1 } \frac{ \psin{ 5 x - 5 } }{ x^3 - 1 }$.

	$$
	\begin{align}
		& \lim_{ t \to 0 } \frac{ \psin{ t } }{ \left (\frac{ t + 5 }{ 5 } \right )^3 - 1 } \quad t = 5 x - 5 \\
		& = \frac{ \psin{ t } }{ \frac{ (t^3 + 15 t^2 + 75 t + 125) - 125 }{ 125 } } \\
		& = \frac{ \psin{ t } }{ \frac{ t^3 + 15 t^2 + 75 t }{ 125 } } \\
		& = \frac{ 125 }{ t^2 + 15 + 75 } * \frac{ \psin{ t } }{ t } \\
		& = \lim_{ t \to 0 } \frac{ 125 }{ t^2 + 15 + 75 } * \lim_{ t \to 0 } \frac{ \psin{ t } }{ t } \\
		& = \frac{ 125 }{ 75 } \\
		& = \frac{ 5 }{ 3 }
	\end{align}
	$$

## 2

Halle si existen, asíntotas verticales y horizontales de las siguientes funciones:

1. $f(x) = \frac{ x^2 }{ 1 - x^2 }$.

	$$
	D_f \in \mathbb{ R } - \{1, -1\}
	$$

	$$
	\lim_{ x \to 1^- } \frac{ x^2 }{ 1 - x^2 } = -\infty
	$$

	$$
	\lim_{ x \to 1^+ } \frac{ x^2 }{ 1 - x^2 } = \infty
	$$

	Concluimos que hay una asíntota vertical en $x = 1$.

	$$
	\begin{align}
		& \lim_{ x \to \infty } \frac{ x^2 }{ 1 - x^2 } \frac{ \frac{ 1 }{ x^2 } }{ \frac{ 1 }{ x^2 } } \\
		& = \frac{ 1 }{ \frac{ 1 }{ x^2 } - 1 } \\
		& = \frac{ 1 }{ 0 - 1 } \\
		& = -1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to -\infty } \frac{ x^2 }{ 1 - x^2 } \frac{ \frac{ 1 }{ x^2 } }{ \frac{ 1 }{ x^2 } } \\
		& = \frac{ 1 }{ \frac{ 1 }{ x^2 } - 1 } \\
		& = \frac{ 1 }{ 0 - 1 } \\
		& = -1
	\end{align}
	$$

	Concluimos que hay una asíntota horizontal en $y = -1$.

2. $f(x) = 7 x^6 - 3 x^4 + 8$.

	$$
	D_f \in \mathbb{ R }
	$$

	Concluimos que no hay asíntotas verticales.

	$$
	\lim_{ x \to \infty } 7 x^6 - 3 x^4 + 8 = \infty
	$$

	$$
	\lim_{ x \to -\infty } 7 x^6 - 3 x^4 + 8 = -\infty
	$$

	Concluimos que no hay asíntotas horizontales.

3. $f(x) = \frac{ \abs{ x + 2 } }{ x + 2 }$.

	$$
	D_f \in \mathbb{ R } - \{-2\}
	$$

	$$
	\lim_{ x \to -2^- } \frac{ -(x + 2) }{ x + 2 } = -1
	$$

	$$
	\lim_{ x \to -2^+ } \frac{ x + 2 }{ x + 2 } = 1
	$$

	Concluimos que no hay asíntotas verticales.

	$$
	\begin{align}
		& 	\lim_{ x \to \infty } \frac{ x + 2 }{ x + 2 } \frac{ \frac{ 1 }{ x } }{ \frac{ 1 }{ x } } \\
		& = \frac{ 1 + \frac{ 2 }{ x } }{ 1 + \frac{ 2 }{ x } } \\
		& = \frac{ 1 + 0 }{ 1 + 0 } \\
		& = 1
	\end{align}
	$$

	$$
	\begin{align}
		& 	\lim_{ x \to -\infty } \frac{ -x - 2 }{ x + 2 } \frac{ \frac{ 1 }{ x } }{ \frac{ 1 }{ x } } \\
		& = \frac{ -1 - \frac{ 2 }{ x } }{ 1 + \frac{ 2 }{ x } } \\
		& = \frac{ -1 - 0 }{ 1 + 0 } \\
		& = -1
	\end{align}
	$$

	Concluimos que tiene dos asíntotas horizontales en $y = -1$ y $y = 1$.

## 3

Pruebe que $\lim_{ x \to 0 } \frac{ 1 - 2^{ \frac{ 1 }{ x } } }{ 1 + 2^{ \frac{ 1 }{ x } } }$ no existe.

$$
\begin{align}
	& \lim_{ x \to 0^+ } \frac{ 1 - 2^{ \frac{ 1 }{ x } } }{ 1 - 2^{ \frac{ 1 }{ x } } } \\
	& = \frac{ 2^{ \frac{ 1 }{ x } } \left ( 2^{ -\frac{ 1 }{ x } } - 1 \right ) }{ 2^{ \frac{ 1 }{ x } } \left ( 2^{ -\frac{ 1 }{ x } } + 1 \right ) } \\
	& = \frac{ 2^{ -\frac{ 1 }{ x } } - 1 }{ 2^{ -\frac{ 1 }{ x } } + 1 } \\
	& = \frac{ \frac{ 1 }{ 2^{ \frac{ 1 }{ x } } } - 1 }{ \frac{ 1 }{ 2^{ \frac{ 1 }{ x } } } + 1 } \\
	& = \frac{ -1 }{ 1 } \\
	& = -1
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to 0^- } \frac{ 1 - 2^{ \frac{ 1 }{ x } } }{ 1 - 2^{ \frac{ 1 }{ x } } } \\
	& = \frac{ 1 - \frac{ 1 }{ 2^{ -\frac{ 1 }{ x } } } }{ 1 + \frac{ 1 }{ 2^{ -\frac{ 1 }{ x } } } }
	& = \frac{ 1 - 0 }{ 1 + 0 } \\
	& = 1
\end{align}
$$

$$
\lim_{ x \to 0^- } \frac{ 1 - 2^{ \frac{ 1 }{ x } } }{ 1 + 2^{ \frac{ 1 }{ x } } } \neq \lim_{ x \to 0^+ } \frac{ 1 - 2^{ \frac{ 1 }{ x } } }{ 1 + 2^{ \frac{ 1 }{ x } } }
$$

## 4

Use el teorema del sandwich para calcular los siguientes límites:

1. $\lim_{ x \to 0 } { x^3 \pcos{ \frac{ 1 }{ x } } }$.

	$$
	\begin{align}
		& -1 \leq \pcos{ \frac{ 1 }{ x } } \leq 1 \\
		& -x^3 \leq x^3 \pcos{ \frac{ 1 }{ x } } \leq x^3
	\end{align}
	$$

	$$
	\lim_{ x \to 0 } -x^3 = 0
	$$

	$$
	\lim_{ x \to 0 } x^3 = 0
	$$

	$$
	\lim_{ x \to 0 } -x^3 = \lim_{ x \to 0 } x^3 = \lim_{ x \to 0 } { x^3 \pcos{ \frac{ 1 }{ x } } } = 0
	$$

2. $\lim_{ x \to 0 } { x \psin{ \frac{ 1 }{ x } } }$.

	$$
	\begin{align}
		& -1 \leq \psin{ \frac{ 1 }{ x } } \leq 1 \\
		& -\abs{ x } \leq x^3 \pcos{ \frac{ 1 }{ x } } \leq \abs{ x }
	\end{align}
	$$

	$$
	\lim_{ x \to 0 } -\abs{ x } = 0
	$$

	$$
	\lim_{ x \to 0 } \abs{ x } = 0
	$$

	$$
	\lim_{ x \to 0 } -\abs{ x } = \lim_{ x \to 0 } \abs{ x } = \lim_{ x \to 0 } { x \psin{ \frac{ 1 }{ x } } } = 0
	$$

3. $\lim_{ x \to \infty } \frac{ \psin{ x }^2 }{ x^2 }$.

	$$
	\begin{align}
		& -1 \leq \psin{ x } \leq 1 \\
		& 0 \leq \psin{ x }^2 \leq 1 \\
		& \frac{ 0 }{ x^2 } \leq \frac{ \psin{ x }^2 }{ x^2 } \leq \frac{ 1 }{ x^2 }
	\end{align}
	$$

	$$
	\lim_{ x \to \infty } 0 = 0
	$$

	$$
	\lim_{ x \to \infty } \frac{ 1 }{ x^2 } = 0
	$$

	$$
	\lim_{ x \to \infty } 0 = \lim_{ x \to \infty } \frac{ 1 }{ x^2 } = \lim_{ x \to \infty } \frac{ \psin{ x }^2 }{ x^2 } = 0
	$$

## 5

Suponga que $f(x)$ es una función acotada (es decir, existe una constate real $M > 0$, tal que $\abs{ f(x) } \leq M$ para todo $x \in D_f$). Use el teorema del sandwich para probar que $\lim_{ x \to 0 } x^2 f(x) = 0$.

$$
\begin{align}
	& -M \leq f(x) \leq M \\
	& -x^2 M \leq x^2 f(x) \leq x^2 M
\end{align}
$$

$$
\lim_{ x \to 0 } -x^2 M = 0
$$

$$
\lim_{ x \to 0 } x^2 M = 0
$$

$$
\lim_{ x \to 0 } -x^2 M = \lim_{ x \to 0 } x^2 M = \lim_{ x \to 0 } x^2 f(x) = 0
$$

## 6

Muestre que las siguiente funciones son continuas en $x = a$:

1. $f(x) = -5 x^3 - 3 x^2 + x - 2$ con $a = 2$.

	$$
	\begin{align}
		& f(2) = -5 (2)^3 - 3 (2)^2 + 2 - 2 \\
		& = -40 - 12 \\
		& = -52
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 2 } f(x) \\
		& = -5 (2)^3 - 3 (2)^2 + 2 - 2 \\
		& = -52
	\end{align}
	$$

	$$
	f(2) = \lim_{ x \to 2 } f(x) = -52
	$$

2. $f(x) = \ptan{ x }$ con $a = \frac{ \pi }{ 4 }$.

	$$
	\begin{align}
		& f \left (\frac{ \pi }{ 4 }\right ) = \ptan{ \frac{ \pi }{ 4 } } \\
		& = 1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to \frac{ \pi }{ 4 } } f(x) \\
		& =  \ptan{ \frac{ \pi }{ 4 } } \\
		& = 1
	\end{align}
	$$

	$$
	f \left (\frac{ \pi }{ 4 }\right ) = \lim_{ x \to \frac{ \pi }{ 4 } } f(x) = 1
	$$

## 7

Sea $f(x) = \abs{ x }$. Muestre que $f$ es continua en $x = 0$.

$$
\begin{align}
	& f(0) = \abs{ 0 } \\
	& = 0
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to 0^- } f(x) \\
	& = -x \\
	& = 0
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to 0^+ } f(x) \\
	& = x \\
	& = 0
\end{align}
$$

$$
\lim_{ x \to 0^- } f(x) = \lim_{ x \to 0^+ } f(x) = f(0) = 0
$$

Para saber si $f$ es derivable en ese punto, hallamos las derivadas laterales.

$$
\begin{align}
	& f^\prime(0) = \lim_{ h \to 0 } \frac{ f(0 + h) - f(0) }{ h } \\
	& = \frac{ \abs{ 0 + h } - \abs{ 0 } }{ h } \\
	& = \frac{ \abs{ h } }{ h }
\end{align}
$$

$$
\begin{align}
	& \lim_{ h \to 0^- } f(0) \\
	& = \frac{ -h }{ h } \\
	& = -1
\end{align}
$$

$$
\begin{align}
	& \lim_{ h \to 0^+ } f^\prime(0) \\
	& = \frac{ h }{ h } \\
	& = 1
\end{align}
$$

$$
\lim_{ h \to 0^- } f^\prime(0) \neq \lim_{ h \to 0^+ } f^\prime(0)
$$

## 8

Muestre que las siguientes funciones son continuas en $x = a$.

1. $a = 1$ y $f(x) =
	\begin{cases}
		\frac{ x^4 - 1 }{ x^2 - 1 } & x \in [0,3], x \neq 1 \\
		2                           & x = 1
	\end{cases}$.

	$$
	f(x) =
		\begin{cases}
			x^2 + 1 & x \in [0,3], x \neq 1 \\
			2       & x = 1
		\end{cases}
	$$

	$$
	f(1) = 2
	$$

	$$
	\begin{align}
		& \lim_{ x \to 1^- } f(x) \\
		& = (1)^2 + 1 \\
		& = 2
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 1^+ } f(x) \\
		& = (1)^2 + 1 \\
		& = 2
	\end{align}
	$$

	$$
	\lim_{ x \to 1^- } f(x) = \lim_{ x \to 1^+ } f(x) = f(1) = 2
	$$

2. $a = 0$ con $f(x) = \abs{ x } - x$.

	$$
	f(0) = 0
	$$

	$$
	\begin{align}
		& \lim_{ x \to 0^- } f(x) \\
		& = -x - x \\
		& = -2 x \\
		& = 0
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 0^+ } f(x) \\
		& = x - x \\
		& = 0
	\end{align}
	$$

	$$
	\lim_{ x \to 0^- } f(x) = \lim_{ x \to 0^+ } f(x) = f(0)
	$$

## 9

Determine si la función $f$ es continua en $x = 0$.

$$
\begin{cases}
	\frac{ x^3 + 5 }{ x + 3 }                                        & x \in (-3,0] \\
	\frac{ 1 }{ x } \left (\frac{ 1 }{ \sqrt{ 1 + x } } - 1 \right ) & x > 0
\end{cases}
$$

$$
\begin{align}
	& f(0) = \frac{ (0)^3 + 5 }{ 0 + 3 } \\
	& = \frac{ 5 }{ 3 }
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to 0^- } f(x) \\
	& =\frac{ 5 }{ 3 }
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to 0^+ } f(x) \\
	& = \frac{ 1 }{ x } \left (\frac{ 1 - \sqrt{ 1 + x } }{ \sqrt{ 1 + x } } \right ) \frac{ 1 + \sqrt{ 1 + x } }{ 1 + \sqrt{ 1 + x } } \\
	& = \frac{ 1 }{ x } \left (\frac{ 1^2 - (\sqrt{ 1 + x })^2 }{ \sqrt{ 1 + x } (1 + \sqrt{ 1 + x }) } \right ) \\
	& = \frac{ 1 }{ \cancel{ x } } \left (-\frac{ \cancel{ x } }{ x + 1 + \sqrt{ 1 + x } } \right ) \\
	& = -\frac{ 1 }{ x + 1 + \sqrt{ 1 + x } } \\
	& = -\frac{ 1 }{ 2 }
\end{align}
$$

$$
\lim_{ x \to 0^- } f(x) \neq \lim_{ x \to 0^+ } f(x)
$$

## 10

Halle los valores de la constante $a$ para los cuales la función

$$
f(x) =
	\begin{cases}
		-2 a^2 + x + 5        & x \geq -2 \\
		\frac{ 5 a }{ x + 1 } & x < -2
	\end{cases}
$$

es continua en $x = -2$.

$$
\begin{align}
	& f(-2) = -2 a^2 + (-2) + 5 \\
	& = -2 a^2 + 3
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to -2^- }  = \frac{ 5 a }{ (-2) + 1 } \\
	& = -5 a
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to -2^+ } f(x) = -2 a^2 + (-2) + 5 \\
	& = -2 a^2 + 3
\end{align}
$$

$$
\begin{align}
	& \lim_{ x \to -2^- } f(x) = \lim_{ x \to -2^+ } f(x) = f(2) \\
	& -5 a = -2 a^2 + 3 \\
	& 2 a^2 - 5 a - 3 = 0 \\
	& a = \frac{ 5 \pm \sqrt{ (-5)^2 - 4 (2) (-3) } }{ 2 (2) } \\
	& = \frac{ 5 \pm \sqrt{ 49 } }{ 4 } \\
	& = \frac{ 5 \pm 7 }{ 4 } \\
	& a_1 = \frac{ 5 - 7 }{ 4 } \\
	& = -\frac{ 2 }{ 4 } \\
	& = -\frac{ 1 }{ 2 } \\
	& a_2 = \frac{ 5 + 7 }{ 4 } \\
	& = 3
\end{align}
$$

$$
f(x) =
	\begin{cases}
		x + \frac{ 9 }{ 2 }      & x \geq -2 \\
		-\frac{ 5 }{ 2 (x + 1) } & x < -2
	\end{cases}
$$

o

$$
f(x) =
	\begin{cases}
		x - 13        & x \geq -2 \\
		\frac{ 15 }{ x + 1 } & x < -2
	\end{cases}
$$

## 11

Halle los valores de la constante $m$, para que la función

$$
f(x) =
	\begin{cases}
		x^2 - 5 x - 7 & x \geq m \\
		-2 x + 3      & x > m
	\end{cases}
$$

sea continua en $x = m$.

$$
f(m) = m^2 - 5 m - 7
$$

$$
\lim_{ x \to m^- } f(x) = m^2 - 5 m - 7
$$

$$
\lim_{ x \to m^+ } f(x) = -2 m + 3
$$

$$
\begin{align}
	& \lim_{ x \to m^- } f(x) = \lim_{ x \to m^+ } f(x) = f(m) \\
	& m^2 - 5 m - 7 = -2 m + 3 \\
	& m^2 - 3 m - 10 = 0 \\
	& (m - 5) (m + 2) = 0 \\
	& m_1 = 5 \quad m_2 = -2
\end{align}
$$

$$
f(x) =
	\begin{cases}
		x^2 - 5 x - 7 & x \geq 5 \\
		-2 x + 3      & x > 5
	\end{cases}
$$

o

$$
f(x) =
	\begin{cases}
		x^2 - 5 x - 7 & x \geq -2 \\
		-2 x + 3      & x > -2
	\end{cases}
$$

## 12

Halle la ecuación de la recta tangente y normal a la curva $y = \sqrt{ x }$ en $x = 4$.

> La recta normal a la curva en un punto $P$, es la recta perpendicular a la recta tangente a la curva en $P$.

$$
\text{pendiente recta normal} = -\frac{ 1 }{ f^\prime(4) }
$$

$$
\begin{align}
	& f^\prime(4) = \lim_{ h \to 0 } \frac{ f(4 + h) - f(4) }{ h } \\
	& = \frac{ \sqrt{ 4 + h } - \sqrt{ 4 } }{ h } \frac{ \sqrt{ 4 + h } + \sqrt{ 4 } }{ \sqrt{ 4 + h } + \sqrt{ 4 } } \\
	& = \frac{ (4 + h) - h }{ h (\sqrt{ 4 + h } + 2) } \\
	& = \frac{ h }{ h (\sqrt{ 4 + h } + 2) } \\
	& = \frac{ 1 }{ \sqrt{ 4 + h } + 2 } \\
	& = \frac{ 1 }{ 4 }
\end{align}
$$

Teniendo el punto $P(4,2)$, se halla cada recta:

$$
\begin{align}
	& (x - 4) * -4 = y - 2 \\
	& y = -4 x + 18
\end{align}
$$

$$
\begin{align}
	& (x - 4) * \frac{ 1 }{ 4 } = y - 2 \\
	& y = \frac{ 1 }{ 4 } x + 1
\end{align}
$$
