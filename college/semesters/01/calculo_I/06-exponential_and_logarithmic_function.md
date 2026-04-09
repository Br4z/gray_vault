---
reviewed_on: "2025-08-17"
---

# Exponential and logarithmic function

## 1

A continuación se presentan la gráfica de las funciones $f_1(x) = 2^x$, $f_2(x) = 3^x$, $f_3(x) = 4^x$, $f_4(x) = \left (\frac{ 1 }{ 4 } \right )^x$, $f_5(x) = \left (\frac{ 1 }{ 2 } \right )^x$ y $f_6(x) = \left (\frac{ 3 }{ 4 } \right )^x$. Identifique cada una.

![graph](college/semesters/01/assets/calculo_I/2_06_01-graph.svg)

## 2

A continuación se dan las gráficas de dos funciones de tipo exponencial de la forma $Ca^x$, donde $C$ es una constante. Halle las funciones $f$ y $g$ indicando su dominio y rango.

![graphs](college/semesters/01/assets/calculo_I/2_06_02-graphs.svg)

$$
\begin{align}
	& f(0) = C a^0 = 2 \\
	& C = 2 \\
	& f(1) = (2) a^1 = 6 \\
	& a = 3 \\
	& f(x) = (2) (3)^x
\end{align}
$$

$$
\begin{align}
	& g(-1) = C a^{ -1 } = 6 \\
	& \frac{ C }{ a } = 6 \\
	& C = 6 a \quad (1) \\
	& g(1) = C a = \frac{ 3 }{ 2 } \\
	& C = \frac{ 3 }{ 2 a } \quad (2)
\end{align}
$$

Igualando $(1)$ y $(2)$.

$$
\begin{align}
	& 6 a = \frac{ 3 }{ 2 a } \\
	& 12 a^2 = 3 \\
	& a = \pm \sqrt{ \frac{ 3 }{ 12 } } \\
	& = \pm \sqrt{ \frac{ 1 }{ 4 } } \\
	& = \pm \frac{ 1 }{ 2 } \\
	& a = \frac{ 1 }{ 2 }
\end{align}
$$

$$
\begin{align}
	& C = 6 \left (\frac{ 1 }{ 2 } \right ) = 3 \\
	& g(x) = (3) \left (\frac{ 1 }{ 2 } \right )^x
\end{align}
$$

## 3

Halle el dominio y rango de estas funciones:

1. $f(x) = -3 + 2^{ x + 1 }$.

	$$
	D_f \in \mathbb{ R }
	$$

	$$
	\begin{align}
		& -3 + 2^{ x + 1 } = y \\
		& 2^{ x + 1 } = y + 3 \\
		& x + 1 = \plog[2]{ y + 3 } \\
		& x = \plog[2]{ y + 3 } - 1
	\end{align}
	$$

	$$
	y \in (3,\infty)
	$$

2. $g(x) = -2 + \left (\frac{ 1 }{ 3 } \right )^{ x + 1 }$.

	$$
	D_f \in \mathbb{ R }
	$$

	$$
	\begin{align}
		& -2 + \left (\frac{ 1 }{ 3 } \right )^{ x + 1 } = y \\
		& \left (\frac{ 1 }{ 3 } \right )^{ x + 1 } = y + 2 \\
		& (x + 1) \pln{ \frac{ 1 }{ 3 } } = \pln{ y + 2 } \\
		& x = \frac{ \pln{ y + 2 } }{ \pln{ \frac{ 1 }{ 3 } } } - 1 \\
	\end{align}
	$$

	$$
	y \in (2,\infty)
	$$

## 4

Calcule el valor de las siguientes expresiones:

1. $\plog[3]{ 729 }$.

	$$
	= \plog[3]{ 3^6 } = 6
	$$

2. $\plog[5]{ \sqrt[7]{ 5 } }$.

	$$
	= \plog[5]{ 5^\frac{ 1 }{ 7 } } = \frac{ 1 }{ 7 }
	$$

3. $\plog[\sqrt{ 2 }]{ 16 }$.

	$$
	\begin{align}
		& = \plog[ 2^\frac{ 1 }{ 2 } ]{ 16 } \\
		& = 2 \plog[2]{ 16 } \\
		& = 2 \plog[2]{ 2^4 } \\
		& = 2 * 4 \\
		& = 8
	\end{align}
	$$

4. $\plog[8]{ 16^p }$.

	$$
	\begin{align}
		& = \plog[ 2^3 ]{ 2^{ 4 p } } \\
		& = \frac{ 4 p }{ 3 }
	\end{align}
	$$

5. $4^{ \plog[ \frac{ 1 }{ 4 } ]{ 3 } }$.

	$$
	\begin{align}
		& = \left (\left (\frac{ 1 }{ 4 } \right )^{ -1 } \right )^{ \plog[ \frac{ 1 }{ 4 } ]{ 3 } } \\
		& = \left (\frac{ 1 }{ 4 } \right )^{ -\plog[ \frac{ 1 }{ 4 } ]{ 3 } } \\
		& = \left (\frac{ 1 }{ 4 } \right )^{ \plog[ \frac{ 1 }{ 4 } ]{ 3^{ -1 } } } \\
		& = 3^{ -1 }
	\end{align}
	$$

6. $3^{ \plog[9]{ 2 } }$.

	$$
	\begin{align}
		& = (9^{ -2 })^{ \plog[9]{ 2 } } \\
		& = 9^{ -2 \plog[9]{ 2 } } \\
		& = 9^{ \plog[9]{ 2^{ -2 } } } \\
		& = 2^{ -2 }
	\end{align}
	$$

7. $\plog[ \frac{ 1 }{ 2 } ]{ 64 }$.

	$$
	\begin{align}
		& = \plog[ 2^{ -1 } ]{ 2^6 } \\
		& = 6 \plog[ 2^{ -1 } ]{ 2 } \\
		& = 6 \plog[ 2^{ -1 } ]{ (2^{ -1 })^{ -1 } } \\
		& = -6
	\end{align}
	$$

8. $\plog[ \frac{ 1 }{ 81 } ]{ 3 }$.

	$$
	\begin{align}
	& = \plog[ 3^{ -4 } ]{ 3 } \\
	& = \plog[ 3^{ -4 } ]{ (3^{ -4 })^{ -\frac{ 1 }{ 4 } } } \\
	& = -\frac{ 1 }{ 4 }
	\end{align}
	$$

## 5

Simplifique al máximo la siguiente expresión:

$$
\plog{ 2 } + 16 \plog{ \frac{ 16 }{ 15 } } + 12 \plog{ \frac{ 25 }{ 24 } } + 7 \plog{ \frac{ 81 }{ 82 } }
$$

$$
\begin{align}
	& = \plog{ 2 \left (\frac{ 16 }{ 15 } \right )^{ 16 } \left (\frac{ 25 }{ 24 } \right )^{ 12 } \left (\frac{ 81 }{ 80 } \right )^7 } \\
	& = \plog{ 2 * \frac{ { 2^4 }^{ 16 } }{ 15^{ 16 } } * \frac{ 25^{ 12 } }{ 24^{ 12 } } * \frac{ { 3^4 }^7 }{ 80^7 } } \\
	& = \plog{ \frac{ 2^{ 65 } }{ 3^{ 16 } * 5^{ 16 } } * \frac{ 5^{ 24 } }{ 3^{ 12 } * 8^{ 12 } } * \frac{ 3^{ 28 } }{ 2^7 * 40^7 } } \\
	& = \plog{ \frac{ 2^{ 65 } }{ 3^{ 16 } * 5^{ 16 } } * \frac{ 5^{ 24 } }{ 3^{ 12 } * 2^{ 36 } } * \frac{ 3^{ 28 } }{ 2^{ 28 } * 5^7 } } \\
	& = \plog{ \frac{ 2^{ 65 } * 3^{ 28 } * 5^{ 24 } }{ 2^{ 64 } * 3^{ 28 } * 5^{ 23 } } } \\
	& = \plog{ 2 * 5 } \\
	& = 1
\end{align}
$$

## 6

A continuación se presentan la grafica de las funciones $f_1(x) = \plog[2]{ x }$, $f_2(x) = \plog[3]{ x }$, $f_3(x) = \plog[4]{ x }$, $f_4(x) = \plog[ \rac{ 1 }{ 4 } ]{ x }$, $f_5(x) = \plog[ \rac{ 1 }{ 2 } ]{ x }$ y $f_6(x) = \plog[ \rac{ 3 }{ 4 } ]{ x }$. Identifique cada una.

![graph](college/semesters/01/assets/calculo_I/2_06_03-graphs.svg)

## 8

Escriba las siguientes expresiones como un solo logaritmo:

1. $x \pln{ 2 } + 5 \pln{ x - 1 } - 2 \pln{ x - 3 }$.

	$$
	\begin{align}
		& = \pln{ 2^x } + \pln{ x - 1 }^5 + \pln{ x - 3 }^{ -2 } \\
		& = \pln{ 2^x (x - 1)^5 (x - 3)^{ -2 } }
	\end{align}
	$$

2. $2 \plog[a]{ \frac{ y^3 }{ x } } - 3 \plog[a]{ y } + \frac{ 1 }{ 2 } \plog[a]{ x^4 y^2 }$.

	$$
	\begin{align}
			& = \plog[a]{ \left ( \frac{ y^3 }{ x } \right )^2 } + \plog[a]{ y^{ -3 } } + \plog[a]{ (x^4 y^2)^\frac{ 1 }{ 2 } } \\
			& = \plog[a]{ \left ( \frac{ y^3 }{ x } \right )^2 y^{ -3 } (x^4 y^2)^\frac{ 1 }{ 2 } } \\
			& = \plog[a]{ \frac{ y^6 }{ x^2 y^3 } x^2 y } \\
			& = \plog[a]{ y^4 }
	\end{align}
	$$

## 9

Determine para que valores de $x$ se cumple la igualdad:

1. $\plog{ x + 5 } = \plog{ x } + \plog{ 5 }$.

	$$
	\begin{align}
		& x + 5 > 0 \\
		& = x > -5
	\end{align}
	$$

2. $\pln{ 3 }^3 = 3 \pln x$.

	$$
	x > 0
	$$

3. $(\plog{ x })^3 + (\plog{ x })^2 - 4 (\plog{ x }) - 4 = 0$.

	$$
	\begin{align}
		& = \plog{ x^3 x^2 x^{ -4 } } \\
		& = \plog{ x } = 4 \\
		& x = 10^4
	\end{align}
	$$

## 10

Resuelva las siguientes ecuaciones:

1. $3^{ 2 x + 1 } = 3^{ \pi x + 4 }$.

	$$
	\begin{align}
		& = \plog[3]{ 3^{ 2 x + 1 } } = \plog[3]{ 3^{ \pi x + 4 } } \\
		& = 2 x + 1 = \pi x + 4 \\
		& = 2 x - \pi x = 3 \\
		& x = \frac{ 3 }{ 2 - \pi }
	\end{align}
	$$

2. $e^{ 4 x - 2 } = 2^{ x + 3 }$.

	$$
	\begin{align}
		& = \pln{ e^{ 4 x - 2 } } = \pln{ 2^{ x + 3 } } \\
		& 4 x - 2 = (x + 3) \pln 2 \\
		& 4 x - 2 = x \pln 2 + 3 \pln 2 \\
		& 4 x - x \pln 2 = 3 \pln 2 + 2 \\
		& x = \frac{ 3 \pln 2 + 2 }{ 4 - \pln 2 }
	\end{align}
	$$

3. $2^{ x - 1 } = \left ( \frac{ 1 }{ 16 } \right )^{ 4 x }$.

	$$
	\begin{align}
		& \plog[2]{ 2^{ x - 1 } } = \plog[2]{ \left ( \frac{ 1 }{ 16 } \right )^{ 4 x } } \\
		& x - 1 = 4 x \plog[2]{ \frac{ 1 }{ 16 } } \\
		& x - 1 = 4 x \plog[2]{ 2^{ -4 } } \\
		& x - 1 = 4 x (-4) \\
		& x = \frac{ 1 }{ 17 }
	\end{align}
	$$

4. $e^x - 14 e^{ -x } - 5 = 0$.

	$$
	\begin{align}
		& e^x - \frac{ 14 }{ e^x } = 5 \\
		& \frac{ e^{ 2 x } - 14 }{ e^x } = 5 \\
		& e^{ 2 x } - 5 e^x - 14 \quad w = e^x \\
		& w^2 - 5 w - 14 = 0 \\
		& (w - 7) (w + 2) = 0 \quad w_1 = 7 \; w_2 = -2 \\
		& w_1 \quad 7 = e^x \\
		& \pln 7 = x \\
		& w_2 \quad -2 = e^x \; \text{algo imposible}
	\end{align}
	$$

5. $\plog{ \abs{ 3 x - 1 } } = 2$.

	Tenemos dos casos:

	1. $3 x - 1 < 0$.

		$$
		x < \frac{ 1 }{ 3 }
		$$

		$$
		\begin{align}
			& \plog{ -3 x + 1 } = 2 \\
			& \plog{ -3 x + 1 } = \plog{ 10^2 } \\
			& -3 x + 1 = 100 \\
			& x = \frac{ 99 }{ -3 } = -33
		\end{align}
		$$

	2. $3 x - 1 \geq 0$.

		$$
			x \geq \frac{ 1 }{ 3 }
		$$

		$$
		\begin{align}
			& \plog{ 3 x - 1 } = 2 \\
			& \plog{ 3 x - 1 } = \plog{ 10^2 } \\
			& 3 x - 1 = 100 \\
			& x = \frac{ 101 }{ 3 }
		\end{align}
		$$

6. $\plog{ x^2 + 4 } - \plog{ x + 2 } = 3 + \plog{ x - 2 }$.

	$$
	x > 2
	$$

	$$
	\begin{align}
			& \plog{ \frac{ x^2 + 4 }{ x + 2 } } = \plog{ 10^3 } + \plog{ x - 2 } \\
			& \plog{ \frac{ x^2 + 4 }{ x + 2 } } = \plog{ 10^3 (x - 2) } \\
		& \frac{ x^2 + 4 }{ x + 2 } = 10^3 (x - 2) \\
		& x^2 + 4 = 10^3 (x^2 - 4) \\
		& x^2 = \frac{ 4006 }{ 999 } \\
		& x = \pm \sqrt{ \frac{ 4006 }{ 999 } } \\
		& x = \sqrt{ \frac{ 4006 }{ 999 } } \; \text{por la condición inicial}
	\end{align}
	$$

7. $x^\sqrt{ \plog{ x } } = 10^8$.

	$$
	x \geq 1
	$$

	$$
		\begin{align}
			& \plog[x]{ x^\sqrt{ \plog{ x } } } = \plog{ 10^8 } \\
			& \sqrt{ \plog{ x } } = 8 \plog[x]{ 10 } \\
			& \plog{ x } = 64 (\plog[x]{ 10 })^2 \\
			& \plog[x]{ 10 } = \frac{ \plog{ 10 } }{ \plog{ x } } \\
			& \plog{ x } = 64 \left (\frac{ \plog{ 10 } }{ \plog{ x } } \right)^2 \\
			& w = 64 \frac{ 1 }{ w^2 } \quad w = \plog{ x } \\
		& w^3 = 64 \\
		& w = 4 \\
			& \plog{ x } = 4 \\
		& x = 10^4
	\end{align}
	$$

## 11

Con cada una de las siguientes funciones

$$
\begin{align}
	& f_1(x) = 1 + e^{ -x } \\
	& f_2(x) = 3 + \plog[5]{ x + 4 }
\end{align}
$$

1. halle dominio y rango.

	1. $D_{ f_1 } \in \mathbb{ R }$.

	2. $R_{ f_1 }$.

		$$
		\begin{align}
			& e^{ -x } = y - 1 \\
			& -x = \pln{ y - 1 } \\
			& x = -\pln{ y - 1 } \\
			& y \in (1,\infty)
		\end{align}
		$$

	3. $D_{ f_2 } \in (-4,\infty)$.

	4. $R_{ f_2 }$.

		$$
		\begin{align}
			& \plog[5]{ x + 4 } = y - 3 \\
			& x + 4 = 5^{ y - 3 } \\
			& x = 5^{ y - 3 } - 4 \\
			& y \in (-\infty,\infty)
		\end{align}
		$$

2. Pruebe que es una función [[personal/math/functions/properties#Injectivity|inyectiva]].

	1. $f_1$.

		$$
		\begin{align}
			& 1 + e^{ -x_1 } = 1 + e^{ -x_2 } \\
			& e^{ -x_1 } = e^{ -x_2 } \\
			& -x_1 = -x_2 \\
			& x_1 = x_2
		\end{align}
		$$

	2. $f_1$.

		$$
		\begin{align}
			& 3 + \plog[5]{ x_1 + 4 } = 3 + \plog[5]{ x_2 + 4 } \\
			& \plog[5]{ x_1 + 4 } = \plog[5]{ x_2 + 4 } \\
			& x_1 + 4 = x_2 + 4 \\
			& x_1 = x_2
		\end{align}
		$$

## 12

En condiciones ideales, se sabe que una población de bacterias se duplica cada tres horas. Suponga que la población inicial es de 180 bacterias.

$$
B(t) = C e^{ k t }
$$

1. ¿Cuántas bacterias existen después de $t$ horas?

	$$
	\begin{align}
		& B(3) = 180 e^{ 3 k } = 360 \\
		& e^{ 3 k } = 2 \\
		& 3 k = \pln 2 \\
		& k = \frac{ \pln 2 }{ 3 } \\
		& B(t) = 180 e^{ \frac{ \pln 2 }{ 3 } t }
	\end{align}
	$$

2. ¿Cuántas bacterias existen después de 6 horas?

	$$
	\begin{align}
		& B(6) = 180 e^{ \frac{ \pln 2 }{ 3 } 6 } \\
		& = 180 e^{ 2 \pln 2 } \\
		& = 180 * 4 \\
		& = 720
	\end{align}
	$$

3. ¿Cuántas bacterias existen después de 40 minutos?

	$$
	40 \; \text{minutos} = \frac{ 2 }{ 3 } \; \text{horas}
	$$

	$$
	\begin{align}
		& B \left (\frac{ 2 }{ 3 } \right ) = 180 e^{ \frac{ \pln 2 }{ 3 } * \frac{ 2 }{ 3 } } \\
		& = 180 e^{ \frac{ 2 \pln 2 }{ 9 } } \\
		& = 180 * 2^\frac{ 2 }{ 9 } \\
	\end{align}
	$$

4. ¿Cuánto tiempo tarda en aumentar la población a $1,000$ bacterias?

	$$
	\begin{align}
		& B(t) = 180 e^{ \frac{ \pln 2 }{ 3 } t } = 1,000 \\
		& 18 e^{ \frac{ \pln 2 }{ 3 } t } = 100 \\
		& 18 * 2^\frac{ t }{ 3 } = 100 \\
		& 2^\frac{ t }{ 3 } = \frac{ 50 }{ 9 } \\
		& \frac{ t }{ 3 } = \plog[2]{ \frac{ 50 }{ 9 } } \\
		& t = \plog[2]{ \left ( \frac{ 50 }{ 9 } \right )^3 }
	\end{align}
	$$

## 13

Suponga que se invierten $\$100,000$ a un tipo de interés anual de $5\%$. Calcule el sado después de 8 años si el interés:

1. es simple.

	$$
	\begin{align}
		& 100,000 + \left ( 1 + \frac{ 5 }{ 100 } * 8 \right ) \\
		& = 100,000 + 5,000 * 8 \\
		& = \$140,000
	\end{align}
	$$

2. se capitaliza semestralmente.

	$$
	\begin{align}
		& 100,000 \left (1 + \frac{ 5\% }{ 2 } \right )^{ 2 * 8 } \\
		& = 100,000 \left (\frac{ 41 }{ 40 } \right )^{ 16 } \\
		& \approx \$148,450.56
	\end{align}
	$$

3. se capitaliza continuamente.

	$$
	\begin{align}
		& 100,000 e^{ \frac{ 5 }{ 100 } * 8 } \\
		& = 100,000 e^{ \frac{ 2 }{ 5 } } \\
		& \approx \$149,182.47
	\end{align}
	$$

## 14

La tasa de interés anual efectiva corresponde a una tasa anual compuesta una vez al año. La tasa nominal corresponde a una tasa de interés compuesta $k$ veces al año. Encuentre la tasa de interés anual efectiva equivalente a $6\%$ de tasa nominal de capitalización semestral.

$$
\begin{align}
	& C \left ( 1 + \frac{ x }{ 100 } \right ) = C \left ( 1 + \frac{ 6\% }{ 2 } \right )^2 \\
	& 1 + \frac{ x }{ 100 } = \left ( \frac{ 103 }{ 100 } \right )^2 \\
	& x = \left (\left ( \frac{ 103 }{ 100 } \right )^2 - 1 \right ) 100 \\
	& x = 6.09\%
\end{align}
$$
