---
reviewed_on: "2025-02-08"
---

# Splines

Son funciones que nos ayudan a representar una curva suave a través de una serie de puntos conocidos (llamados **puntos de control** o **nodos**).

El objetivo de los splines es lograr una interpolación (o aproximación) precisa y continua entre los **nodos**. Esto se hace de forma que la transición entre los puntos sea lo más suave posible, reduciendo cambios bruscos que pueden ser poco naturales o no deseados.

Comenzamos limitando nuestra discusión a los polinomios en una variable. En este caso, un **spline** es una función polinómica a base de piezas. Esta función, llámalo $S$, toma valores de un intervalo $[a,b]$ y los mapea a $\mathbb{ R }$, el conjunto de números reales ($S : [a,b] \rightarrow \mathbb{ R }$).

Queremos que $S$ se defina por partes. Para lograr esto, deje que el intervalo $[a,b]$ esté cubierto por $k$ subintervalos ordenados y adyacentes,

$$
[t_i,t_{ i + 1 }] \quad i = 0,\dots,k - 1
$$

donde:

$$
a = t_0 < t_1 < \cdots < t_{ k - 1 } < t_k = b
$$

Los puntos $t_i$ se llaman **nodos** o **nudos** del spline. El vector $\mathbf{t} = (t_0,\dots,t_k)$ se llama **vector de nodos**. Si los nodos se distribuyen equitativamente en el intervalo $[a,b]$, decimos que el spline es **uniforme**; de lo contrario, decimos que **no** es uniforme.

$$
\begin{align}
	& [a,b] = [t_0,t_1) \cup [t_1,t_2) \cup \cdots \cup [t_{ k - 2 },t_{ k - 1 }) \cup [t_{ k - 1 },t_k] \\
	& = \bigcup_{ i = 0 }^{ k - 1 } [t_i, t_{ i + 1 }]
\end{align}
$$

En cada uno de estos intervalos $k$, queremos definir un polinomio, llamémoslo $P_i$, $P_i : [t_i,t_{ i + 1 }] \rightarrow \mathbb{ R }$.

$$
S(t) =
	\begin{cases}
		P_0(t)         & t_0 \leq t \leq t_1 \\
		P_1(t)         & t_1 \leq t \leq t_2 \\
		\vdots         & \vdots \\
		P_{ k - 1 }(t) & t_{ k - 1 } \leq t \leq t_k
	\end{cases}
$$

Para que $S(t)$ sea un spline de grado $n$, se requiere que:

1. En cada subintervalo $[t_i, t_{ i + 1 }]$, $S(t)$ es un polinomio de grado a lo más $n$.

2. $S(t)$ y sus primeras $n - 1$ derivadas sean continuas en todo el intervalo $[a, b]$. Es decir, $S(t) \in C^{ n - 1 }[a, b]$.

## Tipos

Existen varios tipos de splines, y cada uno tiene su propio grado de continuidad y suavidad entre los puntos. Aquí vamos a centrarnos en tres grados básicos:

1. Cero (escalonado): es el spline más sencillo y conecta los puntos sin suavidad; es decir, simplemente une cada punto con líneas planas o constantes.

	> Funciones constantes por tramos, discontinuas en los nodos.

2. Primer (lineal): Conecta los puntos con segmentos de línea recta. Aunque es más suave que el spline de grado cero, su continuidad es solo en valor, sin suavidad en la pendiente (no es diferenciado).

	> Funciones lineales por tramos, continuas en los nodos pero con derivadas discontinuas.

3. Segundo (cuadrático): conecta los puntos con curvas suaves que son continuas en valor y en pendiente, logrando un ajuste más preciso y visualmente más agradable.

	> Funciones cuadráticas por tramos, continuas en los nodos con derivadas primeras continuas, pero derivadas segundas discontinuas.

4. Tercer (cúbico): Conecta los puntos con polinomios cúbicos, proporcionando una mayor suavidad al garantizar la continuidad de la función y sus dos primeras derivadas en los nodos.

	> Funciones cúbicas por tramos, continuas en los nodos con derivadas primeras y segundas continuas, pero derivadas terceras discontinuas.

### Grado cero (escalonado)

$$
S(x) =
	\begin{cases}
		S_0(x) = C_0                 & x \in [t_0, t_1) \\
		S_1(x) = C_1                 & x \in [t_1, t_2) \\
		\vdots                       & \vdots \\
		S_{ k - 1 }(x) = C_{ k - 1 } & x \in [t_{ k - 1 }, t_k]
	\end{cases}
$$

Las características del spline de grado cero son:

5. $S$ es una función constante por partes.

6. Discontinua en los nodos $t_i$.

7. No tiene derivadas definidas en los nodos.

#### Número total de ecuaciones (grado cero)

8. Interpolación en los nodos ($2 k$ ecuaciones):

	1. $S_i(t_i) = y_i$ (para $i = 0,1,\dots,k - 1$).

	2. $S_i(t_{ i + 1 }) = y_{ i + 1 }$ (para $i = 0,1,\dots,k - 1$).

En total hay $2 k$ ecuaciones.

### Primer grado (lineal)

Un spline de primer grado conecta los puntos de control con segmentos de líneas rectas. Esto significa que entre cada par de puntos de control, la función cambia de forma lineal, logrando una continuidad en el valor, pero no en la pendiente (no hay suavidad en las uniones).

Tenemos entonces que el polinomio $S$ en este caso se define como:

$$
S(x) =
	\begin{cases}
		S_0(x) = a_0 + b_0 x                         & x \in [t_0, t_1) \\
		S_1(x) = a_1 + b_1 x                         & x \in [t_1, t_2) \\
		\vdots                                       & \vdots \\
		S_{ k - 1 }(x) = a_{ k - 1 } + b_{ k - 1 } x & x \in [t_{ k - 1 }, t_k]
	\end{cases}
$$

Las características del spline de primer grado son:

1. $S$ es continua en $[t_0,t_k]$.

2. $S'$ es discontinua en los nodos $t_i$.

3. Cada $S_i$ es un polinomio de grado $1$.

La condición de continuidad es:

$$
S_{ i - 1 }(t_i) = S_i(t_i) \quad i = 1,2,\dots,k - 1
$$

#### Número total de ecuaciones (primer grado)

- Interpolación en los nodos ($2 k$ ecuaciones):

	1. $S_i(t_i) = y_i$ (para $i = 0,1,\dots,k - 1$).

	2. $S_i(t_{ i + 1 }) = y_{ i + 1 }$ (para $i = 0,1,\dots,k - 1$).

En total hay $2 k$ ecuaciones.

### Segundo grado (cuadrático)

$$
S(x) =
	\begin{cases}
		S_0(x) = a_0 + b_0 x + c_0 x^2                                    & x \in [t_0, t_1) \\
		S_1(x) = a_1 + b_1 x + c_1 x^2                                    & x \in [t_1, t_2) \\
		\vdots                                                            & \vdots \\
		S_{ k - 1 }(x) = a_{ k - 1 } + b_{ k - 1 } x + c_{ k - 1 } x^2    & x \in [t_{ k - 1 }, t_k]
	\end{cases}
$$

Las características del spline de segundo grado son:

1. $S$ es continua en el intervalo $[t_0,\dots,t_k]$.

2. $S'$ es continua en el intervalo $[t_0,\dots,t_k]$.

3. $S''$ es discontinua en los nodos $t_i$.

4. Cada $S_i$ es un polinomio de grado $2$.

La condición de continuidad es:

$$
\begin{align}
	S_{ i - 1 }(t_i)       & = S_i(t_i), \\
	{ S' }_{ i - 1 }(t_i)  & = { S' }_i(t_i)
\end{align} \quad i = 1,2,\dots,k - 1
$$

#### Número total de ecuaciones (segundo grado)

1. Interpolación en los nodos ($2 k$ ecuaciones):

	1. $S_i(t_i) = y_i$ (para $i = 0,1,\dots,k - 1$).

	2. $S_i(t_{ i + 1 }) = y_{ i + 1 }$ (para $i = 0,1,\dots,k - 1$).

2. Continuidad de la primera derivada ($k - 1$ ecuaciones):

	$S_{ i - 1 }'(t_i) = S_i'(t_i)$ (para $i = 1,2,\dots,k - 1$).

En total hay $2 k + (k - 1) = 3 k - 1$ ecuaciones.

### Tercer grado (cúbico)

$$
S(x) =
	\begin{cases}
		S_0(x) = a_0 + b_0 x + c_0 x^2 + d_0 x^3                                         & x \in [t_0, t_1) \\
		S_1(x) = a_1 + b_1 x + c_1 x^2 + d_1 x^3                                         & x \in [t_1, t_2) \\
		\vdots                                                                           & \vdots \\
		S_{ k - 1 }(x) = a_{ k - 1 } + b_{ k - 1 } x + c_{ k - 1 } x^2 + d_{ k - 1 } x^3 & x \in [t_{ k - 1 }, t_k]
	\end{cases}
$$

Las características del spline de segundo grado son:

1. $S$ es continua en el intervalo $[t_0,\dots,t_k]$.

2. $S'$ es continua en el intervalo $[t_0,\dots,t_k]$.

3. $S''$ es continua en el intervalo $[t_0,\dots,t_k]$.

4. Cada $S_i$ es un polinomio de grado $3$.

La condición de continuidad es:

$$
\begin{align}
	S_{ i - 1 }(t_i)       & = S_i(t_i), \\
	{ S' }_{ i - 1 }(t_i)  & = { S' }_i(t_i), \\
	{ S'' }_{ i - 1 }(t_i) & = { S'' }_i(t_i)
\end{align} \quad i = 1,2,\dots,k - 1
$$

Cada polinomio cúbico $S_i(x)$ tiene $4$ coeficientes. Hay $k$ polinomios, entonces en total hay $4 k$ incógnitas.

Para determinar unívocamente el spline cúbico, es necesario añadir dos condiciones adicionales en los extremos:

- Spline cúbico natural: $S''(t_0) = 0$ y $S''(t_k) = 0$.

#### Número total de ecuaciones (tercer grado)

1. Interpolación en los nodos ($2 k$ ecuaciones):

	1. $S_i(t_i) = y_i$ (para $i = 0,1,\dots,k - 1$).

	2. $S_i(t_{ i + 1 }) = y_{ i + 1 }$ (para $i = 0,1,\dots,k - 1$).

2. Continuidad de la primera derivada ($k - 1$ ecuaciones):

	$S_{ i - 1 }'(t_i) = S_i'(t_i)$ (para $i = 1,2,\dots,k - 1$).

3. Continuidad de la segunda derivada ($k - 1$ ecuaciones):

	$S_{ i - 1 }''(t_i) = S_i''(t_i)$ (para $i = 1,2,\dots,k - 1$).

4. Condiciones de frontera ($2$ ecuaciones):

	$S_0''(t_0) = 0$ y $S_{ k - 1 }''(t_k) = 0$

En total hay $2 k + (k - 1) + (k - 1) + 2 = 4 k$ ecuaciones.
