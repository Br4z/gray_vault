---
reviewed_on: "2025-02-07"
---

# Gradient descent

$A x = b$, número de condición, $\rho = \frac{ \lambda_{ \text{max} } }{ \lambda_{ \text{min} } }$, $\lambda \in \text{valores propios de } A$.

Si $\rho$ es muy grande, el sistema es mal condicionado, lo que significa que la solución es sensible a pequeñas perturbaciones y el método de gradiente conjugado puede converger lentamente.

---

Las matrices, donde el número de ceros es mayor que el número de no ceros, se denominan matrices **dispersas**.

---

Por el teorema de sistemas equivalentes, podemos expresar $A x = b$ como

$$
\begin{align}
	& Q x = (Q - A) x + b \\
	& x = (I - Q^{ -1 } A) x + Q^{ -1 } b \\
	& x^{ (k) } = (I - Q^{ -1 } A) x^{ (k - 1) } + Q^{ -1 } b \\
	& x^{ (k) } - x = (I - Q^{ -1 } A) (x^{ (k - 1) } - x)
\end{align}
$$

$$
\begin{align}
	& \norm{ x^{ (k) } - x } \leq \norm{ I - Q^{ -1 } A } \norm { x^{ (k - 1) } - x } \\
	& \frac{ \norm{ x^{ (k) } - x } }{ \norm { x^{ (k - 1) } - x } } \leq \norm{ I - Q^{ -1 } A } 
\end{align}
$$

Para que la desigualdad anterior se cumpla, es necesario que

$$
\norm{ I - Q^{ -1 } A } < 1
$$

Esta condición asegura que el método iterativo converge, ya que el factor de contracción $\norm{ I - Q^{ -1 } A }$ es menor que $1$, lo que implica que las iteraciones sucesivas se acercan cada vez más a la solución $x$.

## Suposiciones de $Q$

1. Richardson: $I$.

2. Jacobi: $D$ (diagonal) $d_{ ii } = a_{ ii }$.

3. Gauss-Seidel: $T_\text{inf} \rightarrow t_{ ij } = a_{ ij }$.

---

Una matriz es diagonalmente dominante cuando se cumple que

$$
\abs{ a_{ ii } } \geq \sum_{ \underset{ j \neq i }{ j = 1 } }^n \abs{ a_{ ij } }
$$

---

Sea $A x = b$, donde $A$ es real, simétrica y definida positiva.

$$
q(x) = \langle x,A x \rangle - 2 \langle x,b \rangle
$$

Comportamiento en una dimensión

$$
q(\vec{ x } + t \vec{ v }) = \langle \vec{ x } + t \vec{ v },A (\vec{ x } + t \vec{ v }) \rangle - 2 \langle \vec{ x } + t \vec{ v },b \rangle
$$

$$
\begin{align}
	& q(x) = \frac{ 1 }{ 2 } x^T A x - b^T x + c \\
	& \nabla q(x) = \frac{ 1 }{ 2 } A^T x + \frac{ 1 }{ 2 } A x - b
\end{align}
$$

$\nabla q(x)$ corresponde a la primera derivada (gradiente) y estamos hallando un mínimo.

$$
\nabla q(x) = \frac{ 1 }{ 2 } (A^T + A) x - b = A x - b
$$

Suponiendo que $A$ es simétrica y positiva, definida.

## Matriz positiva definida

Una matriz $A$ es positiva definida si para cualquier vector no nulo $x$, el producto cuadrático $x^T A x$ es positivo. Esto implica que todos los valores propios de $A$ son positivos.

## Vector propio de una matriz

Dado un vector no nulo $v$ y una matriz cuadrada $A$, el vector $v$ es un vector propio de $A$ si existe un escalar $\lambda$ tal que: $A v = \lambda v$.

> Nos referiremos a estos $\lambda$ como valores propios.

---

- Si $A$ es simétrica y negativa, definida $\nabla q(x) = 0$ halla un máximo.

---

- Error: $e_i = x_i - x$.

- Residuo $r_i = b - A x_i$.

$$
\begin{align}
	& r_i = A x - A x_i \\
	& = A (x - x_i) \\
	& = -A e_i
\end{align}
$$

## Ecuación de iteración

$$
\begin{align}
	& x_{ i + 1 } = x_i - \alpha_i \nabla q(x_i) \\
	& x^{ (k + 1) } = x^{ (k) } + t_k v^{ (k) }
\end{align}
$$

$$
\begin{align}
	& -\nabla q(x_i) = b - A x = r_i \\
	& x_{ i + 1 } = x_i + \alpha_i r_i 
\end{align}
$$

El nuevo residuo $r_{ i + 1 }$ es ortogonal al residuo anterior $r_i$ (${ r_{ i + 1 } }^T r_i = 0$).

$$
\begin{align}
	& r_{ i + 1 } = b - A x_{ i + 1 } \\
	& = b (x_i + \alpha_i r_i) \\
	& = b - A x_i - \alpha_i A r_i \\
	& = r_i - \alpha_i A r_i
\end{align}
$$

$$
\begin{align}
	& { r_i }^T r_{ i + 1 } = { r_i }^T (r_i - \alpha_i A) \\
	& 0 = { r_i }^T (r_i - \alpha_i A) \quad \alpha_i = \frac{ { r_i }^T r_i }{ { r_i }^T A r_i }
\end{align}
$$

1. $r_i = b - A x_i$.

2. $\alpha_i = \frac{ { r_i }^T r_i }{ { r_i }^T A r_i }$.

3. $x_{ i + 1 } = x_i + \alpha_i r_i$.
