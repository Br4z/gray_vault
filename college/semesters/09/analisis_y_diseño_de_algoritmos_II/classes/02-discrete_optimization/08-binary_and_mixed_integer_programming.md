---
reviewed_on: "2025-07-04"
---

# Binary and mixed integer programming

Es muy común encontrar problemas de optimización (o de satisfacción) donde la solución dependa de un conjunto de variables binarias y continuas (o enteras). Este tipo de programación recibe el nombre de programación entera mixta (MIP).

## Satisfacción de una restricción entre dos restricciones

Dadas dos restricciones de desigualdad.

$$
g_1(x) \leq 0,g_2(x) \leq 0, x \in \mathbb{ R }^n
$$

Se requiere que al menos una de las restricciones $g_i$ sea satisfecha. Esto se puede formular como

$$
\begin{align}
	& g_1(x) \leq M * y \\
	& g_2(x) \leq M * (1 - y) \\
	& y \in \{0,1\}
\end{align}
$$

donde $M$ es un número constante grande (big M). De esta forma "activamos" una restricción y "desactivamos" la otra.

## Satisfacción de $k$ de $p$ restricciones

Sea un conjunto de $p$ inecuaciones lineales (o no lineales).

$$
g_1(x) \leq 0,g_2(x) \leq 0,\dots,g_p(x) \leq 0, x \in \mathbb{ R }^n
$$

Queremos que **al menos** $k$ (con $1 \leq k \leq p$) de esas restricciones se cumpla.

### $y_i = 1$ viola la restricción

$$
\begin{align}
	& g_i(x) \leq M * y_i \quad i = 1,\dots,p \\
	& \sum_{ i = 1 }^p y_i \leq p - k \\
	& y_i \in \{0,1\}
\end{align}
$$

- $y_i = 0$: **apaga** el término $M * y_i$; la restricción $g_i(x) \leq 0$ debe cumplirse.

- $y_i = 1$: **relaja** la inecuación (añadimos $M$), permitiendo violarla hasta $M$.

Como a lo sumo $p - k$ variables binarias pueden ser $1$, **al menos** $k$ restricciones originales permanecen activas.

### $y_i = 1$ cumple la restricción

$$
\begin{align}
	& g_i(x) \leq M (1 - y_i) \quad i = 1,\dots,p \\
	& \sum_{ i = 1 }^p y_i \geq k \\
	& y_i \in \{0,1\}
\end{align}
$$

- $y_i = 0$: desactiva la restricción con el término $M$.

- $y_i = 1$: obliga $g_i(x) \leq 0$ (porque $M (1 - y_i) = 0$).

Exigir $\sum_{ i = 1 }^p y_i \geq k$ garantiza que se **activen al menos** $k$ restricciones.

---

- En inecuaciones de tipo $\geq$ se resta $M$ en lugar de sumarlo.

- Las igualdades $g_i(x) = 0$ se sustituyen por dos inecuaciones $\leq$ y $\geq$.

## Condiciones lógicas en MIP

1. $x_1 \por x_2 \implies x_3$.

	$$
	\begin{align}
		& x_1 \leq x_3 \\
		& x_2 \leq x_3
	\end{align}
	$$

2. $x_3 \implies x_1 \por x_2$.

	$$
	x_1 + x_2 \geq x_3
	$$

3. $x_1 \pand x_2 \implies x_3$.

	$$
	1 + x_3 \geq x_1 + x_2
	$$

4. $x_1 \implies x_2$.

	> Recordando el [[personal/math/fundamental_rules_of_propositional_logic#Inverse conditional|condicional inverso]].

	$$
	\neg x_1 \por x_2
	$$
