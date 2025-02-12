---
reviewed_on: "2025-02-06"
---

# Newton Raphson method

## Ecuación lineal

Una ecuación de primer grado o ecuación lineal es una ecuación algebraica que involucra solamente sumas y restas de una variable a la primera potencia.

---

Algunos problemas que se modelan con ecuaciones que no son lineales son:

- Difracción de la luz: $x - \tan x = 0$.

- Movimiento de los planetas alrededor del Sol: $x - a \sin x = b$ (ecuación de Kepler).

---

$$
f : \mathbb{ R } \rightarrow \mathbb{ R } \quad x \rightarrow f(x) = 0
$$

Sea $r$ un cero de $f$ y sea $x$ un valor aproximado a $r$. Si $f''$ existe, es continua y además es diferente de cero; entonces

$$
\begin{align}
	& 0 = f(r) = f(x + h) = f(x) + h { f' }(x) + O(h^2) \quad (1) \\
	& r = x + h
\end{align}
$$

Despejando de $(1)$ e ignorando el error.

$$
h \approx -\frac{ f(x) }{ { f' }(x) }
$$

El método consiste en proponer una estimación $x_0$ de $r$ e iterar de la siguiente forma:

$$
x_{ n + 1 } = x_n - \frac{ f(x_n) }{ { f' }(x_n) } \quad (2)
$$

Tenemos que el error para un $x_n$ es

$$
\begin{align}
	& e_n = x_n - r \quad (3) \\
	& e_{ n + 1 } = x_{ n + 1 } - r \quad (4)
\end{align}
$$

Reemplazando $(2)$ en $(4)$.

$$
\begin{align}
	& e_{ n + 1 } = x_n - \frac{ f(x_n) }{ { f' }(x_n) } - r \\
	& = e_n - \frac{ f(x) }{ { f' }(x) } \\
	& = \frac{ e_n { f' }(x_n) - f(x_n) }{ { f' }(x_n) } \quad (5)
\end{align}
$$

Despejando $r$ de $(3)$ y desarrollando la serie de Taylor alrededor de $x_n$.

$$
\begin{align}
	& 0 = f(r)\\
	& = f(x_n - e_n) \\
	& = f(x_n) - e_n { f' }(x_n) + \frac{ 1 }{ 2 } { e_n }^2 { f'' }(\varepsilon_n)
\end{align}
$$

> $\varepsilon_n$ está entre $x_n$ y $r$.

$$
e_n { f' }(x_n) - f(x_n) = \frac{ 1 }{ 2 } { e_n }^2 { f'' }(\varepsilon_n)
$$

Reemplazando en $(5)$.

$$
\begin{align}
	& e_{ n + 1 } = \frac{ \frac{ 1 }{ 2 } { e_n }^2 { f'' }(\varepsilon_n) }{ { f' }(x_n) } \\
	& = C { e_n }^2
\end{align}

$$

> Tanto ${ f'' }(\varepsilon_n)$ como ${ f' }(x_n)$ se consideran constantes porque son las funciones evaluadas en un punto en concreto.

## Teorema para el método de Newton Rahpson

Si $f''$ es continua; $r$ es una raíz simple. $\exists$ un vecindario alrededor de $r$ y una contante $c$ $|$ si $x_0 \in$ vecindario de $r$, se satisface que

$$
|\underbrace{ x_{ n + 1 } }_{ e_{ n + 1 } } - r| \leq c (\underbrace{ x_n - r }_{ e_{ n + 1 } })^2
$$

## Teorema para funciones convexas

Si $f \in C^2(\mathbb{ R })$, es creciente, **convexa** y $r$ es simple (el cero es único). El método **converge** desde **cualquier** punto de inicio.
