---
reviewed_on: "2025-03-31"
---

# Moderating internal conflict of opinion in a social network

Una red social $SN$ es una pareja $\langle SA,R_{ \max } \rangle$, donde $SA$ es una secuencia de grupo de agentes $SA = \langle a_0,\dots,a_{ n - 1 } \rangle$ y $R_{ \max } > 0 \pand R_{ \max } \in \mathbb{ N }$ representa el valor entero máximo con el que se cuenta para moderar las opiniones de la red $SN$.

Un grupo de agentes $a_i$ es una tupla

$$
a_i = \langle n_i,o_{ i,1 },o_{ i,2 },r_i \rangle
$$

donde:

- $n_i$: es el número de agentes que pertenecen al grupo de agentes $i$.

- $o_{ i,1 }$: representa la opinión de cada agente del grupo $i$ sobre la afirmación $1$.

	> $-100 \leq o_{ i,1 } \leq 100 \pand o_{ i,1 } \in \mathbb{ Z }$.

- $o_{ i,2 }$: representa la opinión de cada agente del grupo $i$ sobre la afirmación $2$.

	> $-100 \leq o_{ i,2 } \leq 100 \pand o_{ i,2 } \in \mathbb{ Z }$.

- $r_i$: representa el nivel de rigidez de cada agente del grupo $i$ ($0 \leq i < n$).

	> $0 \leq r_i \leq 1$.

El valor de conflicto interno de una red $SN$ se define de la siguiente manera:

$$
\operatorname{ IC }(SN) = \frac{ \sum_{ i = 0 }^{ n - 1 }{ n_i * (o_{ i,1 } - o_{ i,2 })^2 } }{ n }
$$

> $n$ es el número de grupos de agentes que hay en la red social $SN$.

Una **estrategia de cambio de opinión** de una red $SN$ es una secuencia:

$$
E = \langle e_0,e_1,\dots,e_{ n - 1 } \rangle
$$

donde $e_i$ indica el número de agentes del grupo $i$ cuya opinión será modificada, además se cumplen las siguientes restricciones:

- $e_i \in \mathbb{ N }$.

- $0 \leq e_i \leq n_i$.

Aplicar una estrategia de cambio de opinión $E$ a una red $SN$, denotado como $\operatorname{ ModIC }(SN,E)$, da como resultado una nueva red ${ SN }'$ donde:

$$
{ n' }_i = n_i - e_i
$$

Se asume que los agentes con opiniones ajustadas por $E$ ya no forman parte de la red resultante ${ SN }'$.

El **esfuerzo** necesario para ajustar las opiniones sobre $SN$ con la estrategia $E$ se define como:

$$
\operatorname{ Effort }(SN,E) = \sum_{ i = 0 }^{ n - 1 } \left \lceil |o_{ i,1 } - o_{ i,2 }| \cdot r_i \cdot e_i \right \rceil
$$

Una estrategia $E$ es **aplicable** si:

$$
\operatorname{ Effort }(SN,E) \leq R_{ \max }
$$

## Entrada

Una red social $SN = \langle SA,R_{ \max } \rangle$

## Salida

Una estrategia de cambio de opinión $E$ aplicable a la red $SN$, es decir:

$$
\operatorname{ Effort }(SN,E) \leq R_{ \max }
$$

tal que:

$$
\operatorname{ IC }(\operatorname{ ModIC }(SN,E))
$$

sea mínimo.

## Análisis

- Cada grupo de agentes $a_i$ contribuye

	$$
	n_i * (o_{ i,1 } - o_{ i,2 })^2
	$$

	al conflicto interno. Si a ese grupo de agentes se le **moderan** $k$ agentes, esta contribución pasa a ser

	$$
	(n_i - k) * (o_{ i,1 } - o_{ i,2 })^2
	$$

## Enfoque dinámico

### Caracterización de la subestructura óptima

Definimos la notación $\operatorname{ IC }(i,r)$ como el problema de minimizar el conflicto interno utilizando los primeros $i$ grupos de agentes con un esfuerzo disponible $r$. La notación $\operatorname{ modIC }(i,r)$ denota la secuencia de decisiones óptimas (es decir, el número de agentes a moderar en cada grupo) para los grupos $i$ hasta $n$ utilizando $r$ de esfuerzo, donde la secuencia vacía $\langle \rangle$ indica que no se realizan más moderaciones.

$$
\operatorname{ modIC }(i,r) = \begin{cases}
		\langle \rangle                                                             & i = n + 1 \\
		k_i :: \operatorname{ modIC }(i + 1,r - \operatorname{ e\_effort }(i,k_i))  & i \neq n
	\end{cases}
$$

$$
\operatorname{ IC }(i,R_{ \max }) = \operatorname{ modIC }(1,R_{ \max })
$$

### Valor recursivo de la solución óptima

- $\operatorname{ e\_effort }(i,k)$: es el esfuerzo requerido para **moderar** $k$ agentes del grupo $i$ ($\left \lceil |o_{ i,1 } - o_{ i,2 }| \cdot r_i \cdot k \right \rceil$).

- $\operatorname{ conflict }(i,k)$: es la contribución al conflicto interno del grupo $i$ luego de **moderar** $k$ agentes ($(n_i - k) * (o_{ i,1 } - o_{ i,2 })^2$).

#### Normalización en cada paso

$$
\operatorname{ { recIC }_1 }(i,r) = \begin{cases}
		0                                                                                                                                                                                        & i = 0 \\
		\min_{ 0 \leq k_i \leq n_i } \left \{ \frac{ (i - 1) \cdot \operatorname{ { recIC }_1 }(i - 1,r - \operatorname{ e\_effort }(i,k_i)) + \operatorname{ conflict }(i,k_i) }{ i } \right \} & i > 0
	\end{cases}
$$

$$
\operatorname{ valueIC }(n,R_{ \max }) = \operatorname{ { recIC }_1 }(n,R_{ \max })
$$

#### Acumulación total y normalización final

$$
\operatorname{ { recIC }_2 }(i,r) = \begin{cases}
		0                                                                                                                                             & i = 0 \\
		\min_{ 0 \leq k_i \leq n_i } \{\operatorname{ { recIC }_2 }(i - 1,r - \operatorname{ e\_effort }(i,k_i)) + \operatorname{ conflict }(i,k_i)\} & i > 0
	\end{cases}
$$

$$
\operatorname{ valueIC }(n,R_{ \max }) = \frac{ \operatorname{ { recIC }_2 }(n,R_{ \max }) }{ n }
$$

#### Justificación equivalencia

Sea $F(i,r)$ la suma total del conflicto acumulado en los $i$ primeros grupos.

Ambas formulaciones calculan el mismo valor $\operatorname{ valueIC }(n,R_{ \max }) = \frac{ 1 }{ n } \sum_{ i = 0 }^{ n - 1 } \operatorname{ conflict }(i,k_i)$.

- Caso base: para $i = 0$, ambas definiciones retornan $0$.

- Paso inductivo: supongamos que para $i - 1$, $\operatorname{ { recIC }_1 }(i,r') = \frac{ F(i - 1,r') }{ i - 1 }$ y $\operatorname{ { recIC }_2 }(i,r') =F(i - 1,r')$.

	- $\operatorname{ { recIC }_1 }$.

		$$
		\begin{align}
			& \operatorname{ { recIC }_1 }(i,r) = \frac{ (i - 1) \cdot \operatorname{ { recIC }_1 }(i - 1,r - \operatorname{ e\_effort }(i,k_i)) + \operatorname{ conflict }(i,k_i) }{ i } \\
			& = \frac{ F(i - 1,r') + \operatorname{ conflict }(i,k_i) }{ i }
		\end{align}
		$$

	- $\operatorname{ { recIC }_2 }$.

		$$
		\begin{align}
			& \operatorname{ { recIC }_2 }(i,r) = \operatorname{ { recIC }_2 }(i - 1,r - \operatorname{ e\_effort }(i,k_i)) + \operatorname{ conflict }(i,k_i) \\
			& = F(i - 1,r') + \operatorname{ conflict }(i,k_i)
		\end{align}
		$$

Al final $\operatorname{ valueIC }(n,R_{ \max }) = \frac{ \operatorname{ { recIC }_2 }(n,R_{ \max }) }{ n } = \frac{ F(n,R_{ \max }) }{ n }$, que coincide con $\operatorname{ { recIC }_1 }(n,R_{ \max })$.

Lo cual tiene sentido, minimizar para $\frac{ F(i - 1,r') + \operatorname{ conflict }(i,k_i) }{ i }$ es equivalente a minimizar $F(i - 1,r') + \operatorname{ conflict }(i,k_i)$ porque dividir por una constante positiva ($i$) no cambia la elección del $k_i$ que da el mínimo valor.
