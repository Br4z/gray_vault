---
reviewed_on: "2025-08-08"
---

# Trigonometric substitution integral

$$
\int { \frac{ x }{ \sqrt{ 4 x - x^2 } } } dx
$$

Completamos el cuadrado de $4 x - x^2$.

$$
\begin{align}
	& 4 x - x^2 = -(x^2 - 4 x) \\
	& a^2 + 2 a b + b^2 \\
	& a = x \quad 2 a b = - 4 x \quad b = -\frac{ 4 x }{ 2 a } = -2 \\
	& a^2 + 2 a b + b^2 = x^2 - 4 x + 4 \\
	& 4 x - x^2 = -(x - 2)^2 + 4 \quad (1)
\end{align}
$$

Reemplazamos $(1)$ en la expresión original.

$$
\begin{align}
	& \int { \frac{ x }{ \sqrt{ -(x - 2)^2 + 4 } } } dx \quad
		\begin{array}{ll}
			u = x - 2 & du = dx \\
			x = u + 2
		\end{array} \\
	& \int { \frac{ u + 2 }{ \sqrt{ -u^2 + 4 } } } du \quad
		\begin{array}{ll}
			\sin \theta = \frac{ u }{ 2 } & \theta = \arcsin \frac{ u }{ 2 } \\
			u = 2 \sin \theta             & du = 2 \cos \theta d\theta
		\end{array} \\
		& \int { \frac{ 2 \sin \theta + 2 }{ \sqrt{ -(2 \sin \theta)^2 + 4 } } } 2 \cos \theta d\theta \\
		& \sqrt{ -(2 \sin \theta)^2 + 4 } = \sqrt{ -4 \sin^2 \theta + 4 } = \sqrt{ 4 (1 - \sin^2 \theta) } = 2 \cos \theta \\
		& \int { \frac{ 2 \sin \theta + 2 }{ 2 \cos \theta } } 2 \cos \theta d\theta = 2 \int{ \sin \theta + 1 d\theta } = 2 \left ( \int \sin \theta d\theta + \int 1 d\theta \right ) \\
		& 2 (-\cos \theta + \theta) = -2 \cos \theta + 2 \theta + C
\end{align}
$$

Volviendo a $u$.

$$
-2 \cos \theta + 2 \theta + C = -2 \cos \arcsin \frac{ u }{ 2 } + 2 \arcsin \frac{ u }{ 2 } + C
$$

Recordando que $\cos \theta = \sqrt{ 1 - \sin^2 \theta }$.

$$
\sqrt{ 1 - \sin^2 \arcsin \frac{ u }{ 2 } } = \sqrt{ 1 - \frac{ u^2 }{ 4 } } = \sqrt{ \frac{ 4 - u^2 }{ 4 } } = \frac{ \sqrt{ 4 - u^2 } }{ 2 }
$$

$$
-\sqrt{ 4 - u^2 } + 2 \arcsin \frac{ u }{ 2 } + C
$$

Volviendo a $x$.

$$
\int { \frac{ x }{ \sqrt{ 4 x - x^2 } } } dx = -\sqrt{ 4 - (x - 2)^2 } + 2 \arcsin \frac{ (x - 2) }{ 2 } + C
$$
