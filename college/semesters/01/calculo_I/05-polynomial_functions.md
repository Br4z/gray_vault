---
reviewed_on: "2025-01-31"
---

# Polynomial functions

## 1

Sean $z = -4 + 3 i$ y $w = 1 - 2 i$ números complejos, escriba en la forma $a + b i$ las siguientes expresiones:

1. $3 i w - 2 z^2$.

	$$
	\begin{align}
		& 3 i (1 - 2 i) - 2 (-4 + 3 i)^2 \\
		& = 3 i - 6 i^2 - 2 (16 + 2 (-4) ( 3 i) + 9 i^2) \\
		& = 3 i + 6 - 2 (7 - 24 i) \\
		& = 3 i + 6 - 14 + 48 i \\
		& = -8 + 51 i
	\end{align}
	$$

2. $z + i^{ 27 } w$.

	$$
	\begin{align}
		& (-4 + 3 i) + i^{ 27 } (1 - 2 i) \\
		& = (-4 + 3 i) + i^{ 26 } i (1 - 2 i) \\
		& = (-4 + 3 i) - i (1 - 2 i) \\
		& = -4 + 3 i - i + 2 i^2 \\
		& = -6 + 2 i
	\end{align}
	$$

3. $\overline{ \frac{ w }{ z } + z w }$.

	$$
	\begin{align}
		& \frac{ \overline{ w } }{ \overline{ z } } + \overline{ z } \overline{ w } \\
		& = \frac{ 1 + 2 i }{ -4 - 3 i } + (-4 + 3 i) (1 - 2 i) \\
		& = \frac{ 1 + 2 i }{ -4 - 3 i } \frac{ -4 + 3 i }{ -4 + 3 i } + 2 + 11 i \\
		& = \frac{ -10 - 5 i }{ 25 } + 2 + 11 i \\
		& = \left (-\frac{ 2 }{ 5 } + 2 \right ) + i \left (-\frac{ 1 }{ 5 } + 11 \right ) \\
		& = \frac{ 8 }{ 5 } + i \frac{ 54 }{ 5 }
	\end{align}
	$$

## 2

Halle los ceros de los siguientes polinomios y factorice en los números reales y complejos.

1. $x^3 - 1$.

	$$
	\begin{align}
		& x^3 - 1^3 \\
		& = (x - 1) (x^2 + x + 1) \\
		& x_1 = 1
	\end{align}
	$$

	$$
	\begin{align}
		& x^2 + x + 1 = 0 \\
		& \frac{ -1 \pm \sqrt{ 1 - 4 } }{ 2 } \\
		& = \frac{ -1 \pm \sqrt{ -3 } }{ 2 } \\
		& x_2 = -\frac{ 1 }{ 2 } + i \frac{ \sqrt{ 3 } }{ 2 } \quad x_3 = -\frac{ 1 }{ 2 } - i \frac{ \sqrt{ 3 } }{ 2 }
	\end{align}
	$$

2. $2 x^4 + 4 x^2 - 30$.

	$$
	\begin{align}
		& 2 y^2 + 4 y - 30 \quad y = x^2 \\
		& = 2 (y^2 + 2 y - 15) \\
		& = 2 (y + 5) (y - 3) \\
		& = 2 (x^2 + 5) (x^2 - 3) \\
		& x_1 = \pm \sqrt{ 3 } \quad x_2 = \pm i \sqrt{ 5 }
	\end{align}
	$$

3. $3 x^5 - 3 x^3 - 36 x$.

	$$
	\begin{align}
		& x (3 x^4 - 3 x^2 - 36) \\
		& = 3 x (y^2 - y - 12) \quad y = x^2 \\
		& = 3 x (y + 3) (y - 4) \\
		& = 3 x (x^2 + 3) (x^2 - 4) \\
		& x_1 = 0 \quad x_2 = \pm 2 \quad x_3 = \pm i \sqrt{ 3 }
	\end{align}
	$$

4. $x^5 + x^4 - 9 x^3 - 9 x^2$.

	$$
	\begin{align}
		& x^2 (x^3 + (x^2 - 9 x - 9)) \\
		& = x^2 (x^2 (x + 1) - 9 (x + 1)) \\
		& = x^2 (x^2 - 9) (x + 1) \\
		& x_1 = 0 \quad x_2 = \pm 3 \quad x_3 = -1
	\end{align}
	$$

5. $2 x^4 - 5 x^3 + 5 x^2 - 20 x - 12$.

	$$
	\begin{array}{c|ccccc}
		3 & 2 & -5 & 5 & -20 & -12 \\
		  &   & 6  & 3 & 24  & 12 \\
		\hline
		  & 2 & 1  & 8 & 4   & 0 \\
	\end{array}
	$$

	$$
	\begin{align}
		& (2 x^3 + x^2 + 8 x + 4) (x - 3) \\
		& (2 x (x^2 + 4) + (x^2 + 4)) (x - 3) \\
		& (2 x + 1) (x^2 + 4) (x - 3) \\
		& x_1 = -\frac{ 1 }{ 2 } \quad x_2 = 3 \quad x_3 = \pm 2 i
	\end{align}
	$$

## 3

1. Halle un polinomio cúbico de coeficientes reales que tenga entre sus raíces a 5 y $3 + 2 i$.

	$$
	\begin{align}
		& (x - 5) (x - (3 + 2 i)) (x - (3 - 2 i)) \\
		& (x - 5) [(x - 3) - 2 i] [(x - 3) + 2 i)] \\
		& (x - 5) [(x - 3)^2 + 2^2] \\
		& (x - 5) (x^2 - 6 x + 9 + 4) \\
		& (x - 5) (x^2 - 6 x + 13) \\
		& x^3 - 6 x^2 + 13 x - 5 x^2 + 30 x - 65 \\
		& x^3 - 11 x^2 + 43 x - 65
	\end{align}
	$$

2. Halle un polinomio de grado 5 con coeficientes reales, que tenga entre sus raíces a 4, $-3 i$ y $2 - i$, cuya grafica pase por el punto $P(-1,1)$.

	$$
	\begin{align}
		& (x - 4) (x - 3 i) (x + 3 i) (x - [2 - i]) (x - [2 + i]) \\
		& (x - 4) (x^2 + 3^2) ([x - 2] - i) ([x - 2] + i) \\
		& (x - 4) (x^2 + 9) ([x - 2]^2 + 1) \\
		& (x - 4) (x^2 + 9) (x^2 - 4 x + 5) \\
		& (x - 4) (x^4 - 4 x^3 + 5 x^2 + 9 x^2 - 36 x + 45) \\
		& (x - 4) (x^4 - 4 x^3 + 14 x^2 - 36 x + 45) \\
		& x^5 - 4 x^4 + 14 x^3 - 36 x^2 + 45 x - 4 x^4 + 16 x^3 - 56 x^2 + 144 x - 180 \\
		& x^5 - 8 x^4 +30 x^3 - 92 x^2 + 189 x - 180
	\end{align}
	$$

	Para que se cumpla la condición de que pase por el punto $P(-1,1)$, haremos uso de otro factor.

	$$
	\begin{align}
		& p(x) = a (x^5 - 8 x^4 +30 x^3 - 92 x^2 + 189 x - 180) \\
		& p(-1) = a (-1 - 8 -30 - 92 - 189 - 180) = 1 \\
		& -500 a = -1 \\
		& a = \frac{ 1 }{ 500 }
	\end{align}
	$$

	El polinomio final es

	$$
	\begin{align}
		& p(x) = \frac{ 1 }{ 500 } (x^5 - 8 x^4 + 30 x^3 - 92 x^2 + 189 x - 180) \\
		& = \frac{ 1 }{ 500 } x^5 - \frac{ 2 }{ 125 } x^4 + \frac{ 3 }{ 50 } x^3 - \frac{ 23 }{ 125 } x^2 + \frac{ 189 }{ 500 } x - \frac{ 9 }{ 25 }
	\end{align}
	$$

## 4

Encuentre el residuo de dividir $f(x) = -2 x^{ 103 } - x^{ 35 } + 5 x^{ 18 } - x +6$ entre $x + 1$.

Usando el [[personal/math/remainder_theorem|remainder_theorem|teorema del residuo]], el residuo corresponde al resultado de evaluar $f(-1)$.

$$
\begin{align}
	& f(-1) = -2 (-1)^{ 103 } - (-1)^{ 35 } + 5 (-1)^{ 18 } - (-1) +6 \\
	& = 2 + 1 + 5 + 1 + 6 \\
	& = 15
\end{align}
$$

## 5

Halle la constante $k$ para que el residuo de dividir $f(x) = -x^3 - 2 x + k^2$ entre $x - 3$ sea igual a 16.

$$
\begin{align}
	& f(3) = -27 - 6 + k^2 = 16 \\
	& k^2 = 49 \\
	& k = \pm \sqrt{ 49 } \\
	& k_1 = 7 \quad k_2 = -7
\end{align}
$$

## 6

Encuentre a los valores de la constante $k$, para que el polinomio $p(x) = x^3 + k^2 x^2 - x -2 k$ tenga a $-4$ como raíz.

$$
\begin{align}
	& p(-4) = (-4)^3 + k^2 (-4)^2 - (-4) - 2 k = 0 \\
	& -64 + 16 k^2 + 4 - 2 k = 0 \\
	& 16 k^2 - 2 k- 60 = 0 \\
	& 2 (8 k^2 - k- 30) = 0 \\
	& 8 k^2 - k- 30 = 0 \\
	& \frac{ 1 \pm \sqrt{ 1 - 4 (8) (-30) } }{ 16 } \\
	& \frac{ 1 \pm \sqrt{ 1 + 960 } }{ 16 } \\
	& k_1 = \frac{ 1 + 31 }{ 16 } = 2 \quad k_2 = \frac{ 1 - 31 }{ 16 } = -\frac{ 15 }{ 8 }
\end{align}
$$

## 7

Encuentre la relación entre las constantes $a$ y $b$ para que $x - 2$ sea factor del polinomio $p(x) = 5 a x^3 + 8 (a + b) x^2 - x + b$.

$$
\begin{align}
	& p(2) = 5 a (2)^3 + 8 (a + b) (2)^2 - (2) + b = 0 \\
	& 40 a + 32 (a + b) - 2 + b = 0 \\
	& 72 a + 33 b = 2
\end{align}
$$
