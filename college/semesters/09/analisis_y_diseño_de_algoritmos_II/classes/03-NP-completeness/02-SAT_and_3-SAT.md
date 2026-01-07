---
reviewed_on: "2025-08-03"
---

# $\text{SAT}$ and $\text{3-SAT}$

## $\text{3-SAT}$

![[personal/computer_science/problems/SAT#Special case $3$-SAT|$3$-SAT]]

## $\text{3-SAT} \in \mathrm{NP}$

El **"algoritmo"** toma el certificado, sustituye los valores en cada cláusula y comprueba si todas evalúan a verdadero, esto es $O(3 * \card{ C }) = O(\card{ C })$, respondiendo positivamente para **instancias positivas** y negativamente para **instancia negativa**. Por lo tanto, $\text{3-SAT} \in \mathrm{NP}$.

> El algoritmo corresponde a uno de **verificación**.

## $\text{SAT} \preceq_p \text{3-SAT}$

La idea es transformar cada cláusula de una instancia de $\text{SAT}$ en una o más cláusulas de $\text{3-SAT}$, dependiendo del número de literales ($k$).

### $k = 1$ ($z_1$)

Se crean dos variables $v_1$, $v_2$ y cuatro clausulas.

$$
(v_1 \por v_2 \por z_1) \pand (v_1 \por \lnot v_2 \por z_1) \pand (\lnot v_1 \por v_2 \por z_1) \pand (\lnot v_1 \por \lnot v_2 \por z_1)
$$

### $k = 2$ ($z_1 \por z_2$)

Se crea una nueva variable $v_1$ y dos cláusulas.

$$
(v_1 \por z_1 \por z_2) \pand (\lnot v_1 \por z_1 \por z_2)
$$

### $k = 2$ ($z_1 \por z_2 \por z_3$)

No se hace nada.

### $k > 3$ ($z_1 \por z_2 \por \dots \por z_k$)

Se crean $k - 3$ variables y $k - 2$ cláusulas.

$$
\begin{align}
	& (z_1 \por z_2 \por v_1) \\
	& \pand (\lnot v_1 \por z_3 \por v_2) \\
	& \pand (\lnot v_2 \por z_4 \por v_3) \\
	& \pand \dots \\
	& \pand (\lnot v_i \por z_{ i + 2 } \por v_{ i + 1 }) \\
	& \pand \dots \\
	& \pand (\lnot v_{ k - 4 } \por z_{ k - 2 } \por v_{ k - 3 }) \\
	& \pand (\lnot v_{ k - 3 } \por z_{ k - 1 } \por z_k)
\end{align}
$$

Si se tienen $m$ cláusulas y $n$ literales en una instancia de SAT, y la cláusula más grande tiene $k$ literales, la complejidad temporal de esta reducción es $O(n + m * k)$ (**polinomial**) y el tamaño de la instancia es $O(m * k)$ (**polinomial**). Por lo tanto, $\text{3-SAT}$ está en $\mathrm{NP}$ y es $\mathrm{NP}\text{-hard}$, lo que lo hace $\mathrm{NP}\text{-complete}$.

## $\text{X-SAT}$: generalización

El "algoritmo" para verificar un certificado tiene que recorrer todas las cláusulas, cada una con máximo $X$ literales. Esto nos da una complejidad $O(X * m)$ (polinomial, debido a que $X$ es una constante) y demuestra que el problema está en $\mathrm{NP}$.

## $\text{3-SAT} \preceq_p X-\text{SAT}$ ($X > 3$)

Para convertir una cláusula de $3$ literales en una cláusula con exactamente $X$ literales, necesitamos introducir $X - 3$ variables y $2^{ X - 3 }$ clausular para cubrir todas las posibles combinaciones de estas variables.

La complejidad temporal de esta reducción es $O(n + m * 2^{ X - 3 })$ y la espacial es $O(m * 2^{ X - 3 })$. Por lo tanto, $\text{X-SAT}$ está en $\mathrm{NP}$ y es $\mathrm{NP}\text{-hard}$, lo que lo hace $\mathrm{NP}\text{-complete}$.

## Implicaciones y conclusiones

- $\text{2-SAT}$: este método no funciona para $\text{2-SAT}$ porque no se pueden crear las "cadenas" con variables auxiliares. De hecho, $\text{2-SAT}$ se puede resolver en tiempo polinomial y no es $\mathrm{NP}\text{-complete}$.

- $\text{1-SAT}$: es un problema trivial de resolver.

La dificultad real de los problemas de satisfactibilidad comienza cuando hay $3$ o más literales por cláusula.
