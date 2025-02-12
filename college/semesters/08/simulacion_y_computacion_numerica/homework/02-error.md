---
reviewed_on: "2024-09-22"
---

# Error

## 2

Encuentre el más grande intervalo en el cual $p^*$ debe encontrarse para aproximar $p$ con un error relativo máximo de $10^{ -4 }$.

$$
E_r \leq 10^{ -4 } \quad \frac{ |p - p^*| }{ |p| } \leq 10^{ -4 }
$$

Si $p > 0$.

$$
|p - p^*| \leq p 10^{ -4 } \quad -p 10^{ -4 } \leq p - p^* \leq p 10^{ -4 } \\[10 pt]

-p 10^{ -4 } - p \leq -p^* \leq p 10^{ -4 } - p \\[10 pt]

p 10^{ -4 } + p \geq p^* \geq p - p 10^{ -4 }
$$

## 3

Suponga que $p^∗$ debe aproximar $p$ con un error relativo máximo de $10^{ -3 }$ . Encuentre el más grande intervalo en el cual $p^∗$ debe encontrarse para un valor $p$.

De forma analoga al punto anterior.

$$
p 10^{ -3 } + p \geq p^* \geq p - p 10^{ -3 }
$$

## 4

Realice los siguientes cálculos:

Determine:

1. Resultado exacto.

2. Resultado usando aritmética de $3$ dígitos con corte.

3. Resultado usando aritmética de $3$ dígitos con redondeo.

4. Calcule los errores relativos para los datos de los numerales $2$ y $3$.

### $\frac{ 4 }{ 5 } + \frac{ 1 }{ 3 }$

1. $\frac{ 17 }{ 15 }$.

2. $1.133$.

3. $1.133$.

4. $\frac{ |\frac{ 17 }{ 15 } - 1.133| }{ |\frac{ 17 }{ 15 }| } \approx 2.94 * 10^{ - 4 }$.

### $\left ( \frac{ 1 }{ 3 } - \frac{ 3 }{ 11 } \right ) + \frac{ 3 }{ 20 }$

1. $\frac{ 139 }{ 660 }$.

2. $0.210$.

3. $0.211$.

4. .

    - Corte: $\frac{ |\frac{ 139 }{ 660 } - 0.210| }{ |\frac{ 139 }{ 660 }| } \approx 2.87 * 10^{ -3 }$.

    - Redondeo: $\frac{ |\frac{ 139 }{ 660 } - 0.211| }{ |\frac{ 139 }{ 660 }| } \approx 1.87 * 10^{ -3 }$.

### $\left ( \frac{ 1 }{ 3 } - \frac{ 3 }{ 11 } \right ) - \frac{ 3 }{ 20 }$

1. $-\frac{ 59 }{ 660 }$.

2. $-0.0893$.

3. $-0.084$.

4. .

    - Corte: $\frac{ |-\frac{ 59 }{ 660 } - (-0.0893)| }{ |\frac{ 59 }{ 660 }| } \approx 1.05 * 10^{ -3 }$.

    - Redondeo: $\frac{ |-\frac{ 59 }{ 660 } - (-0.0894)| }{ |\frac{ 59 }{ 660 }| } \approx 6.73 * 10^{ -4 }$.

## 5

Utilice aritmética de $5$ dígitos para determinar las raíces de la siguiente ecuación:

$$
x^2 - 5000.002 x + 10 = 0
$$

$$
x_1 = \frac{ 5000.002 + \sqrt{ (-5000.002)^2 - 40 } }{ 2 } \\[10 pt]

x_2 = \frac{ 5000.002 - \sqrt{ (-5000.002)^2 - 40 } }{ 2 } \\[10 pt]

x_1 = 5000.0 \quad x_2 = 0.0020000
$$

## 6

Suponga que dos puntos $(x_0, y_0)$ y $(x_1, y_1)$ están en una línea recta con $y_0 \neq y_1$. Si se dispone de dos fórmulas para encontrar la intersección en el eje x de la línea.

$$
x = \frac{ x_0 y_1 - x_1 y_0 }{ y_1 - y_0 } \quad x = x_0 - \frac{ (x_1 - x_0) y_0 }{ y_1 - y_0 }
$$

### Muestre que ambas fórmulas son equivalentes

$$
x_0 - \frac{ (x_1 - x_0) y_0 }{ y_1 - y_0 } \quad \frac{ x_0 (y_1 - y_0) - (x_1 - x_0) y_0 }{ y_1 - y_0 } \\[10 pt]

\frac{ x_0 y_1 - x_0 y_0 - x_1 y_0 + x_0 y_0 }{ y_1 - y_0 } = \frac{ x_0 y_1 - x_1 y_0 }{ y_1 - y_0 }
$$

### Use los datos $(x_0, y_0) = (1.32,3.24)$ y $(x_1, y_1) = (1.96,4.76)$ y aritmética de redondeo a $3$ dígitos para calcular la intersección en el eje x usando ambas fórmulas

$$
\frac{ 1.32 * 4.76 - 1.96 * 3.24 }{ 4.76 - 3.24 } = -\frac{ 0.0672 }{ 1.52 } \approx 4.42 * 10^{ -2 }
$$

$$
1.32 - \frac{ (1.96 - 1.32) 3.24 }{ 4.76 - 3.24 } \approx 4.42 * 10^{ -2 }
$$

## 7

Debe seleccionar la medición más confiable de una pieza de metal que idealmente debería tener $100 \text{cm}$ de longitud. Cada medición se realizó con un instrumento diferente con distintos niveles de incertidumbre. A continuación se presentan las mediciones de la pieza de metal junto con el instrumento utilizado para cada una:

### $99.7 \pm 0.1 \text{cm}$

$$
99.6 \leq V_r \leq 99.8 \\[10 pt]

0.2 \leq E_a \leq 0.4 \\[10 pt]

2 * 10^{ -3 } \leq E_r \leq 4 * 10^{ -3 }
$$

### $100.2 \pm 0.05 \text{cm}$

$$
100.15 \leq V_r \leq 100.25 \\[10 pt]

0.25 \leq E_a \leq 0.15 \\[10 pt]

1.5 * 10^{ -3 } \leq E_r \leq 2.5 * 10^{ -3 }
$$

### $100.0 \pm 0.02 \text{cm}$

$$
99.98 \leq V_r \leq 100.02 \\[10 pt]

E_a = 0.02 \quad E_r = 2 * 10^{ -4 }
$$

### $99.9 \pm 0.03 \text{cm}$

$$
99.87 \leq V_r \leq 99.93 \\[10 pt]

0.13 \leq E_a \leq 0.07 \\[10 pt]

7 * 10^{ -4 } \leq E_r \leq 1.3 * 10^{ -3 }
$$

### $100.1 \pm 0.01 \text{cm}$

$$
100.09 \leq V_r \leq 100.11 \\[10 pt]

0.09 \leq E_a \leq 0.11 \\[10 pt]

9 * 10^{ -4 } \leq E_r \leq 1.1 * 10^{ -3 }
$$

---

La mejor medida es la $3$, pues se tiene certeza de su $E_a$ y $E_r$, además de que son los valores más pequeños de todas las mediciones propuestas.

## 8

Un paralelepípedo rectangular tiene dimensiones de $3 \text{cm}$, $4 \text{cm}$ y $5 \text{cm}$, medidas con una precisión de $\pm 0.5 \text{cm}$. ¿Cuáles son los límites superior e inferior más precisos para el volumen de este paralelepípedo?  ¿Cuáles son los límites superior e inferior más precisos para el área superficial?

$$
V = l * w * h \quad A = 2 (l w + l h + w h)
$$

- Valores mínimos.

    $$
    l = 2.5 \quad w = 3.5 \quad h = 4.5 \\[10 pt]

    V_{ \text{min} } = 2.5 * 3.5 * 4.5 = 39.375 \quad A_{ \text{min} } = 2 (2.5 * 3.5 + 2.5 * 4.5 + 3.5 * 4.5) = 71.5
    $$

- Valores máximos.

    $$
    l = 3.5 \quad w = 4.5 \quad h = 5.5 \\[10 pt]

    V_{ \text{max} } = 3.5 * 4.5 * 5.5 = 86.625 \quad A_{ \text{max} } = 2 (3.5 * 4.5 + 3.5 * 5.5 + 4.5 * 5.5) = 119.5
    $$

## 9

El número $e$ puede ser definido de la siguiente forma:

$$
e = \sum_{ n = 0 }^\infty \frac{ 1 }{ n! }
$$

Haga las siguientes aproximaciones y calcule el error absoluto y relativo de cada aproximación respecto al valor real de $e$ (tomaremos este valor como $2.718281828$).

### $\sum_{ n = 0 }^5 \frac{ 1 }{ n! } = \frac{ 163 }{ 60 }$

- $E_a = 1.615161 * 10^{ -3 }$.

- $E_r = 5.941846 * 10^{ -4 }$.

### $\sum_{ n = 0 }^{ 10 } \frac{ 1 }{ n! } = \frac{ 9864101 }{ 3628800 }$

- $E_a = 2.69 * 10^{ -8 }$.

- $E_r = 9.9 * 10^{ -9 }$.
