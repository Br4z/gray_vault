---
reviewed_on: "2025-03-02"
---

# Longest common subsequence

![[personal/computer_science/problems/longest_common_subsequence|longest common subsequence]]

Al aplicar programación dinámica sobre un problema de optimización se siguen los siguientes pasos:

1. Caracterizar la estructura de la solución óptima (subestructura óptima).

	Toda solución (óptima) de un problema se forma de soluciones óptimas de subproblemas.

2. Definir recursivamente el valor de la solución óptima.

3. Calcular el valor de la solución óptima (algoritmo).

4. Construir la solución óptima (algoritmo).

La notación $\operatorname{LCS}(x_n,y_m)$ se usará para indicar el problema de la subsecuencia más larga sobre los primeros $n$ y $m$ elementos respectivamente ($\langle x_1,x_2,\dots,x_n \rangle$ y $\langle y_1,y_2,\dots,y_m \rangle$). El subproblema tendrá las mismas restricciones que el problema original.

## Paso $1$

- Si $x_n = y_m$ entonces la solución de $\operatorname{LCS}(x_n,y_m)$ es igual a la solución de $\operatorname{LCS}(x_{ n - 1 },y_{ m - 1 }) + x_n$.

- Si $x_n \neq y_m$ y $x_n \neq z_k$ entonces la solución de $\operatorname{LCS}(x_n,y_m)$ es igual a la solución de $\operatorname{LCS}(x_{ n - 1 },y_m)$.

- Si $x_n \neq y_m$ y $y_m \neq z_k$ entonces la solución de $\operatorname{LCS}(x_n,y_m)$ es igual a la solución de $\operatorname{LCS}(x_n,y_{ m - 1 })$.

> Suponiendo que la cadena $Z$ es la solución.

## Paso $2$

Sea $C[i,j]$ el valor (costo) de la solución óptima del problema $\operatorname{LCS}(x_i,y_j)$. Se tiene una función de costo que permite conocer la longitud (valor) de la solución óptima:

$$
\begin{align}
	& C[i,j] = \begin{cases}
			0                           & i = 0 \por j = 0 \\
			C[i - 1,j - 1] + 1          & x_i = y_j \pand i, j > 0 \\
			\max(C[i,j - 1],C[i - 1,j]) & x_i \neq y_j \pand i,j > 0
		\end{cases} \\
	& 0 \leq i \leq n \quad 0 \leq j \leq m
\end{align}
$$

> La matriz $C$ es de dimensiones $(n + 1) \times (m + 1)$.

## Paso $3$

De forma similar al [[personal/computer_science/problems/knapsack|problema de la mochila]] podemos calcular la solución de dos formas:

1. Bottom-up.

2. Top-down.

## Paso $4$

Mientras construimos la matriz del paso $3$, también podemos llenar una matriz de **direcciones** ($B$).

$$
\begin{align}
	& B[i,j] = \begin{cases}
			-          & i = 0 \por j = 0 \\
			\nwarrow   & x_i = y_j \\
			\uparrow   & x_i \neq y_j \pand C[i - 1,j] \geq C[i,j - 1] \\
			\leftarrow & x_i \neq y_j \pand C[i - 1,j] < C[i,j - 1]
		\end{cases} \\
	& 0 \leq i \leq n \quad 0 \leq j \leq m
\end{align}
$$

## Complejidad

El costo temporal es la suma del costo de calcular el valor de la solución más el costo de calcular la solución $\theta(n * m) + O(n + m) = \theta(n * m)$ y el costo temporal es $\theta(n * m)$.
