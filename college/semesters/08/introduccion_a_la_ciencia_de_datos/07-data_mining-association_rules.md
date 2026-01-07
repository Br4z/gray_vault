---
reviewed_on: "2025-02-06"
---

# Data mining - association rules

Se utilizan para descubrir hechos que ocurren en común dentro de un determinado conjunto de datos.

Sea:

- $I = \{i_1,i_2,\dots,i_n\}$: un conjunto de $n$ atributos binarios llamados **items**.

- $D = \{t_1,t_2,\dots,t_m\}$: un conjunto de transacciones almacenadas en una base de datos.

Cada transacción en $D$ tiene un **ID** único y contiene un subconjunto de items de $I$. Una **regla** se define como una implicación de la forma

$$
X \implies Y
$$

Donde

$X,Y \subseteq I$ y $X \cap Y = \emptyset$.

Los conjuntos de items $X$ y $Y$ se denominan respectivamente **antecedente** (o parte izquierda) y **consecuente** (o parte derecha) de la regla.

## Reglas significativas, soporte y confianza

Para seleccionar reglas interesantes del conjunto de todas las reglas posibles que se pueden derivar de un conjunto de datos se pueden utilizar restricciones sobre diversas medidas de **significancia** e **interés**. Las restricciones más conocidas son los umbrales mínimos de **soporte** y **confianza**.

### Soporte

El soporte de un conjunto de items $X$ en una base de datos $D$ se define como la proporción de transacciones en la base de datos que contiene dicho conjunto de items.

$$
\operatorname{ support }(X) = \frac{ |X| }{ |D| }
$$

### Confianza

La confianza de una regla se define como

$$
\operatorname{ confidence }(X \implies Y) = \frac{ \operatorname{ support }(X \cup Y) }{ \operatorname{ support }(X) }
$$

> $X \cap Y$ también se puede interpretar como las transacciones en las que ocurre tanto $X$ como $Y$ juntas.

La confianza también puede interpretarse como un estimador de $P(Y|X)$, la probabilidad de encontrar la parte derecha de una regla condicionada que se encuentra también en la parte izquierda.

## Lift

Es una métrica que mide la "fuerza" de una regla al comparar la probabilidad de que los elementos en el consecuente ocurran cuando están en el antecedente con su probabilidad esperada si los eventos fueran independientes. Es una medida que evalúa la dependencia entre los elementos.

$$
\operatorname{ lift }(X \implies Y) = \frac{ \operatorname{ support }(X \cup Y) }{ \operatorname{ support }(X) * \operatorname{ support }(Y) }
$$

- $\text{lift} > 1$: indica que $X$ y $Y$ son dependientes positivamente.

- $\text{lift} = 1$: indica independencia entre $X$ y $Y$.

- $\text{lift} < 1$: indica que $X$ y $Y$ son dependientes negativamente.

## Algoritmo Apriori

Está diseñado para operar sobre bases de datos que contienen transacciones. Cada transacción es vista como un conjunto de ítems. Dado un valor de un umbral $C$, el algoritmo a priori identifica todos los conjuntos de ítems que son subconjuntos de al menos $C$ transacciones en la base de datos. A priori utilizada un enfoque "bottom up", donde subconjuntos frecuentes son ampliados por un ítem a la vez (este paso se conoce como generación de candidatos) y grupos de candidatos son validados contra los datos. El algoritmo termina cuando no se pueden encontrar más ampliaciones exitosas de los conjuntos previos.

$$
\begin{align}
	& \mathrm{ Apriori }(T, \epsilon) \\
	& \quad L_1 \gets \{\mathrm{large~1-itemsets}\} \\
	& \quad k \gets 2 \\
	& \quad \textbf{while}~L_{ k - 1 } \neq \emptyset \\
	& \quad \quad C_k \gets \{a \cup \{b\} \mid a \in L_{ k - 1 } \pand b \notin a\} - \{c \mid \{s \mid s \subseteq c \pand |s| = k - 1\} \nsubseteq L_{ k - 1 }\} \\
	& \quad \quad \textbf{for}~\text{transactions}~t \in T \\
	& \quad \quad \quad C_t \gets \{c \mid c \in C_k \pand c \subseteq t\} \\
	& \quad \quad \quad \textbf{for}~\text{candidates}~c \in C_t \\
	& \quad \quad \quad \quad \mathit{count}[c] \gets \mathit{count}[c] + 1 \\
	& \quad \quad L_k \gets \{c \mid c \in C_k \pand \mathit{count}[c] \geq \epsilon\} \\
	& \quad \quad k \gets k + 1 \\
	& \quad \textbf{return}~\bigcup_k L_k
\end{align}
$$

1. $L_1 \gets \{\mathrm{large~1-itemsets}\}$: conjunto de items individuales que aparecen en al menos $\epsilon$ transacciones.

2. $k \gets 2$: tamaño actual de los conjuntos de items a generar.

3. $\textbf{while}~L_{ k - 1 } \neq \emptyset$: continuamos mientras haya conjuntos frecuentes de tamaño $k - 1$.

4. $C_k \gets \{a \cup \{b\} \mid a \in L_{ k - 1 } \pand b \notin a\} - \{c \mid \{s \mid s \subseteq c \pand |s| = k - 1\} \nsubseteq L_{ k - 1 }\}$.

	- $C_k \gets \{a \cup \{b\} \mid a \in L_{ k - 1 } \pand b \notin a\}$: combina los conjuntos en $L_{ k - 1 }$ añadiendo un item que no este presente en el conjunto.

	- $- \{c \mid \{s \mid s \subseteq c \pand |s| = k - 1\} \nsubseteq L_{ k - 1 }\}$: filtra aquellos candidatos cuyos subconjuntos no son frecuentes. Si un subconjunto de $c$ de tamaño $k - 1$ no está en $L_{ k - 1 }$, eliminamos $c$.

5. $C_t \gets \{c \mid c \in C_k \pand c \subseteq t\}$: conjunto de candidatos de tamaño $k$ que están contenidos en la transacción $t$.

6. $\mathit{count}[c] \gets \mathit{count}[c] + 1$: incrementa el contador para cada candidato $c$ encontrado en $C_t$.

7. $L_k \gets \{c \mid c \in C_k \pand \mathit{count}[c] \geq \epsilon\}$: filtra de los conjuntos frecuentes de tamaño $k$.

8. $k \gets k + 1$: incrementa el tamaño de los conjuntos para la próxima iteración.
