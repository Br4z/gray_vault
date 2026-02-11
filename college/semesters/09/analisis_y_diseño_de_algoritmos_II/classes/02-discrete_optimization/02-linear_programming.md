---
reviewed_on: "2025-04-14"
---

# Linear programming

## Metodología

1. Formulación del problema: comprender y definir claramente el objetivo del problema y las limitaciones existentes.

2. Construcción del modelo.

	1. Identificación de parámetros: valores constantes que definen el problema.

	2. Identificación de variables de decisión: incógnitas que se deben determinar.

	3. Identificación de restricciones: ecuaciones lineales que limitan las variables.

	4. Identificación de función objetivo: ecuación lineal que se optimiza.

## Solución de LPs de dos variables

La resolución de problemas de programación lineal (LP) de **dos variables** se puede abordar mediante el **método gráfico**, una técnica intuitiva que aprovecha la representación geométrica de las restricciones y la función objetivo.

1. Graficar las restricciones.

	Cada restricción se representa como una recta en el plano $x_1x_2$. Las desigualdades definen un **semiplano** (región a un lado de la recta).

2. Determinar la región factible ($\Omega$).

	- La región factible es la **intersección** de todos los semiplanos definidos por las restricciones.

	- Es un conjunto convexo que puede ser:

		- Acotado: forma un polígono cerrado.

		- No acotado: se extiende infinitamente en alguna dirección.

		- Inconsistente: no existe región factible (restricciones contradictorias).

3. Identificar los vértices de la región factible.

	- Los vértices son los puntos de intersección de las rectas que definen las restricciones.

	> En problemas acotados, estos puntos forman las "esquinas" del polígono.

4. Evaluar la función objetivo en los vértices.

5. Seleccionar la solución óptima.

	Comparar los valores de $f$ obtenidos en los vértices.

	> El mayor valor corresponde al máximo, y el menor al mínimo.

### Teorema

Sea $\Omega$ la región factible (de un polígono convexo) de un LP y sea $f = a x + b y$ la función objetivo. Cuando $f$ tenga un valor óptimo (máximo o mínimo) donde las variables $x$ y $y$ están sujetas a las restricciones de desigualdad descritas en el LP, su valor óptimo debe ocurrir en alguno de los vértices (esquinas) de la región factible.

> Si $f$ es paralela a una arista de $\Omega$, todos los puntos en esa arista son óptimos. Sin embargo, los vértices siguen siendo parte de esa solución (son los extremos de la arista).

#### Explicación intuitiva

La función objetivo $f = a x + b y$ representa una "pendiente" en el plano $xy$. 
Si dibujas $f$ para diferentes valores, se obtiene rectas que se desplazan en la dirección de crecimiento de $f$. En ese desplazamiento debe haber un último punto de contacto (con $\Omega$) que corresponderá a un vértice.