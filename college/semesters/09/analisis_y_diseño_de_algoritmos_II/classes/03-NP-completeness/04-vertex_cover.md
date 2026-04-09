---
reviewed_on: "2025-08-03"
---

# Vertex cover

![[personal/systems_engineering/problems/vertex_cover|Vertex over]]

## $\text{VC} \in \mathrm{NP}$

El algoritmo toma el certificado, comprueba que el tamaño de $V^\prime$ sea menor o igual a $k$ y recorre todas las aristas para asegurarse de que cada una de ellas está conectada a, por lo menos, un vértice en $V^\prime$. Siendo $m$ el número de aristas, estas comprobaciones se hacen en un tiempo $O(m * \card{ V^\prime } + \card{ V^\prime })$. Por lo tanto, $\text{VC} \in NP$.

## $\text{3-SAT} \preceq_p \text{VC}$

### Simulación de variables

Cada variable booleana $x$ en el problema 3-SAT está representada por dos vértices de un grafo ($x$ y $\lnot x$). **Solo uno** de los dos debe quedar en el subconjunto $V^\prime$ para que esto represente la asignación de verdad.

### Simulación de cláusulas

Cada cláusula se convierte en un triángulo (grafo completo de 3 vértices), donde cada vertice representa un literal de la cláusula.

Se necesitan por lo menos $2 * \card{ C }$ vertices en $V^\prime$ para cubrir las 3 nuevas aristas que supone la conversión de **una** cláusula.

### Aristas de conexión

Cada vértice de un triángulo (cláusula) se conecta con el vértice correspondiente en el componente de variables.

---

El grafo tendrá una cobertura de tamaño $k = n + 2 * \card{ C }$ **si y solo si** la expresión 3-SAT es satisfactible.

Con estas reglas podemos decir que las instancias positivas en 3-SAT se reducen a instancias positivas en VC porque:

- Si $v$ es verdadero en 3-SAT, entonces $v \in V^\prime$. En caso contrario $\lnot v \in V^\prime$.

- Dada una cláusula $C_i = (l_{ i1 } \por l_{ i2 } \por l_{ i3 })$ en la instancia 3-SAT. Suponga que $l_{ i1 }$ es el literal satisfecho por la asignación de verdad, entonces la arista $(l_{ i1 },v)$ estaría cubierta porque $v \in V^\prime$. Luego incluiríamos $l_{ i2 },l_{ i3 }$ en $V^\prime$.

Podemos asegurar que escogiendo un vértice por cada variable y otros dos por cada clausula, logramos un recubrimiento con $\card{ V^\prime } = n + 2 * \card{ C }$.

### Complejidad

Si se tienen $n$ variables y $m$ cláusulas en 3-SAT, se crea un grafo con $2 n + 3 * \card{ C }$ y $n$ aristas de asignación, $3 * \card{ C }$ aristas de triángulos y $3 * \card{ C }$ aristas de conexión. En total $n + 6 * \card{ C }$ aristas.

Esto se traduce en una complejidad temporal $O(n + 6 * \card{ C })$. Por lo tanto, VC está en $\mathrm{NP}$ y es $\mathrm{NP}\text{-hard}$, lo que lo hace $\mathrm{NP}\text{-complete}$.
