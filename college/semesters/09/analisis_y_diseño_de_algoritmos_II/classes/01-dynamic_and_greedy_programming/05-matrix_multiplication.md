---
reviewed_on: "2025-03-07"
---

# Matrix multiplication

![[personal/computer_science/problems/matrix_chain_multiplication|matrix_chain_multiplication]]

Sea $A$ de dimensiones $p \times q$ y $B$ de dimensiones $q \times r$, la cantidad total de multiplicaciones es $p q r$

## Paso $1$

Sea $A_{ i:j }$ la matriz que resulta de evaluar $A_i \dots A_j$. Una solución óptima para calcular $A_{ 1:n }$ se divide en una solución óptima para calcular $A_{ 1:k }$ y una solución óptima para calcular $A_{ k + 1:n }$.

## Paso $2$

Sea $m[i,j]$ el mínimo número de multiplicaciones necesarias para calcular $A_{ i:j }$.

> El valor de la solución del problema original corresponde a $m[1,n]$.

$$
m[i,j] = \begin{cases}
		0                                                                 & i = j \\
		\min_{ i \leq k < j }\{m[i,k] + m[k + 1,j] + p_{ i - 1 } p_k p_j\} & i < j
	\end{cases}
$$

## Paso $3$

Calculamos el valor de una solución óptima de manera bottom-up.

## Paso $4$

Mientras calculamos la matriz del paso $3$ podemos ir llenando una matriz auxiliar con el valor de $k$ que da el mínimo número de multiplicaciones escalares.

## Complejidad

El costo temporal es la multiplicación de todos los elementos y lo que cuesta calcular cada uno $O(n^3)$ y el costo espacial es $O(n^2)$.

> Siendo más estricto, el costo temporal es $O \left (\frac{ n (n - 1) }{ 2 } * n \right )$
