---
reviewed_on: "2025-08-02"
---

# Subset sum

![[personal/computer_science/problems/subset_sum|Subset sum]]

## $\text{SS} \in \mathrm{NP}$

El algoritmo toma el certificado, comprueba que $S^\prime \subset S$ ($O(\card{ S^\prime } \card{ S })$) y que la suma de los elementos de $S^\prime$ sea igual a $t$ ($O(S^\prime)$). Estas comprobaciones se hacen en un tiempo $O(\card{ S^\prime } \card{ S } + \card{ S^\prime})$. Por lo tanto, $\text{SS} \in NP$.

## $\text{VC} \preceq_p \text{SS}$

La idea clave es representar las relaciones de incidencia ($\text{vértices} \times \text{aristas}$) del grafo como números en base $4$.

$$
M[v,e] = \begin{cases}
	& 1 & \text{si el vértice $v$ es incidente con la arista $e$} \\
	& 0 & \text{si el vértice $v$ no es incidente con la arista $e$}
	\end{cases}
$$

En esta matriz de incidencia, el número de $1$'s en cada fila representa el grado del vértice y el número de $1$'s en cada columna es $2$.

Un cubrimiento (conjunto de vértices $V^\prime$) del grafo debe "alumbrar" al menos un $1$ en cada columna.

Agregamos una fila por cada arista, con $1$'s en la diagonal (sin tener en cuenta la primera columna que acabamos de agregar) y una columna para distinguir las filas de los vértices de las de aristas (con $1$ en las filas de vértices y $0$ en las de las aristas). Luego buscamos garantizar dos $1$'s por columna (seleccionando aristas donde solo haya uno).

$$
\begin{array}{|l|c|c|c|c|}
	\hline \\
	             & e_1    & e_2    & \dots  & e_\card{ E } \\
	\hline \\
	v_1          & M[1,1]              & M[1,2]                       & \dots  & M[1,\card{ E }] \\
	v_2          & M[2,1]              & M[2,2]              & \dots  & M[2,\card{ E }] \\
	\vdots       & \vdots              & \vdots              & \vdots & \vdots \\
	v_\card{ V } & M[2,1]              & M[2,2]              & \dots  & M[\card{ V },\card{ E }] \\
	\hline \\
	e_1          & M[\card{ V } + 1,1] & M[\card{ V } + 1,2] & \dots  & M[\card{ V } + 1,\card{ E }] \\
	e_2          & M[\card{ V } + 2,1] & M[\card{ V } + 2,2] & \dots  & M[\card{ V } + 2,\card{ E }] \\
	\vdots       & \vdots              & \vdots              & \vdots & \vdots \\
	e_\card{ E } & M[\card{ V } + 2,1] & M[\card{ V } + 2,2] & \dots  & M[\card{ V } + \card{ E },\card{ E }] \\
	             & 2                   & 2                   & \dots  & 2 \\
	\hline
\end{array}
$$

> En esta generalización no está la primera columna de "distinción" (aunque sí debería estar).

Lo siguiente es ver esta matriz como una suma de números en base $4$ de los vértices que se escogieron para garantizar la cobertura y las aristas que se escogieron para garantizar una suma de $2$ por columna.

> Estos vértices que se escogieron corresponden a los $k$ del problema VC.

La suma de cada fila corresponde a un $s =  \in S$.

---

Todo lo descrito anteriormente es resumido en lo siguiente:

1. Por cada vértice $v \in V$ creamos un $s_v \in S$, tal que

	$$
	s_v = 4^\card{ E } + \sum_{ i = 0 }^{ \card{ E } - 1 } 4^i * M[v,e_{ \card{ E } - i }]
	$$

2. Por cada arista $e_i \in E$ creamos un $s_{ e_i } \in S$ tal que

	$$
	s_{ e_i } = 4^{ i - 1}
	$$

Por lo tanto

$$
t = k * 4^\card{ E } + \sum_{ i = 0 }^{ \card{ E } - 1 } 2 * 4^i
$$

- $k * 4^\card{ E }$: obligar a que cualquier posible solución se seleccione.

	> Exactamente, $k$ número de vértices.

- $\sum_{ i = 0 }^{ \card{ E } - 1 } 2 * 4^i$: garantiza que el conjunto de $k$ vértices elegidos sea un **cubrimiento** de vértices válido.

	> Si una arista no estuviera cubierta por ningún vértice seleccionado, sería imposible que la suma de los dígitos en su columna llegara a $2$.

### Complejidad

Si se tienen $n$ vértices $m$ aristas, se generan $n + m$ números para el conjunto $S$ y un valor objetivo $t$. Esto se traduce en una complejidad temporal $O(n + m)$. Por lo tanto, $\text{SS}$ está en $\mathrm{NP}$ y es $\mathrm{NP}\text{-hard}$, lo que lo hace $\mathrm{NP}\text{-complete}$.
