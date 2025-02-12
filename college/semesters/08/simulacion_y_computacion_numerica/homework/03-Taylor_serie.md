---
reviewed_on: "2024-09-24"
---

# Taylor serie

## 1

Sea $f(x) = x^3$.

### Encuentre el segundo polinomio de Taylor $P_2(x)$ alrededor de $x_0 = 0$

$$
P_2(x) = 0 + 3 (x_0)^2 x + \frac{ 6 (x_0) }{ 2! } x^2 = 0
$$

### Encuentre $R_2(0.5)$ y el error real usando $P_2(0.5)$ para aproximar $f(0.5)$

$$
f(0.5) = 0.125 \quad P_2(0.5) = 0 \quad R_2 = 0.125
$$

## 2

Encuentre $P_3$ para $f(x) = \sqrt{ 1 + x }$ alrededor de $x_0 = 0$.

$$
P_3 = 1 + \frac{ (1 + x_0)^{ -\frac{ 1 }{ 2 } } }{ 2 } x - \frac{ (1 + x_0)^{ -\frac{ 3 }{ 2 } } }{ 4 * 2! } x^2 + \frac{ 3 (1 + x_0)^{ -\frac{ 5 }{ 2 } } }{ 8 * 3! } x^3 \\[10 pt]

P_3 = 1 + \frac{ 1 }{ 2 } x - \frac{ 1 }{ 8 } x^2 + \frac{ 1 }{ 16 } x^3
$$

Usando $P(3)$ aproxime:

### $\sqrt{ 0.5 }$

$$
f(x) = 0.7071067812 \quad P_3(-0.5) = 0.7109375 \\[10 pt]

E_a = |0.7071067812 - 0.7109375| = 3.8307188 * 10^{ -3 }
$$

### $\sqrt{ 0.75 }$

$$
f(x) = 0.8660254038 \quad P_3(-0.25) = 0.8662109375 \\[10 pt]

E_a = |0.8660254038 - 0.8662109375| = 1.855337 * 10^{ -5 }
$$

### $\sqrt{ 1.25 }$

$$
f(x) = 1.1180339887 \quad P_3(0.25) = 1.11816 \\[10 pt]

E_a = |1.1180339887 - 1.11816| = 1.260113 * 10^{ -4 }
$$

### $\sqrt{ 1.5 }$

$$
f(x) = 1.2247448714 \quad P_3(0.5) = 1.2265625 \\[10 pt]

E_a = |1.2247448714 - 1.2265625| = 1.8176286 * 10^{ -3 }
$$

## 3

El polinomio de Taylor de grado $n$ para $f(x) = e^x$ es:

$$
P_n(x) = \sum_{ i = 0 }^n \frac{ x^i }{ i! }
$$

Usando el polinomio de grado $9$ y aritmética de $3$ cifras de redondeo, encuentre una aproximación para $e^{ -5 }$ mediante cada uno de los siguientes métodos:

### $e^{ -5 } \approx \sum_{ i = 0 }^9 \frac{ (-5)^i }{ i! } = \sum_{ i = 0 }^9 \frac{ (-1)^i 5^i }{ i! }$

$$
e^{ -5 } = -\frac{ 33151 }{ 18144 } \approx -1.83
$$

### $e^{ -5 } = \frac{ 1 }{ e^5 } = \frac{ 1 }{ \sum_{ i = 0 }^9 \frac{ 5^i }{ i! } }$

$$
e^{ -5 } = \frac{ 36288 }{ 5214203 } = 6.96 * 10^{ -3 }
$$

### Un valor de aproximación de $e^{ -5 }$ con 3 digitos es $6.74 * 10^{ -3 }$. ¿Cuál fórmula da la mejor exactitud y por qué?

La segunda fórmula es más exacta que la primera porque la convergencia es más estable y rápida cuando se suman términos positivos que cuando se suman términos alternados en signo.

## 4

Sea $f(x) = 2 x \cos{ 2 x } - (x - 2)^2$ alrededor de $x_0 = 0$.

### Encuentre $P_3(x)$ y úselo para aproximar $f(0.4)$

$$
f' = 2 \cos{ 2 x } - 4 x \sin{ 2 x } - 2 x + 4 \\[10 pt]

f'' = -4 \sin{ 2 x } - 4 \sin{ 2 x } - 8 x \cos{ 2 x } - 2 = -8 \sin{ 2 x } - 8 x \cos{ 2 x } - 2 \\[10 pt]

f''' = -16 \cos{ 2 x } - 8 \cos{ 2 x } + 16 x \sin{ 2 x } = -24 \cos{ 2 x } + 16 x \sin{ 2 x } \\[10 pt]

P_3(x) = -4 + 6 x - x^2 - 4 x^3
$$

$$
f(0.4) = -2.00263 \quad P_3(0.4) = -2.016
$$

### Use la fórmula de error en el Teorema de Taylor para encontrar un límite superior para el error $|f(0.4) - P_3(0.4)$. Calcule el error real

$$
R_3(x) = \frac{ f^4(\xi) }{ 4! } x^4 \\[10 pt]

f^4 = 64 \sin{ 2 x } + 32 x \cos{ 2 x }
$$

Evaluamos en $x = 0$ para obtener la cota del error:

$$
f^4(0) = 0 \quad R_3(x) = 0
$$

$$
E_a = |-2.00263 - (-2.016)| = 1.337 * 10^{ -2 }
$$

## 5

Sea $f(x) = \sin{ x }$ alrededor de $x_0 = 0$ encuentre:

### $P_3(x)$

$$
f' = \cos{ x } \\[10 pt]

f'' = -\sin{ x } \\[10 pt]

f''' = -\cos{ x } \\[10 pt]

P_3(x) = 0 + x - 0 + \frac{ 1 }{ 3! } x^3 = x - \frac{ x^3 }{ 3! }
$$

### $P_5(x)$

$$
f^4 = \sin{ x } \\[10 pt]

f^5 = \cos{ x } \\[10 pt]

P_5(x) = x - \frac{ x^3 }{ 3! } + \frac{ x^5 }{ 5! }
$$

### Calcule $\sin{ 0.5 }$ usando las dos expresiones de Taylor y compare los resultados con el valor exacto

$$
P_3(0.5) = 0.47916 \quad P_5(x) = 0.47942 \quad \sin{ 0.5 } = 0.47942
$$

Error absoluto de $P_3(x)$:

$$
E_a = |0.47942 - 0.47916| = 2.6 * 10^{ -4 }
$$

Error absoluto de $P_5(x)$:

$$
E_a = |0.47942 - 0.47942| = 0
$$

Como se esperaba ${ P_3 }_{ E_a } > { P_4 }_{ E_a }$.

## 6

Sea $f(x) = \ln{ x }$ alrededor de $x_0 = e$ encuentre la serie de Taylor en expresión de sumatoria.

$$
f' = \frac{ 1 }{ x } \\[10 pt]

f'' = -x^{ -2 } \\[10 pt]

f''' = 2 x^{ -3 } \\[10 pt]

f^{ 4 } = -6 x^{ -4 } \\[10 pt]

\vdots \\[10 pt]

f^n = (-1)^{ n - 1 } (n - 1)! x^{ -n } \quad f^n(e) = (-1)^{ n - 1 } (n - 1)! e^{ -n } \\[10 pt]

\ln { x } = 1 + (-1)^{ 1 - 1 } (1 - 1)! e^{ -1 } (x - x_0) + \frac{ (-1)^{ 2 - 1 } (2 - 1)! e^{ -1 } }{ 2! } (x - x_0)^2 + \dots + \frac{ (-1)^{ n - 1 } (n - 1)! e^{ -n } }{ n! } (x - x_0)^n \\[10 pt]

\ln { x } = 1 + \sum_{ n = 1 }^\infty { \frac{ (-1)^{ n - 1 } (n - 1)! e^{ -n } }{ n! } (x - x_0)^i } = 1 + \sum_{ n = 1 }^\infty { \frac{ (-1)^{ n - 1 } }{ n e^n } (x - e)^n } \\[10 pt]
$$

Supón que $|x - e| < 1$ y que se desea una precisión de $10^{ -1 }$. ¿Cuál es el número mínimo de términos en la serie necesario para alcanzar tal precisión?

$$
|x - e| < 1 \quad -1 < x - e < 1 \quad -1 + e < x < 1 + e \\[10 pt] !!!!
$$

## 8

Halle la serie de Taylor para $e^x$ con $x_0 = 0 $ y determine el número de términos necesarios para calcular $e^2$ correctamente con cuatro cifras significativas (redondeado).

$$
e^x = \sum_{ n = 0 }^\infty \frac{ x^n }{ n! }
$$

## 9

El costo de producción de una empresa depende de la cantidad producida $q$ y puede expresarse como

$$
C(q) = C_0 + C_1 q + C_2 q^2
$$

Desarrolle la serie de Taylor para $C(q)$ alrededor de una producción inicial $q_0 = 100 \text{unidades}$. Utilice la serie para proyectar el costo total si la producción aumenta ligeramente en $5$ unidades. ¿Cuál es el cambio en el costo total?

$$
C^{ ' } = C_1 + 2 C_2 q \\[10 pt]

C^{ '' } = 2 C_2 \\[10 pt]

C(q) \approx (C_0 + 100 C_1 + 10000 C_2) + (C_1 + 200 C_2) (q - 100) + \frac{ 2 C_2 }{ 2! } (q - 100)^2 \\[10 pt]

\Delta{ C } = C(105) - C(100) = (C_0 + 105 C_1 + 1125 C_2) - (C_0 + 100 C_1 + 10000 C_2) = 5 C_1 + 1025 C_2
$$

## 10

Una empresa ha determinado que su función de demanda para un producto depende del precio $p$ y es la siguiente:

$$
D(p) = a - b p + c p^2
$$

Desarrolle la serie de Taylor para $D(p)$ alrededor de un precio inicial $p_0 = 10$. Use esta serie para determinar él preció óptimo que maximiza los ingresos de la empresa. ¿Cómo afectan pequeños cambios en el precio a la demanda?

$$
D^{ ' } = -b + 2 c q \\[10 pt]

D^{ '' } = 2 c \\[10 pt]

D(q) \approx (a - 10 p + 100 c) + (-b + 20 c) (p - 10) + \frac{ 2 c }{ 2! } (p - 10)^2
$$

Los ingresos se obtienen multiplicando la demanda por el precio:

$$
I = p * D(p)
$$
