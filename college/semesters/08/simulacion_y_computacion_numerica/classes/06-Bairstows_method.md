---
reviewed_on: "2025-02-07"
---

# Bairstow's method

Este método propone factorizar un polinomio $p(x)$ usando un factor cuadrático.

$$
p(x) = q(x) (x^2 - u x - v) + r
$$

$$
\begin{align}
	& p(x) = a_0 x^n + a_1 x^{ n - 1 } + a_2 x^{ n - 2 } + \dots + a_{ n - 1 } x + a_n \\
	& \begin{array}{c|cccccc}
			u & a_0 & a_1   & a_2   & \dots & a_{ n - 1 }   & a_n \\
			v &     & u b_0 & u b_1 & \dots & v b_{ n - 2 } & u b_{ n - 1 } \\
			  &     &       & v b_0 & \dots & v b_{ n - 3 } & v b_{ n - 2 } \\
			\hline
			  & b_0 & b_1   & b_2   & \dots & b_{ n - 1 }   & b_n
		\end{array}
\end{align}
$$

El objetivo del método es llegar a $b_{ n - 1 } = 0$ y $b_n = 0$, lo que significa que el factor cuadrático sugerido ($x^2 - u x - v$) divide al polinomio $p(x)$.

Si no se cumple el objetivo, se debe llevar a cabo una nueva división sintética con el resultado anterior para determinar los coeficientes $c$ y calcular $\Delta{ u }$ y $\Delta{ v }$ para actualizar $u$ y $v$ para una siguiente iteración.

$$
\begin{array}{c|cccccc}
	u & b_0 & b_1   & b_2   & \dots & b_{ n - 1 }   & b_n  \\
	v &     & u c_0 & u c_1 & \dots & u c_{ n - 2 } &  \\
	  &     &       & v c_0 & \dots & v c_{ n - 3 } &  \\
	\hline
	  & c_0 & c_1   & c_2   & \dots & c_{ n - 1 }   & \\
\end{array}

c_i = b_i + u c_{ i - 1 } + v c_{ i - 2 }
$$

$$
\Delta{ u } = \frac{ b_n c_{ n - 3 } - b_{ n - 1 } c_{ n - 2 } }{ { c_{ n - 2 } }^2 - c_{ n - 1 } c_{ n - 3 } } \quad \Delta{ v } = \frac{ b_{ n - 1 } c_{ n - 1 } - b_n c_{ n - 2 } }{ { c_{ n - 2 } }^2 - c_{ n - 1 } c_{ n - 3 } }
$$

> Este método se puede aplicar a $q(x)$ para hallar más raíces si el grado del cociente lo permite.
