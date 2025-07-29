---
reviewed_on: "2025-04-14"
---

# Introduction

Optimizar es el proceso de **maximizar** o **minimizar** una función objetivo deseada mientras se satisface un conjunto de **restricciones** predominantes (Belegundu and Chandrupatla, 2019).

## Pasos para resolver un problema de optimización

1. Formulación del problema.

2. Construcción del modelo matemático que representa el sistema.

3. Solución del modelo utilizando algoritmos y lenguajes de modelado.

4. Verificación del modelo y de la solución.

5. Derivación de la decisión final basada en la solución.

## El problema de programación no-lineal (NLP)

Se conoce como NLP a La mayoría de problemas de optimización que pueden ser expresados como problemas de mínimos (o máximos) de una **función** sujeta a **restricciones de igualdades y desigualdades**.

> En este sentido, la palabra "programación" significa "planificación".

### Modelo

Descripción esquemática de un sistema, teoría, o fenómeno a partir de propiedades conocidas o inferidas y que puede ser utilizado para estudiar sus características.

### Modelo matemático

Es una representación abstracta que traduce las propiedades y comportamientos de un sistema real en expresiones matemáticas. Su función principal es establecer las relaciones entre variables y parámetros, lo que facilita el análisis, la simulación y la toma de decisiones. Se desarrolla a partir de supuestos y simplificaciones que buscan capturar la esencia del fenómeno, alcanzando un equilibrio entre precisión y complejidad.

### Notación

$$
\begin{align}
	& \text{minimize}   && f(x) \\
	& \text{subject to} && g_i(x) \leq 0 \quad i = 1,\dots,m \\
	& \text{and}        && h_j(x) = 0 \quad j = 1,\dots,l \\
	& \text{and}        && x^L \leq x \leq x^U
\end{align}
$$

donde $x = (x_1,x_2,\dots,x_n)^T$ es un vector columna de $n$ **variables de decisión**. $f(x)$ es la función objetivo o fusión de costo; las $g$'s son restricciones de desigualdad y las $h$'s son restricciones de igualdad. Los vectores $x^L$ y $x^U$ representan cotas o límites inferiores y superiores de las variables $x$.

---

$$
\begin{align}
	& \text{minimize}   && f(x) \\
	& \text{subject to} && x \in \Omega
\end{align}
$$

donde $\Omega = \{x : g(x) \leq 0,\ h(x) = 0,\ x^L \leq x \leq x^U\}$. $\Omega$ es un subconjunto de $\mathbb{ R }^n$ y se denomina **región factible**.

## Teorema de Wierstrass (existencia de mínimos y máximos)

Si $f$ es una función continua, definida sobre un conjunto **cerrado** y **acotado** $\Omega \in D_f$. Entonces existen puntos $x^*$ y $x^{ ** }$ donde $f$ toma sus valores máximo y mínimo.

> Aunque es cierto que puede existir una solución cuando no se cumplen las condiciones, esto es muy poco probable en situaciones prácticas.

---

Una región $\Omega$ es **acotada** si puede ser contenida dentro de una esfera de radio finito.

## Maximizar vs. minimizar

Maximizar $f$ es equivalente a minimizar $-f$.

## Tipos de variables y problemas de optimización

Los tipos de variables en problemas de optimización incluyen:

- Continuas.

- Binarias ($0$ o $1$).

- Enteras.

- Discretas (con valores permitidos específicos).

Dependiendo de las restricciones, los problemas pueden clasificarse en:

- Programación lineal (LP): la función objetivo y las restricciones son lineales.

- Programación entera (IP): LP donde todas las variables de decisión son enteras.

- Programación binaria: un caso especial de IP.

- Programación entera mixta (MIP): algunas variables son enteras y otras continuas.

- Programación entera no-lineal (MINLP): cuando se involucran funciones no lineales.

- Programación cuadrática (QP): la función objetivo es cuadrática y las restricciones son lineales.

## Programación lineal

$$
\begin{align}
	& \text{maximize} \quad c_1 x_1 + c_2 x_2 + c_3 x_3 + \dots + c_n x_n \\
	& \text{subject to:} \\
	& a_{ i1 } x_1 + a_{ i2 } x_2 + a_{ i3 } x_3 + \dots + a_{ in } x_n \leq b_i \\
	& a_{ j1 } x_1 + a_{ j2 } x_2 + a_{ j3 } x_3 + \dots + a_{ jn } x_n \geq b_j \\
	& a_{ k1 } x_1 + a_{ k2 } x_2 + a_{ k3 } x_3 + \dots + a_{ kn } x_n = b_k \\
	& x_1 \geq 0,\ x_2 \geq 0,\ \dots,\ x_n \geq 0
\end{align}
$$

- $c_j$ y $a_{ ij }$ son coeficientes constantes.

- $b_j$ son constantes reales fijas, las cuales están ajustadas a **valores no negativos**.

- $x_j$ son **variables de decisión**.

Los problemas LP son problemas **convexos**, lo que implica que un máximo local es de hecho un máximo global.

> Un conjunto $C \subseteq \mathbb{R}^n$ es convexo si para cualquier par de puntos $x, y \in C$, el segmento que los une también está contenido en el conjunto.

### Modelamiento

Es escribir el problema en lenguaje de programación lineal. Definir las variables de decisión, el objetivo y las restricciones.

#### Variables de decisión

A diferencia de los valores que son datos del problema o que pueden calcularse directamente a partir de ellos, las variables de decisión representan cantidades desconocidas que se deben determinar para optimizar el objetivo.

#### Función objetivo

Cada problema de programación lineal tiene una función objetivo que se desea maximizar o minimizar. Esta función debe ser lineal respecto a las variables de decisión, lo que significa que está compuesta por una suma de términos en los que cada variable es multiplicada por una constante.

#### Restricciones

Representan las condiciones o limitaciones que deben cumplirse en el problema. Definen la región factible dentro de la cual se debe buscar la solución óptima. En programación lineal, las restricciones deben ser expresadas como ecuaciones o inecuaciones lineales.
