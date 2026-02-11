---
reviewed_on: "2025-02-07"
---

# Calculation of roots of polynomials

Un polinomio tiene la forma

$$
P(z) = a_n z^n + a_{ n - 1 } z^{ n - 1 } + \dots + a_1 z + a_0 \quad (1)
$$

donde $a_k$ corresponde al coeficiente de $z^k$, que puede ser un número complejo (en la evaluación del polinomio).

Si $a_n \neq 0$ el grado del polinomio es $n$.

## Teorema fundamental del álgebra

Todo polinomio no constante de grado $n$ con coeficientes complejos tiene exactamente $n$ raíces complejas (contando multiplicidades).

> No postula la existencia de raíces reales.

## Teorema del factor

Cuando dividimos $P(z)$ por un divisor lineal $z - c$, el resto es $P(c)$.

$$
P(z) = (z - c) q(z) + P(c)
$$

Si $P(c) = 0$, entonces $c$ es una raíz y $z - c$ un factor exacto.

## Descomposición en factores lineales

$$
\begin{align}
	P_n (z)         & = (z - c_1) q(z) \\
	q_{ n - 1 } (z) & = (z - c_2) q_{ n - 2 }(z) \\
	q_{ n - 2 } (z) & = (z - c_3) q_{ n - 3 }(z) \\
	\vdots \\
	q_1             & = (z - c_n) q_0
\end{align}
$$

$$
P_n(z) = (z - c_1) (z - c_2) \dots (z - c_n) q_0
$$

## Teorema de localización de raíces

Todas las raíces de un polinomio de grado $n$ caen en el disco abierto con centro en el origen del plano complejo con radio

$$
\rho = 1 + { |a_n| }^{ -1 } \underset{ 0 \leq k < n }{ \operatorname{ max } } |a_k|
$$

### Función transformada $S(z)$

Para analizar las raíces fuera del disco unitario, consideramos

$$
\begin{align}
	& S(z) = z^n P \left ( \frac{ 1 }{ z } \right ) \\
	& = z^n \left [a_n \left ( \frac{ 1 }{ z }\right )^n + a_{ n - 1 } \left ( \frac{ 1 }{ z }\right )^{ n - 1 } + \dots + a_0 \right ] \\
	& = a_n + a_{ n - 1 } z + a_{ n - 2 } z^2 + \dots + a_0 z^n
\end{align}
$$

Si todas las raíces de $S(z)$ están dentro de un disco de radio $\rho_S$, entonces todas las raíces no nulas de $P(z)$ están fuera del disco de radio ${ \rho_S }^{ -1 }$.

$$
{ \rho_S }^{ -1 } < |z| < \rho_P
$$

## Algoritmo de Horner

Produce un número $P(z_0)$ y el polinomio

$$
q_{ n - 1 }(z) = \frac{ P_n(z) - P_n(z_0) }{ z - z_0 } \quad (2)
$$

donde $q$ es un polinomio de un grado menor que $P$.

$$
P_n(z) = (z - z_0) q_{ n - 1 }(z) + P_n(z_0) \quad (3)
$$

$q(z)_{ n - 1 }$ puede expresarse como

$$
q(z)_{ n - 1 } = b_0 + b_1 z + \dots + b_{ n - 1 } z^{ n - 1 }
$$

$$
\begin{align}
	b_{ n - 1 } & = a_n \\
	b_{ n - 2 } & = a_{ n - 1 } + z_0 b_{ n - 1 } \\
	b_{ n - 3 } & = a_{ n - 2 } + z_0 b_{ n - 2 } \\
	\vdots \\
	b_0         & = a_1 + z_0 b_1 \\
	P(z_0)      & = a_0 + z_0 b_0
\end{align}
$$

### Pseudocódigo

```
input: p_coefficients, z_0
	n = len(p_coefficients)
	b_n = a_n

	for k = n - 1 to 0 step = -1 do
		b_k = a_k + z_0 b_(k + 1)
	end do

	q_z = list(b_i : 1 <= i <= n)

	b_0 = p(z_0)
```

- `p_coefficients` es la lista con los coeficientes del polinomio $P$, en la forma `[a_0,a_1,...,a_n]`.

- `n` es el grado del polinomio $p$.
