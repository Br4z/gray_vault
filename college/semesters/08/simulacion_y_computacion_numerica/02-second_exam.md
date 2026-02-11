---
reviewed_on: "2025-02-08"
---

# Second exam

## 1

![neural network](../assets/simulacion_y_computacion_numerica/03_02_01-neural_network_diagram.svg)

La siguiente es una red neuronal simple de una sola capa con una capa de entrada de dos neuronas que reciben las entradas $x_1$ y $x_2$ y una capa de salida con una neurona que tiene la función de activación lineal ($f(h) = h$). Los pesos iniciales de la red son $w_1 = 1$ y $w_2 = -1$.

Con los siguientes datos:

- Entrada: $x_1 = 1$ y $x_2 = 0$.

- Salida esperada: $y = 2$.

1. Realice un forward pass para calcular la salida de la red para esta entrada.

	$$
	y = f(1 (1) + 0 (-1)) = 1
	$$

2. Calcule el error usando el error cuadrático medio (MSE).

	> $\operatorname{ MSE }(\hat{ y }) = \frac{ 1 }{ 2 } (\hat{ y } - y)^2$

	$$
	\operatorname{ MSE }(1) = \frac{ 1 }{ 2 } (1 - 2)^2 = \frac{ 1 }{ 2 }
	$$

3. Use backpropagation para calcular los gradientes de los pesos.

4. Si la tasa de aprendizaje es $\eta = 0.1$, actualice los pesos de la red.

## 2

Solucione el sistema de ecuaciones y justifique la elección del método. Usé un límite de error de $\varepsilon = 5\%$ y un máximo de $3$ iteraciones.

$$
\begin{cases}
	10 x_1 & + 2 x_2 & - x_3   & = 27 \\
	-3 x_1 & - 6 x_2 & + 2 x_3 & = -61.5 \\
	x_1    & + x_2   & + 5 x_3 & = -21.5
\end{cases}
$$

## 3

Verifique la convergencia de los siguientes sistemas de ecuaciones:

1. .

	$$
	\begin{cases}
		-3 x_1 & + 4 x_2 & + 5 x_3 & = 6 \\
		-2 x_1 & + 2 x_2 & - 3 x_3 & = -3 \\
		       & 2 x_2   & - 1 x_3 & = 1
	\end{cases}
	$$

2. .

	$$
	\begin{cases}
		9 x_1  & + 3 x_2 & + 1 x_3 & = 13 \\
		-6 x_1 &         & + 8 x_3 & = 2 \\
		2 x    & + 5 x_2 & - 1 x_3 & = 6
	\end{cases}
	$$

## 4

Utilice el método de Horner para determinar las raíces del polinomio, utilice como valor inicial $r = -1$ e itere hasta alcanzar una cota de error de $\varepsilon = 10\%$.

$$
f(x) = x^3 - x^2 + 3 x - 2
$$