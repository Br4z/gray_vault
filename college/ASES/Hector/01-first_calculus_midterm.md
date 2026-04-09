---
reviewed_on: "2025-03-16"
---

# First calculus midterm

1. Encuentre una función $f$ que cumpla con todas las siguientes condiciones:

	1. $\lim_{ x \to -3^- } f(x) = -1$, $\lim_{ x \to -3^+ } f(x) = 3$, $F$ es continua en todo el conjunto $\mathbb{ R } \setminus \{-3,6\}$. La discontinuidad en $x = 6$ es removible y $f$ es continua por la derecha en $x = -3$.

	2. Si $x < -3$, $f$ es constante.

		Recordando que $\lim_{ x \to -3^- } f(x) = -1$, la única función que cumple con lo pedido es $f(x) = -1$.

	3. Si $-3 < x < 3$, $f$ es una parábola que pasa por el punto $(3,-1)$.

		Recordando que $\lim_{ x \to -3^+ } f(x) = 3$, podríamos decir que la función pasa también pasa por el punto $(-3,3)$. Con dos puntos tendríamos el siguiente sistema:

		$$
		\begin{align}
			9 a + 3 b + c & = -1 \\
			9 a - 3 b + c & = 3
		\end{align}
		$$

		Por simplicidad, podemos decir que $c = 0$ porque solo necesitamos un sistema $2 \times 2$ para asegurar dos coordenadas.

		> Este paso es opcional, si no se hace, al final podías escoger una variable arbitraria.

		$$
		\begin{align}
			9 a + 3 b & = -1 \\
			9 a - 3 b & = 3
		\end{align}
		$$

	Sumando las ecuaciones, llegamos a

	$$
	\begin{align}
		18 a = 2 \\
		a = \frac{ 2 }{ 18 } = \frac{ 1 }{ 9 }
	\end{align}
	$$

	Reemplazando esta $a$ que acabamos en cualquiera de las ecuaciones, llegamos a

	$$
	\begin{align}
		3 b = -1 - 9 \left (\frac{ 1 }{ 9 } \right ) \\
		b = -\frac{ 2 }{ 3 }
	\end{align}
	$$

	La ecuación cuadrática quedaría

	$$
	f(x) = \frac{ 1 }{ 9 } x^2 - \frac{ 2 }{ 3 } x
	$$

	4. Si $3 < x < 6$, $f$ es una recta que tiene como pendiente $m = \frac{ 1 }{ 3 }$.

		Recordando que $f$ es continua por la derecha en $x = -3$, esta function tiene que "empezar en el punto que terminó la anterior", eso es, en el punto $(3,-1)$. Para hallar la función podemos hacer uso de la fórmula de la pendiente ($m = \frac{ y_2 - y_1 }{ x_2 - x_1 }$) o usar la forma explícita de una ecuación lineal ($y = m x + b$). Por facilidad vamos a usar la segunda.

		$$
		\begin{align}
			f(3) = \frac{ 1 }{ 3 } (3) + b = -1 \\
			b = -2
		\end{align}
		$$

		La ecuación lineal quedaría

		$$
		f(x) = \frac{ 1 }{ 3 } x - 2
		$$

	5. Si $x > 6$, $f$ es un parábola que tiene su vértice en el punto $(8,-1)$.

		Recordando que $f$ tiene una discontinuidad removible en $x = 6$, esto significa que $\lim_{ x \to 6^- } = \lim_{ x \to 6^+ }$. $\lim_{ x \to 6^- }$ corresponde a la función anterior evaluada en 6, es decir $f(6) = \frac{ 1 }{ 3 } (6) - 2 = 0$, es decir que la función que estamos hallando también debe pasar ese punto ($(6,0)$).

		Sabiendo que la forma canónica de una función cuadrática corresponde a

		$$
		f(x) = a (x - h)^2 + k
		$$

		donde $(h,k)$ es el vértice de la parábola.

		$$
		\begin{align}
			f(6) = a ((6) - 8)^2 - 1 = 0 \\
			a = \frac{ 1 }{ 4 }
		\end{align}
		$$

		La ecuación cuadrática quedaría

		$$
		f(x) = \frac{ 1 }{ 4 } (x - 8)^2 - 1
		$$

	La ecuación a trozos es:

	$$
	f(x) = \begin{cases}
			-1                                      & x < -3 \\
			\frac{ 1 }{ 9 } x^2 - \frac{ 2 }{ 3 } x & -3 < x < 3 \\
			\frac{ 1 }{ 3 } x - 2                   & 3 < x < 6 \\
			\frac{ 1 }{ 4 } (x - 8)^2 - 1           & x > 6
		\end{cases}
	$$

	```
	f(x) = If(x < -3, -1,
		If(-3 < x < 3, (1/9)x^2 - (2/3)x,
		If(3 < x < 6, (1/3)x - 2,
		If(x > 6, (1/4)(x - 8)^2 - 1))))
	```

	> Para la visualización, copia y pega esto en GeoGebra.