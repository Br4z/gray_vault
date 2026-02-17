---
reviewed_on: "2025-02-24"
---

# Knapsack problem

![[personal/systems_engineering/problems/knapsack|knapsack]]

La notación $\operatorname{knapsack}(k,l,p)$ se usará para indicar el problema de la mochila sobre los elementos $\langle x_k,x_{ k + 1 },\dots,x_l \rangle$, es decir, un subproblema. El subproblema tendrá las mismas restricciones que el problema original.

Sea $\langle y_1,y_2,\dots,y_n \rangle$ una secuencia óptima para $\langle x_1,x_2,\dots,x_n \rangle$, dada una mochila con capacidad $m$, entonces:

- Si $y_n = 0$ entonces $\langle y_1,\dots,y_{ n - 1 } \rangle$ es una secuencia óptima para $\operatorname{knapsack}(1,n - 1,m)$.

- Si $y_n = 1$ entonces $\langle y_1,\dots,y_{ n - 1 } \rangle$ es una secuencia óptima para $\operatorname{knapsack}(1,n - 1,m - w_n)$.

## Relación de recurrencia

Sea $g_j(m)$ el valor de la solución óptima de $\operatorname{knapsack}(1,j,m)$, por la subestructura óptima, se puede decir que:

$$
g_j(m) = \begin{cases}
		\max(g_{ j - 1 }(m),g_{ j - 1 }(m - w_j) + b_j) & m \geq w_j \\
		g_{ j - 1 }(m)                                  & m < w_j
	\end{cases}
$$

con el caso base $g_0(m) = 0$ y $g_j(0) = 0$.

Esta relación significa escoger la mejor de dos opciones (con el operador $\max$):

- $g_{ j - 1 }(m)$: no incluir el objeto $j$.

- $g_{ j - 1 }(m - w_j) + b_j$: incluir el objeto $j$ (solo si $m \geq w_j$).

## Construyendo la matriz `BMAX`

Sea la matriz `B[M, N]` una Matrix y `B[i, j]` contenga el beneficio máximo que se puede obtener si la capacidad de la mochila es de `i` y se cuenta con los primeros `j` elementos.

$$
\operatorname{BMAX}(i,1) =
	\begin{cases}
		b_1 & i \geq w_1 \\
		0   & i < w_1
	\end{cases}
$$

$$
\operatorname{BMAX}(i,j) = \begin{cases}
	\max(\operatorname{BMAX}(i,j - 1), \operatorname{BMAX}(i - w_j,j - 1) + b_j) & i \geq w_j \\
	\operatorname{BMAX}(i,j - 1)                                                 & i < w_j
	\end{cases}
$$

con el caso base $\operatorname{BMAX}(0,j) = 0$.

## Recuperando los elementos seleccionados de la matriz `BMAX`

1. Empezar en $(m,n)$ y devolverse.

2. Si llegamos a $\operatorname{BMAX}(i,1)$ significa que hemos llegado al primer ítem y su pertenencia a la solución depende de si $\operatorname{BMAX}(i,1) \neq 0$. Aquí el algoritmo termina.

3. Si $\operatorname{BMAX}(i,j) = \operatorname{BMAX}(i,j - 1)$, entonces el ítem $j$ **no** fue incluido. Se repite el paso 1 con $j - 1$ ($\operatorname{BMAX}(i,j - 1)$).

4. En caso contrario, el ítem $j$ fue incluido. Se repite el paso 1 con $i - w_j$ y $j - 1$ ($\operatorname{BMAX}(i - w_j,j - 1)$).

## Complejidad

Tanto con un enfoque top-down o bottom-up, la complejidad temporal y espacial es $O(n \times x)$, la cantidad de subproblemas que salen de $\operatorname{knapsack}(1,l,p)$ es $n \times x$ y los guardamos en una matriz del mismo tamaño.