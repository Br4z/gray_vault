---
reviewed_on: "2025-02-08"
---

# First exam

## 1

¿Cuál de las siguientes afirmaciones  describen mejor la relación entre las diferencias finitas y la serie de Taylor?

- [] Las diferencias finitas no están relacionadas con la serie de Taylor porque se usan para otros tipos de métodos numéricos y no aproximaciones.

- [x] Las diferencias finitas se derivan truncando la expansión de Taylor, y la precisión de la aproximación depende del grado de la derivada considerada en la serie de Taylor.

- [] Las diferencias finitas se calculan usando directamente la función original sin hacer uso de la serie de Taylor.

## 2

El número $e$ puede ser definido como $e = \sum_{ i = 0 }^\infty \frac{ 1 }{ i! }$. Calcule el error relativo entre el número $e$ (valor real) y $e = \sum_{ i = 0 }^2 \frac{ 1 }{ i! }$ (valor aproximado).

$$
\begin{align}
	& \sum_{ i = 0 }^2 \frac{ 1 }{ i! } \\
	& \frac{ 1 }{ 0! } + \frac{ 1 }{ 1! } + \frac{ 1 }{ 2! } \\
	& = \frac{ 5 }{ 2 }
\end{align}
$$

$$
\begin{align}
	& E_r = \frac{ |e - \frac{ 5 }{ 2 }| }{ |e| } \\
	& = \frac{ 2 e - 5 }{ 2 e } \\
	& \approx 8 * 10^{ -2 }
\end{align}
$$

## 3

Una persona realiza mediciones en dos escenarios diferentes. Se conoce que en el primer escenario obtuvo un error de 30 metros, valor real 120 metros, y en el segundo escenario obtuvo un error de 50 centímetros, valor real 500 centímetros ¿Dónde se cometió un mayor error?

$$
\begin{align}
	& E_{ r_1 } = \frac{ 130 }{ 120 } \\
	& = \frac{ 1 }{ 4 } \\
	& E_{ r_2 } = \frac{ 50 }{ 500 } \\
	& = \frac{ 1 }{ 10 } \\
	& E_{ r_1 } > E_{ r_2 }
\end{align}
$$

El error fue mayor en el primer escenario.

## 4

Ha sido entrenada una arquitectura de red neuronal especializada en detectar si una persona tiene una enfermedad. Dicha arquitectura se muestra a continuación con los parámetros de la red ya entrenados con un dataset de entrenamiento:

Por función de activación consideré la siguiente:

![neural network diagram](../assets/simulacion_y_computacion_numerica/03_01_01-neural_network_diagram.svg)

$$
myActivation(x) =
	\begin{cases}
		|x| & x > -1 \\
		0   & x \leq -1
	\end{cases}
$$

Considere un dataset de prueba con los siguientes pacientes:

| mayor_a_60 | sexo | letra_f | antecedentes_familiares | clase_real |
|:----------:|:----:|:-------:|:-----------------------:|:----------:|
|     1      |  1   |    2    |            1            |     1      |
|     0      |  0   |    7    |            0            |     0      |

Aplique la regla de propagación sobre la red y haga la predicción de los dos pacientes. Calcule el error de la red con respecto a estos dos pacientes.

1. .

	$$
	\begin{align}
		& x_1 = 1 \quad x_2 = 1 \quad x_3 = 2 \quad x_4 = 1 \\
		& 1 * 0.5 + 1 * 0.25 + 2 * 0.01 + 1 * 0.1 = 0.87
	\end{align}
	$$

	Ahora le aplicamos la función de activación.

	$$
	myActivation(0.87) = 0.87
	$$

	$$
	E_a = |1 - 0.87| = 0.13
	$$

2. .

	$$
	\begin{align}
		& x_1 = 0 \quad x_2 = 0 \quad x_3 = 7 \quad x_4 = 0 \\
		& 0 * 0.5 + 0 * 0.25 + 7 * 0.01 + 0 * 0.1 = 0.07
	\end{align}
	$$

	Ahora le aplicamos la función de activación.

	$$
	myActivation(0.07) = 0.07
	$$

	$$
	E_a = |1 - 0.07| = 0.07
	$$

## 5

![bar](../assets/simulacion_y_computacion_numerica/03_01_02-bar.svg)

Hay una fuente de calor en un extremo de una barra de ancho 1 como se muestra a continuación:

Resulta que la distribución de la temperatura está dada por la ecuación diferencial:

$$
\frac{ \partial^2 u }{ dx^2 } = 0 \quad (1)
$$

Haga una discretización de diferencias finitas con el medio discreteado en 5 partes y determine las ecuaciones resultantes.

Para hacer la discretización vamos a usar este [[personal/math/finite_differences#Second derivate|resultado]] donde tenemos que la segunda derivada corresponde a:

$$
y''(x_i) = \frac{ y(x_i + \Delta{ x }) - 2 y(x_i) + y(x_i - \Delta{ x }) }{ \Delta{ x }^2 }
$$

Para facilitar la escritura, diremos que eso es equivalente a:

$$
{ y'' }_i = \frac{ y_{ i + 1 } - 2 y_i + y_{ i - 1 } }{ \Delta{ x }^2 }
$$

Si la barra de ancho 1 se divide en 5 partes encontraremos que

$$
\Delta{ x } = \frac{ 1 }{ 5 }
$$

Ahora, aplicando estas igualdades a $(1)$.

$$
\begin{align}
	& \frac{ y_{ i + 1 } - 2 y_i + y_{ i - 1 } }{ \Delta{ x }^2 } = 0 \\
	& y_{ i + 1 } - 2 y_i + y_{ i - 1 } = 0
\end{align}
$$

1. $i = 2$.

	$$
	\begin{align}
		& y_3 - 2 y_2 + y_1 = 0 \\
		& y_3 - 2 y_2 = -10
	\end{align}
	$$

2. $i = 3$.

	$$
	y_4 - 2 y_3 + y_2 = 0
	$$

3. $i = 4$.

	$$
	y_5 - 2 y_4 + y_3 = 0
	$$

4. $i = 5$.

	$$
	\begin{align}
		& y_6 - 2 y_5 + y_4 = 0 \\
		& y_4 - 2 y_5 = -100
	\end{align}
	$$

Las ecuaciones en forma de matriz-vector son:

$$
\begin{pmatrix}
	-2 & 1  & 0  & 0 \\
	1  & -2 & 1  & 0 \\
	0  & 1  & -2 & 1 \\
	0  & 0  & 1  & -2
\end{pmatrix}
\begin{pmatrix}
	y_2 \\
	y_3 \\
	y_4 \\
	y_5
\end{pmatrix}
=
\begin{pmatrix}
	-10 \\
	0 \\
	0 \\
	-100
\end{pmatrix}
$$
