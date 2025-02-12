---
reviewed_on: "2025-01-31"
---

# Exponential and logarithmic function

## 1

A continuación se presentan la grafica de las funciones $f_1(x) = 2^x$, $f_2(x) = 3^x$, $f_3(x) = 4^x$, $f_4(x) = \left (\frac{ 1 }{ 4 } \right )^x$, $f_5(x) = \left (\frac{ 1 }{ 2 } \right )^x$ y $f_6(x) = \left (\frac{ 3 }{ 4 } \right )^x$. Identifique cada una.

![graph](../assets/calculo_I/2_06_01-graph.svg)

## 2

A continuación se dan las gráficas de dos funciones de tipo exponencial de la forma $C a^x$, donde $C$ es una constante. Halle las funciones $f$ y $g$ indicando su dominio y rango en cada caso.

![graphs](../assets/calculo_I/2_06_02-graphs.svg)

$$
\begin{align}
	& f(0) = C a^0 = 2 \\
	& C = 2
\end{align}
$$

$$
\begin{align}
	& f(1) = 2 a^1 = 6 \\
	& C = 3
\end{align}
$$

$$
f(x) = 2 * 3^x
$$

$$
\begin{align}
	& g(-1) = C a^{ -1 } = 6 \\
	& \frac{ C }{ a } = 6 \\
	& C = 6 a \quad (1)
\end{align}
$$

$$
\begin{align}
	& g(1) = (6 a) a^1 = \frac{ 3 }{ 2 } \\
	& a^2 = \frac{ 3 }{ 12 } \\
	& a = \pm \sqrt{ \frac{ 3 }{ 12 } } \\
	& = \pm \frac{ \sqrt{ 3 } }{ 2 \sqrt{ 3 } } \\
	& = \pm \frac{ 1 }{ 2 }
\end{align}
$$

Reemplazando en $(1)$.

$$
\begin{align}
	& C = 6 \left (\frac{ 1 }{ 2 } \right) \\
	& C = 3
\end{align}
$$

$$
g(x) = 3 \left (\frac{ 1 }{ 2 } \right)^x
$$

## 3

Halle el dominio y rango de las siguientes funciones:

1. $f(x) = -3 + 2^{ x + 1 }$.

	$$
	D_f \in \mathbb{R}
	$$

	$$
	\begin{align}
		& \lim_{ x \to \infty } { -3 + 2^{ x + 1 } } = \infty \\
		& \lim_{ x \to -\infty } { -3 + 2^{ x + 1 } } = -3 \\
		& R_f \in (-3,\infty)
	\end{align}
	$$

2. $f(x) = -2 + \left ( \frac{ 1 }{ 3 } \right )^{ x + 1 }$.

	$$
	D_f \in \mathbb{R}
	$$


	$$
	\begin{align}
		& \lim_{ x \to \infty } { -2 + \left ( \frac{ 1 }{ 3 } \right )^{ x + 1 } } = -2 \\
		& \lim_{ x \to -\infty } { -2 + \left ( \frac{ 1 }{ 3 } \right )^{ x + 1 } } = \infty \\
		& R_f \in (-2,\infty)
	\end{align}
	$$

## 4

Calcule el valor de las siguientes expresiones:

1. $log_3 729$.

	$$
	log_3 3^6 = 6
	$$

2. $log_5 \sqrt[7]{ 5 }$.

	$$
	log_5 5^\frac{ 1 }{ 7 } = \frac{ 1 }{ 7 }
	$$

3. $log_\sqrt{ 2 } 16$.

	$$
	\begin{align}
		& log_{ 2^\frac{ 1 }{ 2 } } 16 \\
		& = 2 log_2 16 \\
		& = 2 log_2 2^4 \\
		& = 2 * 4 \\
		& = 8
	\end{align}
	$$

4. $\log_8 16^p$.

	$$
	\begin{align}
		& log_{ 2^3 } 2^{ 4 p } \\
		& = \frac{ 4 p }{ 3 }
	\end{align}
	$$
