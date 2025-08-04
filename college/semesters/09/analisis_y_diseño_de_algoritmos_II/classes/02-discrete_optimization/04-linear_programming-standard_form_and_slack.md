---
reviewed_on: "2025-04-29"
---

# Linear programming: standard form and slack

## Generalidades

### Forma estándar

Maximización con restricciones de desigualdad ($\leq$) y variables no negativas.

$$
\begin{align}
	& \text{maximize}   && \sum_{ j = 1 }^n c_j * x_j \\
	& \text{subject to} && \sum_{ j = 1 }^n { a_{ ij } * x_j } \leq b_i \quad i = 1,2,\dots,m \\
	&                   && x_j \geq 0 \quad j = 1,2,\dots,n
\end{align}
$$

$$
\begin{align}
	& \text{maximize}   && c^T x \\
	& \text{subject to} && A x \leq b \\
	&                   && x \geq 0
\end{align}
$$

Es posible convertir un programa lineal dado como la minimización o maximización de una función lineal sujeta a restricciones lineales a la forma estándar.

#### Características (forma estándar)

Un programa lineal no está en forma estándar por cualquiera de las siguientes razones:

1. La función objetivo es una minimización en lugar de una maximización.

2. Hay variables para las cuales no hay restricciones de no negatividad.

3. Hay restricciones de igualdad.

4. Hay restricciones de desigualdad con el singo $\geq$.

#### Conversión a forma estándar

1. Convertir la función objetivo a maximización.

	Si el problema original es de minimización, multiplicar la función objetivo por $-1$.

2. Manejar variables no restringidas.

	Para cada variable $x_j$ sin restricción de no negatividad:

	- Reemplazarla por $x_j^+ - x_j^-$, donde $x_j^+ \geq 0$ y $x_j^- \geq 0$.

	- Actualizar todas las restricciones y la función objetivo con esta sustitución.

3. Convertir restricciones de igualdad a desigualdades.

	Sustituir cada restricción $\sum a_{ ij } x_j = b_i$ por dos restricciones

	- $\sum a_{ ij } x_j \leq b_i$.

	- $\sum a_{ ij } x_j \geq b_i$.

4. Transformar restricciones $\geq$ a $\leq$.

	Para cada restricción $\sum a_{ ij } x_j \geq b_i$ multiplicar ambos lados por $-1$.

	$$
	-\sum a_{ ij } x_j \leq -b_i
	$$

> Un paso opcional es cambiar las variables ${ x_j }^+$ y ${ x_j }^-$ por una enumeración simple.

### Forma de holgura

Maximización con restricciones de igualdad y variables no negativas.

$$
\begin{align}
	& \text{maximize}   && \sum_{ j = 1 }^n c_j * x_j \\
	& \text{subject to} && \sum_{ j = 1 }^n { a_{ ij } * x_j } = b_i \quad i = 1,2,\dots,m \\
	&                   && x_j \geq 0 \quad j = 1,2,\dots,n
\end{align}
$$

$$
\begin{align}
	& \text{maximize}   && c^T x \\
	& \text{subject to} && A x = b \\
	&                   && x \geq 0
\end{align}
$$

En la forma de holgura, cada restricción de la forma

$$
\sum_{ j = 1 }^n { a_{ ij } * x_j } \leq b_i
$$

es convertida a restricciones

$$
\begin{align}
	& x_{ n + i } = b_i - \sum_{ j = 1 }^n a_{ ij } * x_j \\
	& x_{ n + i } \geq 0
\end{align}
$$

#### Equivalencia entre restricciones de desigualdad y forma de holgura

Las formas son equivalentes porque representan la misma condición de manera algebraica distinta.

1. Desigualdad original.

	$$
	\sum_{ j = 1 }^n a_{ ij } x_j \leq b_i
	$$

	Esta restricción indica que la combinación lineal de las variables no puede superar $b_i$.

2. Introducción de la variable de holgura.

	Para convertirla en igualdad, se agrega una variable no negativa $x_{ n + i }$ (llamada **holgura**).

	$$ 
	\sum_{ j = 1 }^n a_{ ij } x_j + x_{ n + i } = b_i \quad x_{ n + i } \geq 0
	$$

3. Equivalencia lógica.

	- Si en la desigualdad original se cumple $\sum a_{ ij } x_j \leq b_i$, entonces existe un valor $x_{ n + i } \geq 0$ que "compensa" la diferencia.

		$$ 
		x_{ n + i } = b_i - \sum a_{ ij } x_j
		$$

	- Inversamente, si la ecuación $\sum a_{ ij } x_j + x_{ n + i } = b_i$ se cumple con $x_{ n + i } \geq 0$, entonces $\sum a_{ ij } x_j \leq b_i$ es cierto.

La variable de holgura actúa como un "marcador" no negativo que absorbe la diferencia entre el lado izquierdo de la desigualdad y $b_i$. Esto garantiza que ambas formas representen exactamente el mismo conjunto de soluciones posibles.

---

Si tenemos $n$ variables, cada restricción define un semiespacio en un espacio n-dimensional. Se denomina **simplex** a la región factible formada por la intersección de dichos semiespacios. La función objetivo en este caso define un **hiperplano**.

## Simplex

Un hiperplano en un espacio n-dimensional puede ser descrito por una ecuación lineal **no degenerada** con la siguiente forma:

$$
a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b
$$

Si $b = 0$, se obtiene un hiperplano lineal, que pasa a través del origen.

> No degenerada significa que toda $a_i$ son diferentes a $0$.

Las dos mitades del espacio definidas por un hiperplano en espacios de n-dimensiones son:

$$
\begin{align}
	& a_1 x_1 + a_2 x_2 + \dots + a_n x_n \leq b \\
	& a_1 x_1 + a_2 x_2 + \dots + a_n x_n \geq b
\end{align}
$$

Simplex es un algoritmo para resolver problemas LP.

1. Comienza en un vértice de la región factible (simplex).

2. Se mueve iterativamente a vértices adyacentes con mejor valor objetivo.

3. Termina al alcanzar un vértice sin vecinos mejores (óptimo global).