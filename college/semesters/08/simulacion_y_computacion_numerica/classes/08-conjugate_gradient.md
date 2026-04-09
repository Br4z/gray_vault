---
reviewed_on: "2025-02-08"
---

# Conjugate gradient

## Método general

- $\vec{ d_i }$: dirección de descenso.

- $\rho_i$: parámetros de descenso.

$$
\vec{ x_{ i + 1 } } = \vec{ x_i } + \rho \vec{ d_i }
$$

---

En el método del gradiente descendiente $\rho_i = \alpha_i$.

## Definición de sistema $A$ ortogonal

$x$ es un vector conjugado con otro vector $y$ con respecto a la matriz $A$ si

$$
\begin{align}
	& { \langle x,y \rangle }_A = 0 \quad x \neq y \\
	& { \langle x,y \rangle }_A = \sum_{ i } { \sum_{ j } { A_{ ij } x_i y_j } }
\end{align}
$$

---

- $e_i = x_i - x$.

- $r_i = b - A x_i = -A e_i$.

$$
\begin{align}
	& x_{ i + 1 } = x_i + \alpha p_i \quad d_i = p_i \quad { \langle p_i,r_j \rangle }_A = 0 \\
	& \alpha_i = \frac{ { r_i }^T p_i }{ { p_i }^T A p_i }
\end{align}
$$

El algoritmo de este método es el siguiente:

1. Recibir un $x_0$, $A$, $b$, $M$ (máximo número de iteraciones) y $\delta$ (tolerancia).

2. Definir un $p_0$ y $r_0$.

	$$
	p_0 = r_0 = b - A x_0
	$$

3. Definir un $\alpha_0$.

	$$
	\alpha_0 = \frac{ { r_0 }^T p_0 }{ { p_0 }^T A p_0 }
	$$

4. Verificar si ${ \langle p_0,r_0 \rangle }^{ \frac{ 1 }{ 2 } } < \delta$, si es así parar.

5. Hacer el siguiente proceso iterativo máximo $M - 1$ veces.

	> Al inicio $i = 1$.

	1. $x_i = x_{ i - 1 } + \alpha_{ i - 1 } p_{ i - 1 }$.

	2. $r_i = b - A x_i$.

	3. $\beta_i = \frac{ { p_{ i - 1 } }^T A r_{ i - 1 } }{ { p_{ i - 1 } }^T A p_{ i - 1 } }$.

	4. $p_i = r_i + \beta_i r_{ i - 1 }$.

	5. $\alpha_i = \frac{ { r_i }^T p_i }{ { p_i }^T A p_i }$.

	6. Verificar si $\norm{ r_i } < \delta$, si es asi parar.
