---
reviewed_on: "2025-07-31"
---

# Integer programming

## ¿Qué es la programación entera (IP)?

Es un tipo de optimización o problema de decisión.

Una instancia de IP implica:

- Un conjunto de **variables enteras**.

- Una colección de **inecuaciones lineales** sobre las variables.

- Una **función objetivo** $f(v)$ a maximizar.

- Un valor entero objetivo $B$.

El problema de decisión corresponde a hallar la asignación de valores enteros a las variables tal que se satisfagan todas las desigualdades y $f(v) \geq B$.

## $\text{IP} \in \mathrm{NP}$

El algoritmo toma el certificado, sustituye los valores en cada inecuación y comprueba si todas evalúan a verdadero, y finalmente se evalúa si el valor objetivo es mayor o igual que $B$. Estas comprobaciones se hacen en un tiempo $O(m * n + 1) = O(m * n)$. Por lo tanto, $\text{IP} \in NP$.

## $\text{3-SAT} \preceq_p \text{IP}$

### Simulación de variables

Cada variable booleana $x$ en el problema $\text{3-SAT}$ está representada por dos variables enteras en el problema IP ($x$ y $\overline{ x }$). Estas están obligadas a comportarse como booleanos con las siguientes desigualdades:

- $0 \leq x \leq 1$ y $0 \leq \overline{ x } \leq 1$: restringe los valores a $0$ (falso) y $1$ (verdadero).

- $x + \overline{ x } = 1$: asegura que una variable es el complemento lógico de la otra.

### Simulación de cláusulas

Cada cláusula $C_i = (l_{ i1 } \por l_{ i2 } \por l_{ i3 })$, se convierte en una única desigualdad lineal $l_1 + l_2 + l_3 \geq 1$. Esta desigualdad solo se satisface si al menos uno de los literales se le asigna el valor de $1$ (verdadero), imitando perfectamente el comportamiento de un OR lógico.

### Función objetiva

Dado que solo nos importa si existe una asignación satisfactoria (no encontrar un valor óptimo), la función objetivo puede ser una trivial que siempre se satisface, como $f(v) = v$ con un objetivo $B = 0$.

> $v$ es cualquier variable.

### Complejidad

Esta transformación es eficiente y se ejecuta en tiempo polinómico.

- Para $n$ variables en $\text{3-SAT}$, crea $2 n$ variables y $4 n$ inecuaciones lineales en la instancia $\text{IP}$.

- Para $m$ cláusulas en $\text{3-SAT}$, crea $m$ inecuaciones adicionales.

Esto se traduce en una complejidad temporal $O(6 n + m)$. Por lo tanto, $\text{IP}$ está en $\mathrm{NP}$ y es $\mathrm{NP}\text{-hard}$, lo que lo hace $\mathrm{NP}\text{-complete}$.
