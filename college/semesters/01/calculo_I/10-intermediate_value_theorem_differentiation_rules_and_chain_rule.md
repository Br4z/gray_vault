---
reviewed_on: "2025-09-29"
---

# Intermediate value theorem, differentiation rules, and chain rule

## 1

1. Pruebe que la ecuación $x^7 - 3 x^4 = -3$ tiene solución en el intervalo $[-1,0]$.

	$$
	x^7 - 3 x^4 + 3 = 0
	$$

	$$
	\begin{align}
		& f(-1) = (-1)^7 - 3 (-1)^4 + 3 \\
		& = -1
	\end{align}
	$$

	$$
	\begin{align}
		& f(0) = (0)^7 - 3 (0)^4 + 3 \\
		& = 3
	\end{align}
	$$

	$$
	-1 \leq 0 \leq 3
	$$

	Se concluye que tiene solución.

2. Pruebe que la función $f(x) = x^4 + 2 x^3 - 8$ tiene un cero real.

	$$
	x^4 + 2 x^3 - 8 = 0
	$$

	$$
	\begin{align}
		& f(1) = (1)^4 + 2 (1)^3 - 8 \\
		& = -5
	\end{align}
	$$

	$$
	\begin{align}
		& f(2) = (2)^4 + 2 (2)^3 - 8 \\
		& = 8
	\end{align}
	$$

	$$
	-5 \leq 0 \leq 8
	$$

	Se concluye que la solución tiene **al menos** un cero real.

## 2

Sea $f$ una función continue en $[0,1]$, tal que $0 \leq f(x) \leq 1$. Muestre que existe $c \in [0,1]$ tal que $f(c) = c$.

$$
g(x) = f(x) - x
$$

Si se puede demostrar que existe un valor $c$ para el cual $g(c) = 0$, entonces habremos probado que $f(c) - c = 0$, lo que significa que $f(c) = c$.

Como $y = x$ es continua en $\mathbb{ R }$ y la diferencia de dos funciones continues también es continua, concluimos que $g(x)$ es continue en el intervalo $[0,1]$.

$$
\begin{align}
	& g(0) = f(0) - 0 \\
	& = f(0) \\
	& g(0) \geq 0
\end{align}
$$

$$
\begin{align}
	& g(1) = f(1) - 1 \\
	& g(1) \leq 0
\end{align}
$$

$$
g(0) \leq 0 \leq g(1)
$$

Como el número $0$ esta entre esos dos valores, debe existir al menos un número $c$ en el intervalo $[0,1]$ tal que:

$$
g(c) = 0 \implies f(c) - c = 0 \quad f(c) = c
$$

## 3

Halle $f^\prime$ si:

1. $f(x) = 5 x^5 - 2 x^3 + x - 1$.

	$$
	f^\prime(x) = 25 x^4 - 6 x^2 + 1
	$$

2. $f(x) = (3 x^4 + 2 x - 1) (-2 x^3 + 5)$.

	$$
	\begin{align}
		& f(x) = -6 x^7 + 15 x^4 - 4 x^4 + 10 x + 2 x^3 - 5 \\
		& = -6 x^7 + 11 x^4 + 2 x^3 + 10 x - 5
	\end{align}
	$$

	$$
	f^\prime(x) = -42 x^6 + 44 x^4 + 6 x^2 + 10
	$$

3. $f(x) = \frac{ 3 }{ x } + \frac{ 1 }{ x^3 }$.

	$$
	f(x) = 3 x^{ -1 } + x^{ -3 }
	$$

	$$
	f^\prime(x) = -3 x^{ -2 } - 3 x^{ -4 }
	$$

4. $f(x) = \frac{ x^4 + 2 }{ x - 1 }$.

	$$
	\begin{align}
		& f^\prime(x) = \frac{ (x^4 + 2)^\prime (x - 1) - (x^4 + 2) (x - 1)^\prime }{ (x - 1)^2 } \\
		& = \frac{ (4 x^3) (x - 1) - (x^4 + 2) (1)}{ (x - 1)^2 } \\
		& = \frac{ 4 x^4 - 4 x^3 - x^4 - 2 }{ (x - 1)^2 } \\
		& = \frac{ 3 x^4 - 4 x^3 - 2 }{ (x - 1)^2 }
	\end{align}
	$$

## 4

Sean $f(x) = x^2 + a x + b$ y $g(x) = x^3 - c$. Halle los valores de las constantes $a$, $b$ y $c$ para los cuales las gráficas de las funciones $f$ y $g$ se cortan en el punto $(1,2)$ y tienen la misma tangente en dicho punto.

$$
\begin{align}
	& f(1) = (1)^2 + a (1) + b = 1 + a + b = 2 \\
	& g(1) = (1)^3 - c = 1 - c = 2 \quad c = -1
\end{align}
$$

$$
\begin{align}
	& f^\prime(x) = 2 x + a \\
	& g^\prime(x) = 3 x^2
\end{align}
$$

$$
\begin{align}
	& f^\prime(1) = g^\prime(1) \\
	& 2 (1) + a = 3 (1)^2 \\
	& a = 1
\end{align}
$$

$$
\begin{align}
	& f(1) = 1 + a + b = 2 \\
	& b = 0
\end{align}
$$

$$
\begin{align}
	& f(x) = x^2 + x \\
	& g(x) = x^3 + 1
\end{align}
$$

## 5

Calcule la derivada de $f$ en el valor indicado, si existe.

1. $x = 1$ y $f(x) =
	\begin{cases}
		3 x^2 + 3 x + 4 & x \leq 1 \\
		7 x^2 - 5 x     & x > 1
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 1^- } f(x) = 3 (1)^2 + 3 (1) + 4 \\
		& = 3 + 3 + 4 \\
		& = 10
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 1^+ } f(x) = 7 (1)^2 - 5 (1) \\
		& = 7 - 5 \\
		& = 3
	\end{align}
	$$

	$$
	\lim_{ x \to 1^- } f(x) \neq \lim_{ x \to 1^+ } f(x)
	$$

	Se concluye que la función no es diferenciable en $x = 1$.

2. $x = 2$ y $f(x) =
	\begin{cases}
		2 x^2 - 5 x + 1 & x \leq 2 \\
		3 x^2 - 9 x + 5 & x > 2
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 2^- } f(x) = 2 (2)^2 - 5 (2) + 1 \\
		& = 8 - 10 + 1 \\
		& = -1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 2^+ } f(x) = 3 (2)^2 - 9 (2) + 5 \\
		& = 12 - 18 + 5 \\
		& = -1
	\end{align}
	$$

	$$
	\lim_{ x \to 2^- } f(x) = \lim_{ x \to 2^+ } f(x)
	$$

	$$
	f^\prime(x) =
		\begin{cases}
			4 x - 5 & x < 2 \\
			6 x - 9 & x > 2
		\end{cases}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 2^- } f^\prime(x) = 4 (2) - 5 \\
		& = 8 - 5 \\
		& = 3
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 2^+ } f^\prime(x) = 6 (2) - 9 \\
		& = 12 - 9 \\
		& = 3
	\end{align}
	$$

	$$
	\lim_{ x \to 2^- } f^\prime(x) = \lim_{ x \to 2^+ } f^\prime(x)
	$$

	Se concluye que la función es diferenciable en $x = 2$.

3. $x = 0$ y $f(x) =
	\begin{cases}
		\psin{ x } + 1 & x \leq 0 \\
		\pcos{ x } - 1 & x > 0
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 0^- } f(x) = \psin{ 0 } + 1 \\
		& = 1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 0^+ } f(x) = \pcos{ 0 } - 1 \\
		& = 0
	\end{align}
	$$

	$$
	\lim_{ x \to 0^- } f(x) \neq \lim_{ x \to 0^+ } f(x)
	$$

	Se concluye que la función no es diferenciable en $x = 0$.

## 6

Encuentre los valores de las constantes $a$ y $b$, para los cuales la función es derivable en el valor indicado.


1. $x = -1$ y $f(x) =
	\begin{cases}
		a x^2 + 3 x + 5 & x < -1 \\
		-b x + 1        & x \geq 1
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to -1^- } f(x) = a (-1)^2 + 3 (-1) + 5 \\
		& = a - 3 + 5 \\
		& = a + 2
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to -1^+ } f(x) = -b (-1) + 1 \\
		& = b + 1
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to -1^- } f(x) = \lim_{ x \to -1^+ } f(x) \\
		& a + 2 = b + 1 \\
		& a = b - 1
	\end{align}
	$$

	$$
	f^\prime(x) =
		\begin{cases}
			2 a x + 3  & x < -1 \\
			-b         & x > 1
		\end{cases}
	$$

	$$
	\begin{align}
		& \lim_{ x \to -1^- } f^\prime(x) = \lim_{ x \to -1^+ } f^\prime(x) \\
		& -2 a + 3 = -b \\
		& -2 (b - 1) + 3 = -b \\
		& b = 5
	\end{align}
	$$

	$$
	a = b - 1 = 4
	$$

	$$
	f(x) =
	\begin{cases}
		4 x^2 + 3 x + 5 & x < -1 \\
		-5 x + 1        & x \geq 1
	\end{cases}
	$$

2. $x = 3$ y $f(x) =
	\begin{cases}
		2 b x^2 - 8 a x + 34 & x \leq 3 \\
		\frac{ 4 }{ x - 2 }  & x > 3
	\end{cases}$.

	$$
	\begin{align}
		& \lim_{ x \to 3^- } f(x) = 2 b (3)^2 - 8 a (3) + 34 \\
		& = 18 b - 24 a + 34 \\
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 3^+ } f(x) = \frac{ 4 }{ 3 - 2 } \\
		& = 4
	\end{align}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 3^- } f(x) = \lim_{ x \to 3^+ } f(x) \\
		& 18 b - 24 a + 34 = 4 \\
		& 9 b - 12 a + 17 = 2 \\
		& b = \frac{ 12 a - 15 }{ 9 } \\
		& = \frac{ 4 a - 5 }{ 3 } \quad (1)
	\end{align}
	$$

	$$
	f\prime(x) =
		\begin{cases}
			4 b x - 8 a               & x < 3 \\
			-\frac{ 4 }{ (x - 2)^2 }  & x > 3
		\end{cases}
	$$

	$$
	\begin{align}
		& \lim_{ x \to 3^- } f^\prime(x) = \lim_{ x \to 3^+ } f^\prime(x) \\
		& 4 b (3) - 8 a = -\frac{ 4 }{ ((3) - 2)^2 } \\
		& 12 b - 8 a = -4 \\
		& b = \frac{ 8 a - 4 }{ 12 } \\
		& b = \frac{ 2 a - 1 }{ 3 } \quad (2)
	\end{align}
	$$

	Igualando $(1)$ y $(2)$:

	$$
	\begin{align}
		& \frac{ 4 a - 5 }{ 3 } = \frac{ 2 a - 1 }{ 3 } \\
		& 12 a - 15 = 6 a - 3 \\
		& a = \frac{ 12 }{ 6 } \\
		& = 2
	\end{align}
	$$

	$$
	\begin{align}
		& b = \frac{ 2 (2) - 1 }{ 3 } \\
		& b = 1
	\end{align}
	$$

	$$
	f(x) =
		\begin{cases}
			2 x^2 - 16 x + 34 & x \leq 3 \\
			\frac{ 4 }{ x - 2 }  & x > 3
		\end{cases}
	$$

## 7

Halle $\frac{ dy }{ dx }$ si:

1. $y = 2 (x^3 + 2 x - 1)^{ 10 }$.

	$$
	\begin{align}
		& 2 \pprime{ (x^3 + 2 x - 1)^{ 10 } } \\
		& = 2 \left (10 (x^3 + 2 x - 1)^9 (x^3 + 2 x - 1)^\prime \right ) \\
		& = 20 (x^3 + 2 x - 1)^9 (3 x^2 + 2)
	\end{align}
	$$

2. $y = \sqrt{ x^4 - 3 x^2 + x }$.

	$$
	\begin{align}
		& \frac{ 1 }{ 2 \sqrt{ x^4 - 3 x^2 + x } } (x^4 - 3 x^2 + x)^\prime \\
		& = \frac{ 4 x^3 - 6 x + 1 }{ 2 \sqrt{ x^4 - 3 x^2 + x } }
	\end{align}
	$$

3. $y = (3 x^4 - x)^3 (2 x + 1)^5$.

	$$
	\begin{align}
		& \pprime{ (3 x^4 - x)^3 } (2 x + 1)^5 + (3 x^4 - x)^3 \pprime{ (2 x + 1)^5 } \\
		& = (x^4 - x)^2 (36 x^3 - 3) (2 x + 1)^5 + 10 (3 x^4 - x)^3 (2 x + 1)^4
	\end{align}
	$$

4. $y = \frac{ 1 }{ x^5 } + \frac{ x + 1 }{ \sqrt{ 2 x } }$.

	$$
	\begin{align}
		& -\frac{ 5 }{ x^6 } + \frac{ (x + 1)^\prime \sqrt{ 2 x } - (x + 1) (\sqrt{ 2 x })^\prime }{ 2 x } \\
		& = -\frac{ 5 }{ x^6 } + \frac{ \sqrt{ 2 x } - \frac{ x + 1 }{ \sqrt{ 2 x } } }{ 2 x } \\
		= -\frac{ 5 }{ x^6 } + \frac{ x - 1 }{ 2 x \sqrt{ 2 x } }
	\end{align}
	$$

5. $y = \frac{ (3 x - 1)^2 }{ \ptan{ x }^2 }$.

	$$
	\begin{align}
		& \frac{ \pprime{ (3 x - 1)^2 } \ptan{ x }^2 - (3 x - 1)^2 \ptan{ x }^\prime }{ \ptan{ x }^4 } \\
		& = \frac{ (18 x - 6) \ptan{ x }^2 - 2 (3 x - 1)^2 \ptan{ x } \psec{ x }^2 }{ \ptan{ x }^4 }
	\end{align}
	$$

6. $y = x \sqrt{ (x^2 - 3)^3 }$.

	$$
	\begin{align}
		& x^\prime \sqrt{ (x^2 - 3)^3 } + x \pprime{ \sqrt{ (x^2 - 3)^3 } } \\
		& = \sqrt{ (x^2 - 3)^3 } + \frac{ 3 x^4 - 9 x^2 }{ \sqrt{ (x^2 - 3)^3 } }
	\end{align}
	$$

7. $y = \psin{ 5 x - 2 }^3$.

	$$
	\begin{align}
		& 3 \psin{ 5 x - 2 }^2 (\psin{ 5 x - 2 })^\prime \\
		& = 3 \psin{ 5 x - 2 }^2 \pcos{ 5 x - 2 } (5 x - 2)^\prime \\
		& = 15 \psin{ 5 x - 2 }^2 \pcos{ 5 x - 2  }
	\end{align}
	$$

8. $y = \psec{ 1 - 2 x }^2$.

	$$
	\begin{align}
		& 2 \psec{ 1 - 2 x } (\psec{ 1 - 2 x })^\prime \\
		& = 2 \psec{ 1 - 2 x } \psec{ 1 - 2 x } \ptan{ 1 - 2 x } (1 - 2 x)^\prime \\
		& = -4 \psec{ 1 - 2 x }^2 \ptan{ 1 - 2 x } \\
		& = \frac{ -4 \psin{ 1 - 2 x } }{ \pcos{ 1 - 2 x }^3 }
	\end{align}
	$$

## 8

Sea $y = u^{ 15 } - 2 u$ y $u = x^3 - 2$. Halle $\frac{ dy }{ dx }$ en $x = 1$.

$$
\frac{ dy }{ dx } = \frac{ dy }{ du } * \frac{ du }{ dx }
$$

$$
\begin{align}
	& \frac{ dy }{ dx } = (15 u^{ 14 } - 2) (3 x^2) \\
	& (15 (-1)^{ 14 } - 2) (3) \quad x = 1 \quad u(1) = -1 \\
	& = 39
\end{align}
$$

## 9

Sea $g$ una función derivable. Halle $f^\prime(x)$ si:

1. $f(x) = x g^2(x^3 - 1)$.

	$$
	\begin{align}
		& x^\prime g^2(x^3 - 1) + x (g^2(x^3 - 1))^\prime \\
		& = g^2(x^3 - 1) + 6 x^2 g(x^3 - 1) g^\prime(x^3 - 1)
	\end{align}
	$$

2. $f(x) = \sqrt{ 1 + g(2 x) }$.

	$$
	\begin{align}
		& \frac{ 1 }{ 2 \sqrt{ 1 + g(2 x) } } (1 + g(2 x))^\prime \\
		& = \frac{ 2 g^\prime(2 x) }{ 2 \sqrt{ 1 + g(2 x) } } \\
		& = \frac{ g^\prime(2 x) }{ \sqrt{ 1 + g(2 x) } }
	\end{align}
	$$

## 10

Si $f$ y $g$ son funciones diferenciables tales que $f(t) = (g^2(-t) - 3 t)^4$, $g(-1) = \sqrt{ 2 }$ y $g^\prime(-1) = -\sqrt{ 2 }$. Calcule $f^\prime(1)$.

$$
\begin{align}
	& f^\prime(t) = 4 (g^2(-t) - 3 t)^3 (-2 g(-t) g^\prime(-t) - 3) \\
	& f^\prime(1) = 4 (g^2(-1) - 3)^3 (-2 g(-1) g^\prime(-1) - 3) \\
	& = 4 (-1) (1) \\
	& = 4
\end{align}
$$

## 11

Encuentre los puntos sobre la gráfica de $f(x) = \sqrt{ 2 x + 4 }$, donde la recta tangente es paralela a la recta $x - 4 y - 3 = 0$.

$$
y = \frac{ 1 }{ 4 } x - \frac{ 3 }{ 4 } \quad m = \frac{ 1 }{ 4 }
$$

$$
\begin{align}
	& f^\prime(x) = \frac{ x }{ \sqrt{ 2 x + 4 } } \\
	& \frac{ 1 }{ \sqrt{ 2 x + 4 } } = \frac{ 1 }{ 4 } \\
	& 4 = \sqrt{ 2 x + 4 } \\
	& 2 x + 4 = 16 \\
	& x = 6
\end{align}
$$

$$
\begin{align}
	& f(6) = \sqrt{ 2 (6) + 4 } \\
	& = \sqrt{ 16 } \\
	& = 4
\end{align}
$$

$$
P(6,4)
$$

## 12

Pruebe que la derivada de una función par es impar y que la derivada de una función impar es par.

Sea $f(x)$ una función par. Por definición, esto significa que:

$$
f(-x) = f(x)
$$

$$
\begin{align}
	& f(-x)^\prime = f(x)^\prime \\
	& -f^\prime(-x) = f(x)^\prime \\
	& f^\prime(-x) = -f(x)^\prime
\end{align}
$$

Sea $h(x)$ una función impar. Por definición, esto significa que:

$$
g(-x) = -g(x)
$$

$$
\begin{align}
	& g(-x)^\prime = -g(x)^\prime \\
	& -g^\prime(-x) = -g(x)^\prime \\
	& g^\prime(-x) = g(x)^\prime
\end{align}
$$
