---
reviewed_on: "2025-05-16"
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

Dadas $p$ restricciones de desigualdad.

$$
g_1(x) \leq 0,g_2(x) \leq 0,\dots,g_p(x) \leq 0, x \in \mathbb{ R }^n
$$

Se requiere que $p$ restricciones $g_i$ sean satisfechas. Esto se puede formular como

$$
\begin{align}
	& g_1(x) \leq M * y_1 \\
	& g_2(x) \leq M * y_2 \\
	& \vdots \\
	& g_p(x) \leq M * y_p \\
	& y_1 + y_2 + \dots + y_p \leq k \\
	& y_i \in \{0,1\}, i = 1,2,\dots,p
\end{align}
$$

## Condiciones lógicas en MIP

1. $x_1 \lor x_2 \implies x_3$.

	$$
	\begin{align}
		& x_1 \leq x_3 \\
		& x_2 \leq x_3
	\end{align}
	$$

2. $x_3 \implies x_1 \lor x_2$.

	$$
	x_1 + x_2 \geq x_3
	$$

3. $x_1 \land x_2 \implies x_3$.

	$$
	1 + x_3 \geq x_1 + x_2
	$$

4. $x_1 \implies x_2$.

	> Recordando el [[personal/math/fundamental_rules_of_propositional_logic#Inverse conditional|condicional inverso]].

	$$
	\neg x_1 \lor x_2
	$$
