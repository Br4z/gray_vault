---
reviewed_on: "2025-03-15"
---

# Moderating internal conflict of opinion in a social network

Una red social $SN$ es una pareja $\langle SA,R_\max \rangle$, donde $SA$ es una secuencia de grupo de agentes $SA = \langle a_0,\dots,a_{ n - 1 } \rangle$ y $R_\max \geq 0 \land R_\max \in \mathbb{ N }$ representa el valor entero máximo con el que se cuenta para moderar las opiniones de la red $SN$.

Un grupo de agentes $a_i$ es una tupla

$$
a_i = \langle n_i,o_{ i,1 },o_{ i,2 },r_i \rangle
$$

donde:

- $n_i$: es el número de agentes que pertenecen al grupo de agentes $i$.

- $o_{ i,1 }$: representa la opinión de cada agente del grupo $i$ sobre la afirmación $1$.

- $o_{ i,2 }$: representa la opinión de cada agente del grupo $i$ sobre la afirmación $2$.

- $r_i$: representa el nivel de rigidez de cada agente del grupo $i$ ($0 \leq i < n$).

El valor de conflicto interno de una red $SN$ se define de la siguiente manera:

$$
\operatorname{IC}(SN) = \frac{\sum_{ i = 0 }^{ n - 1 }{ n_i * (o_{ i,1 } - o_{ i,2 })^2 }}{ \sum_{ i = 0 }^{ n - 1 } n_i }
$$

Una **estrategia de cambio de opinión** de una red $SN$ es una secuencia:

$$
E = \langle e_0,e_1,\dots,e_{ n - 1 } \rangle
$$

donde $e_i$ indica el número de agentes del grupo $i$ cuya opinión será modificada, además se cumplen las siguientes restricciones:

- $0 \leq e_i \leq n_i$.

- $\sum_{ i = 0 }^{ n - 1 } e_i \leq \sum_{ i = 0 }^{ n - 1 } n_i$.

Aplicar una estrategia de cambio de opinión $E$ a una red $SN$, denotado como $\operatorname{ModIC}(SN,E)$, da como resultado una nueva red ${SN}'$ donde:

$$
{ n' }_i = n_i - e_i
$$

Se asume que los agentes con opiniones ajustadas por $E$ ya no forman parte de la red resultante ${SN}'$.

El **esfuerzo** necesario para ajustar las opiniones sobre $SN$ con la estrategia $E$ se define como:

$$
\operatorname{effort}(SN,E) = \sum_{ i = 0 }^{ n - 1 } \left \lceil |o_{ i,1 } - o_{ i,2 }| \cdot r_i \cdot e_i \right \rceil
$$

Una estrategia $E$ es **aplicable** si:

$$
\operatorname{Effort}(SN,E) \leq R_\max
$$

## Entrada

Una red social $SN = \langle SA,R_\max \rangle$

## Salida

Una estrategia de cambio de opinión $E$ aplicable a la red $SN$, es decir:

$$
\operatorname{Effort}(SN,E) \leq R_{\max}
$$

tal que:

$$
\operatorname{ IC }(\operatorname{ ModIC }(SN,E))
$$

sea mínimo.
