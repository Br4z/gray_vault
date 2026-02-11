---
reviewed_on: "2025-08-31"
---

# Limits

## 1

Dada la gráfica de la función $f$, calcule los siguientes limites:

![graph](college/semesters/01/assets/calculo_I/2_08_01-graph.jpg)

1. $\lim_{ x \to -4^+ } f(x) = -7$.

2. $\lim_{ x \to 0^- } f(x) = 10$.

3. $\lim_{ x \to 0^+ } f(x) = -5$.

4. $\lim_{ x \to 6^+ } f(x) = -8$.

5. $\lim_{ x \to 7^- } f(x) = 8$.

6. $\lim_{ x \to 7 } f(x)$ no existe.

7. $\lim_{ x \to 0 } f(x)$ no existe.

8. $\lim_{ x \to 1.5 } f(x) = 2$.

9. $\lim_{ x \to 3 } f(x) = 5$.

## 2

Calcule los siguientes limites si existen:

1. $\lim_{ x \to 1 } \frac{ 3 x^5 - x^2 + 7 x }{ x^3 + 1 }$.

	$$
	\begin{align}
		& \frac{ 3 - 1 + 7 }{ 1 + 1 } \\
		& = \frac{ 9 }{ 2 }
	\end{align}
	$$

2. $\lim_{ x \to -1 } \frac{ x^6 - 1 }{ x + 1 }$.

	$$
	\begin{align}
		& = \frac{ (x^3 + 1) (x^3 - 1) }{ x + 1 } \\
		& = \frac{ \cancel{ (x + 1) } (x - x + 1) (x^3 - 1) }{ \cancel{ x + 1 } } \\
		& = (x - x + 1) (x^3 - 1) \\
		& = (3) (-2) \\
		& = -6
	\end{align}
	$$

3. $\lim_{ h \to 0 } = \frac{ (3 + h)^{ -1 } - 3^{ -1 } }{ h }$.

	$$
	\begin{align}
		& = \frac{ \frac{ 1 }{ 3 + h } - \frac{ 1 }{ 3 } }{ h } \\
		& = \frac{ \frac{ 3 - (3 + h) }{ 3 (3 + h) } }{ h } \\
		& = \frac{ h }{ h (9 + 3 h) } \\
		& = \frac{ 1 }{ 9 + 3 h } \\
		& = \frac{ 1 }{ 9 + 3 (0) } = \frac{ 1 }{  9 }
	\end{align}
	$$

4. $\lim_{ t \to 1 } \frac{ \sqrt[3]{ t } - 1 }{ \sqrt{ t } - 1 }$.

	$$
	\begin{align}
		& = \frac{ \sqrt[3]{ t } - 1 }{ \sqrt{ t } - 1 } * \frac{ \sqrt{ t } + 1 }{ \sqrt{ t } + 1 } \\
		& = \frac{ (\sqrt[3]{ t } - 1) (\sqrt{ t } - 1) }{ \sqrt{ t }^2 - 1^2 } \\
		& = \frac{ (\sqrt[3]{ t } - 1) (\sqrt{ t } - 1) }{ t - 1 } \\
		& = \frac{ (\sqrt[3]{ t } - 1) (\sqrt{ t } - 1) }{ \sqrt[3]{ t }^3 - 1^3 } \\
		& = \frac{ \cancel{ (\sqrt[3]{ t } - 1) } (\sqrt{ t } - 1) }{ \cancel{ (\sqrt[3]{ t } - 1) } (\sqrt[3]{ t }^2 + \sqrt[3]{ t } + 1) } \\
		& = \frac{ \sqrt{ t } - 1 }{ \sqrt[3]{ t }^2 + \sqrt[3]{ t } + 1 } \\
		& = \frac{ 1 + 1 }{ 1 + 1 + 1 } \\
		& = \frac{ 2 }{ 3 }
	\end{align}
	$$

5. $\lim_{ x \to 2 } \frac{ 6 - 3 x }{ x^2 - 4 }$.

	$$
	\begin{align}
		& = \frac{ -3 \cancel{ (x - 2) } }{ (x + 2) \cancel{ (x - 2) } } \\
		& = \frac{ -3 }{ x + 2 } \\
		& = \frac{ -3 }{ 2 + 2 } \\
		& = -\frac{ 3 }{ 4 }
	\end{align}
	$$

6. $\lim_{ x \to 1 } \frac{ \sqrt{ 10 - x } - 3 }{ \sqrt{ 2 - x } - 1 }$.

	$$
	\begin{align}
		& = \frac{ \sqrt{ 10 - x } - 3 }{  \sqrt{ 2 - x } - 1 } * \frac{ \sqrt{ 2 - x } + 1 }{ \sqrt{ 2 - x } + 1 } \\
		& = \frac{ (\sqrt{ 10 - x } - 3) (\sqrt{ 2 - x } + 1) }{  2 - x - 1 } \\
		& = \frac{ (\sqrt{ 10 - x } - 3) (\sqrt{ 2 - x } + 1) }{  2 - x - 1 } * \frac{ \sqrt{ 10 - x } + 3 }{ \sqrt{ 10 - x } + 3 } \\
		& = \frac{ (\sqrt{ 10 - x }^2 - 3^2) (\sqrt{ 2 - x } + 1) }{ (1 - x) (\sqrt{ 10 - x } + 3) } \\
		& = \frac{ \cancel{ (10 - x - 9) } (\sqrt{ 2 - x } + 1) }{ \cancel{ (1 - x) } (\sqrt{ 10 - x } + 3) } \\
		& = \frac{ \sqrt{ 2 - x } + 1 }{ \sqrt{ 10 - x } + 3 } \\
		& = \frac{ \sqrt{ 2 - 1 } + 1 }{ \sqrt{ 10 - 1 } + 3 } \\
		& = \frac{ 2 }{ 6 } \\
		& = \frac{ 1 }{ 3 }
	\end{align}
	$$

7. $\lim_{ x \to -3^- } \frac{ x }{ \sqrt{ x^2 - 9 } }$.

	$$
	\begin{align}
		& = \frac{ x }{ \sqrt{ x^2 - 9 } } * \frac{ \sqrt{ x^2 - 9 } }{ \sqrt{ x^2 - 9 } } \\
		& = \frac{ x\sqrt{ x^2 - 9 } }{ x^2 - 9 } \\
		& = \frac{ \text{valores negativos muy pequeños} }{ \text{valores positivos muy pequeños} } \\
		& = -\infty
	\end{align}
	$$

8. $\lim_{ x \to 4^- } \frac{ \sqrt{ x } - 2 }{ x - 4 }$.

	$$
	\begin{align}
		& = \frac{ \cancel{ \sqrt{ x } - 2 } }{ (\sqrt{ x } + 2) \cancel{ (\sqrt{ x } - 2) } } \\
		& = \frac{ 1 }{ \sqrt{ x } + 2 } \\
		& = \frac{ 1 }{ 2 + 2 } \\
		& = \frac{ 1 }{ 4 }
	\end{align}
	$$

9. $\lim_{ x \to 0 } \frac{ \abs{ x + 2 } - \abs{ x - 2 } }{ x }$.

	$$
	\begin{align}
		& \lim_{ x \to 0^- } \frac{ x + 2 - (-x + 2) }{ x } \\
		& = \frac{ 2 x }{ x } = 2
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 0^+ } \frac{ x + 2 - (-x + 2) }{ x } \\
		& = \frac{ 2 x }{ x } \\
		& = 2
	\end{align}
	$$

	$$
	\lim_{ x \to 0^- } \frac{ \abs{ x + 2 } - \abs{ x - 2 } }{ x } = \lim_{ x \to 0^+ } \frac{ \abs{ x + 2 } - \abs{ x - 2 } }{ x } = 2
	$$

10. $\lim_{ x \to 6^- } \frac{ x - 6 }{ \sqrt{ (x - 6)^2 } }$.

	$$
	\begin{align}
		& = \frac{ x - 6 }{ \abs{ x - 6 } } \\
		& = -\frac{ x - 6  }{ x - 6 } \\
		& = -1
	\end{align}
	$$

11. $\lim_{ x \to 0 }{ \frac{ 1 }{ x } - \frac{ 1 }{ \abs{ x } } }$.

	$$
	\begin{align}
		& \lim_{ x \to 0^- }{ \frac{ 1 }{ x } - \frac{ 1 }{ -x } } \\
		& = \frac{ 2 }{ x } \\
		& = -\infty
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 0^+ }{ \frac{ 1 }{ x } - \frac{ 1 }{ x } } \\
		& = 0
	\end{align}
	$$

	$$
	\lim_{ x \to 0^- }{ \frac{ 1 }{ x } - \frac{ 1 }{ \abs{ x } } } \neq \lim_{ x \to 0^+ }{ \frac{ 1 }{ x } - \frac{ 1 }{ \abs{ x } } }
	$$

12. $\lim_{ x \to -\infty }{ \frac{ 1 }{ x } \sqrt{ 4 x^2 + 1 }}$.

	$$
	\begin{align}
		& = \left (-\frac{ 1 }{ \sqrt{ x^2 } } \right ) \sqrt{ 4 x^2 + 1 } \\
		& = -\sqrt{ \frac{ 4 x^2 + 1 }{ x^2 } } \\
		& = -\sqrt{ 4 + \frac{ 1 }{ x^2 } } \\
		& = -\sqrt{ 4 + 0 } \\
		& = -2
	\end{align}
	$$

13. $\lim_{ x \to \infty }{ \sqrt{ x } - \sqrt{ x + 1 } }$.

	$$
	\begin{align}
		& = \sqrt{ x } - \sqrt{ x + 1 } * \frac{ \sqrt{ x } + \sqrt{ x + 1 } }{ \sqrt{ x } + \sqrt{ x + 1 } } \\
		& = \frac{ \sqrt{ x }^2 - \sqrt{ x + 1 }^2 }{ \sqrt{ x } + \sqrt{ x + 1 } } \\
		& = \frac{ x - (x + 1) }{ \sqrt{ x } + \sqrt{ x + 1 } } \\
		& =  -\frac{ 1 }{ \sqrt{ x } + \sqrt{ x + 1 } } \\
		& = -\frac{ \lim_{ x \to \infty } 1 }{ \lim_{ x \to \infty }{ \sqrt{ x } + \sqrt{ x + 1 } } } \\
		& = -\frac{ 1 }{ \infty } = 0
	\end{align}
	$$

## 3

Sea $x$ un número real. Recuerde que la función "parte entera" de $x$, denotada por $[|x|]$, se define como el mayor entero menor o igual a $x$.

1. Si $n$ es un número entero, calcule $\lim_{ x \to n^- } [|x|]$ y $\lim_{ x \to n^+ } [|x|]$.

	$$
	\begin{align}
		& \lim_{ x \to n^- } [|x|] = n - 1 \\
		& \lim_{ x \to n^+ } [|x|] = n
	\end{align}
	$$

2. Para que valores de $a$ existe $\lim_{ x \to a } [|x|]$.

	$$
	[|a|] < a
	$$

	Es decir, cualquier valor que no sea **entero**.

3. Calcule $\lim_{ x \to 2 }{ [|x|] + [|-x|] }$.

	$$
	\begin{align}
		& \lim_{ x \to 2^- }{ [|x|] + [|-x|] } \\
		& = 1 + (-2) \\
		& = -1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 2^+ }{ [|x|] + [|-x|] } \\
		& = 2 + (-3) \\
		& = -1
	\end{align}
	$$

	$$
	\lim_{ x \to 2^- }{ [|x|] + [|-x|] } = \lim_{ x \to 2^+ }{ [|x|] + [|-x|] } = -1
	$$

## 4

Calcule $\lim_{ x \to a } f(x)$, si:

1. $a = 0$ y $f(x) =
	\begin{cases}
		\frac{ x }{ x - 1 } & x < 0 \\
		x + 2               & x > 0 
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 0^- } f(x) \\
		& = \frac{ 0 }{ -1 } \\
		& = 0
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 0^+ } f(x) \\
		& = 0 + 2 \\
		& = 2
	\end{align}
	$$

	$$
	\lim_{ x \to 0^- } f(x) \neq \lim_{ x \to 0^+ } f(x) 
	$$

2. $a = -3$ y $f(x) =
	\begin{cases}
		\frac{ x^2 - 9 }{ x + 3 } & x < -3 \\
		4 x + 6                   & x \geq -3 
	\end{cases}$.

	$$
	f(x) =
		\begin{cases}
			x - 3   & x < -3 \\
			4 x + 6 & x \geq -3 
		\end{cases}
	$$

	$$
	\begin{align}
		& \lim_{ x \to -3^- } f(x) \\
		& = (-3) - 3 \\
		& = -6
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to -3^+ } f(x) \\
		& = 4 (-3) + 6 \\
		& = 6
	\end{align}
	$$

	$$
	\lim_{ x \to 0^- } f(x) \neq \lim_{ x \to 0^+ } f(x) 
	$$

## 5

Encuentre el valor de la contante $k$, para que el $\lim_{ x \to a } f(x)$ exista.


1. $a = 1$ y $f(x) =
	\begin{cases}
		\abs{ x - 2 } & x < 1 \\
		k x^2 + 4     & x \geq 1
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 1^- } f(x) \\
		& = \abs{ 1 - 2 } \\
		& = 1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 1^+ } f(x) \\
		& = k (1)^2 + 4 \\
		& = k + 4
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 1^- } f(x) = \lim_{ x \to 1^+ } f(x) \\
		& k + 4 = 1 \\
		& k = -3
	\end{align}
	$$

	$$
	f(x) =
		\begin{cases}
			\abs{ x - 2 } & x < 1 \\
			-3 x^2 + 4    & x \geq 1
		\end{cases}
	$$

2. $a = 3$ y $f(x) =
	\begin{cases}
		x^2 - 2 x + 2 k      & x \leq 3 \\
		\frac{ k^2 }{ 4 - x } & x > 3, x \neq 4
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 3^- } f(x) \\
		& = (3)^2 - 2 (3) + 2 k \\
		& = 9 - 6 + 2 k \\
		& = 2 k + 3
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 3^+ } f(x) \\
		& = \frac{ k^2 }{ 4 - 3 } \\
		& = k^2
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 3^- } f(x) = \lim_{ x \to 3^+ } f(x) \\
		& 2 k + 3 = k^2 \\
		& k^2 - 2 k - 3 = 0 \\
		& (k - 3) (k + 1) = 0 \\
		& k_1 = 3 \quad k_2 = -1
	\end{align}
	$$

	$$
	f(x) =
		\begin{cases}
			x^2 - 2 x + 6        & x \leq 3 \\
			\frac{ k^2 }{ 4 - x } & x > 3, x \neq 4
		\end{cases}
	$$

	o

	$$
	f(x) =
		\begin{cases}
			x^2 - 2 x - 2        & x \leq 3 \\
			\frac{ k^2 }{ 4 - x } & x > 3, x \neq 4
		\end{cases}
	$$

## 6

Halle la ecuación de la recta tangente a la curva $y = \frac{ 1 }{ x } - 1$ en $x = 2$.

Usando la definición de [[personal/math/derivates/definition|derivada]].

$$
\begin{align}
	& \lim_{ h \to 0 } \frac{ \left (\frac{ 1 }{ x + h } - 1 \right ) - \left (\frac{ 1 }{ x } - 1 \right ) }{ h } \\
	& = \frac{ \left (\frac{ 1 - (x + h) }{ x + h } \right ) - \left (\frac{ 1 - x }{ x } \right ) }{ h } \\
	& = \frac{ -\frac{ h }{ x (x + h) } }{ h } \\
	& = -\frac{ h }{ h (x^2 + h x) } \\
	& = \frac{ 1 }{ x^2 + h x } \\
	& = \frac{ 1 }{ x^2 }
\end{align}
$$

La pendiente de la recta tangente en $x = 2$ es $m = \frac{ 1 }{ 2^2 } = \frac{ 1 }{ 4 }$.

$$
\begin{align}
	& y = \frac{ 1 }{ 2 } - 1 \\
	& y = -\frac{ 1 }{ 2 } \\
	& (2 - x) \frac{ 1 }{ 4 } = y - \left ( -\frac{ 1 }{ 2 } \right) \\
	& y = -\frac{ x }{ 4 }
\end{align}
$$

## 7

Sea $f(x) = x^3 - x + 5$.

1. Muestre que $f^\prime(x) = 3 x^2 - 1$.

	$$
	\begin{align}
		& \lim_{ h \to 0 } \frac{ ((x + h)^3 - (x + h) + 5) - (x^3 - x + 5) }{ h } \\
		& = \frac{ x^3 + 3 x^2 h + 3 x h^2 + h^3 - x - h + 5 }{ h } \\
		& = \frac{ 3 x^2 h + 3 x h^2 + h^3 - h }{ h } \\
		& = \frac{ h (3 x^2 + 3 x h + h^2 - 1) }{ h } \\
		& = 3 x^2 + 3 x h + h^2 - 1 \\
		& = 3 x^2 - 1
	\end{align}
	$$

2. Halle la ecuación de la recta tangente a la gráfica de $f$ en $x = -1$.

	$$
	\begin{align}
		& f(-1) = (-1)^3 - (-1) + 5 \\
		& = 5 
	\end{align}
	$$

	$$
	\begin{align}
		& f^\prime(-1) = 3 (-1)^2 - 1 \\
		& = 2
	\end{align}
	$$

	$$
	\begin{align}
		& (x - (-1)) 2 = y - 5 \\
		& y = 2 x + 7
	\end{align}
	$$

3. Encuentre los puntos sobre la gráfica de $f$, donde la recta tangente es horizontal.

	$$
	\begin{align}
		& 3 x^2 - 1 = 0 \\
		& x = \pm \sqrt{ \frac{ 1 }{ 3 } } 
	\end{align}
	$$

4. Encuentre los puntos sobre la gráfica de $f$, donde la recta tangente es perpendicular a la recta $x + 5 y - 10 = 0$.

	$$
	\begin{align}
		& y = \frac{ -x + 10 }{ 5 } \\
		& y = -\frac{ 1 }{ 5 } x + 2 \\
		& m = -\frac{ 1 }{ 5 }
	\end{align}
	$$

	$$
	\begin{align}
		& (3 x^2 - 1) \left (-\frac{ 1 }{ 5 } \right ) = -1 \\
		& -\frac{ 3 x^2 }{ 5 } + \frac{ 1 }{ 5 } = -1 \\
		& -\frac{ 3 x^2 }{ 5 } = -1 - \frac{ 1 }{ 5 } \\
		& -3 x^2 = -6 \\
		& x = \pm \sqrt{ 2 }
	\end{align}
	$$

	Hay dos puntos.

## 8

Halle:

1. $f^\prime(x)$ si $f(x) = a x^2 + b x + c$, con $a,b,c \in \mathbb{ R }$.

	$$
	\begin{align}
		& \lim_{ h \to 0 } \frac{ (a (x + h)^2 + b (x + h) + c) - (a x^2 + b x + c) }{ h } \\
		& = \frac{ (a x^2 + 2 a x h + a h^2 + b x + b h + c) - (a x^2 + b x + c) }{ h } \\
		& = \frac{ 2 a x h + a h^2 + b h }{ h } \\
		& = \frac{ h (2 a x + a h + b) }{ h } \\
		& = 2 x a + a h + b \\
		& = 2 a x + b
	\end{align}
	$$

2. $f^\prime(a)$, con $a > 0$, si $f(x) = \sqrt{ x }$.

	$$
	\begin{align}
		& \lim_{ h \to 0 } \frac{ (\sqrt{ x + h }) - (\sqrt{ x }) }{ h } \\
		& = \frac{ (\sqrt{ x + h }) - (\sqrt{ x }) }{ h } \frac{ \sqrt{ x + h } + \sqrt{ x } }{ \sqrt{ x + h } + \sqrt{ x } } \\
		& = \frac{ (\sqrt{ x + h })^2 - (\sqrt{ x })^2 }{ h (\sqrt{ x + h } + \sqrt{ x }) } \\
		& = \frac{ (x + h) - (x) }{ h (\sqrt{ x + h } + \sqrt{ x }) } \\
		& = \frac{ 1 }{ \sqrt{ x + h } + \sqrt{ x  } } \\
		& = \frac{ 1 }{ 2 \sqrt{ x } }
	\end{align}
	$$
