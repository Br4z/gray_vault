---
reviewed_on: "2025-08-03"
---

# Maximal clique

![[personal/computer_science/problems/maximal_clique|Maximal clique]]

## $\text{MC} \in \mathrm{NP}$

El algoritmo toma el certificado, comprueba que el tamaño de $V^\prime$ sea mayor o igual a $j$ y recorre todos los vertices para asegurarse de que cada uno de ellos está conectado con los demás. Siendo $n$ el número de vértices, estas comprobaciones se hacen en un tiempo $O\left (\card{ V^\prime } + \frac{ \card{ V^\prime } (\card{ V^\prime } - 1) }{ 2 }\right ) = O(\card{ V^\prime }^2)$. Por lo tanto, $\text{MC} \in NP$.

## $\text{VC} \preceq_p \text{MC}$

Sea $G = (V,E)$ un grafo no dirigido y $V^\prime$ un cubrimiento de vértices de tamaño $k$. Nótese que $V \setminus V^\prime$ es un **conjunto independiente**, es decir, un conjunto de vértices que no están conectados por ninguna arista.

Además, $\card{ V \setminus V^\prime } = \card{ V } - k$.

$$
\begin{align}
	\exists V^\prime \subseteq V : \card{ V^\prime } \leq k \pand V^\prime \text{es cubrimiento de $G$} \\
	\equiv \\
	\exists V^{ '' } \subseteq V : \card{ V^{ '' } } \geq \card{ V } - k \pand V^{ '' } \text{es independiente de $G$}
\end{align}
$$

Esto se traduce en "si buscamos una cobertura de vértices $V^\prime$ que sea lo más pequeña posible (a lo sumo $k$), esto es matemáticamente equivalente a buscar un conjunto independiente $V^{ '' }$ que sea lo más grande posible (al menos $\card{ V } - k$)."

---

Sea un grafo $G = (V,E)$ un grafo no dirigido y $V^\prime$ un conjunto independiente de tamaño $k$.

Sea $\overline{ G } = (V,\overline{ E })$ el grafo no dirigido **complementario** de $G$, o sea, un grafo no dirigido con los mismos vértices, pero con aristas donde no había y sin aristas donde había.

$$
\begin{align}
	\exists V^\prime \subseteq V : \card{ V^\prime } \geq k \pand V^\prime \text{es independiente en $G$} \\
	\equiv \\
	\exists V^\prime \subseteq V : \card{ V^\prime } \geq k \pand V^\prime \text{es clique en $\overline{ G }$}
\end{align}
$$

---

$$
\begin{align}
	\exists V^\prime \subseteq V : \card{ V^\prime } \leq k \pand V^\prime \text{es cubrimiento de $G$} \\
	\equiv \\
	\exists V^{ '' } \subseteq V : \card{ V^{ '' } } \geq \card{ V } - k \pand V^{ '' } \text{es clique en $\overline{ G }$}
\end{align}
$$

---

Un problema de encontrar una cobertura de tamaño $\leq k$ (vertex cover) se transforma en un problema de encontrar un clique de tamaño $\geq j = \card{ V } - k$ sobre $\overline{ G }$.

## Complejidad

Si se tienen $n$ vértices y $m$ aristas en $G$, se tiene el mismo número de vértices y $n^2 - m$ aristas en $\overline{ G }$. Esto se traduce en una complejidad temporal $O(n^2 + m)$. Por lo tanto, $\text{MC}$ está en $\mathrm{NP}$ y es $\mathrm{NP}\text{-hard}$, lo que lo hace $\mathrm{NP}\text{-complete}$.
