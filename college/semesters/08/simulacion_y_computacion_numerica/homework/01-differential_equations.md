---
reviewed_on: "2024-09-22"
---

# Review

## 1

La población $P(t)$ de un suburbio de una gran ciudad en un instante cualquiera se rige por:

$$
\frac{ dP }{ dt } = P (10^{ -1 } - 10^{ -7 } P) \quad P(0) = 5,000
$$

en donde $t$ se mide en meses.

$$
\int { \frac{ 1 }{ P (10^{ -1 } - 10^{ -7 } P) } dP } = \int dt
$$

$$
\frac{ 1 }{ P (10^{ -1 } - 10^{ -7 } P) } = \frac{ A }{ P } + \frac{ B }{ 10^{ -1 } - 10^{ -7 } P } \\[10 pt]

\frac{ A }{ P } + \frac{ B }{ 10^{ -1 } - 10^{ -7 } P } = \frac{ A (10^{ -1 } - 10^{ -7 } P) + B P }{ P (10^{ -1 } - 10^{ -7 } P) } \\[10 pt]

1 = A (10^{ -1 } - 10^{ -7 } P) + B P \quad A 10^{ -1 } + P (-A 10^{ -7 } + B) = 1 \\[10 pt]

A 10^{ -1 } = 1 \quad A = 10 \\[10 pt]

-A 10^{ -7 } + B = 0 \quad B = 10^{ -6 }
$$

Volviendo a la integral original.

$$
\int { \frac{ 10 }{ P } + \frac{ 10^{ -6 } }{ 10^{ -1 } - 10^{ -7 } P } dP } = t \\[10 pt]

10 \ln P + 10^{ -6 } \int { \frac{ 1 }{ 10^{ -1 } - 10^{ -7 } P } dP }
\begin{array}{lcr}
    u  & = & 10^{ -1 } - 10^{ -7 } P \\
    du & = & -10^{ -7 } dP \\
    dP & = & -\frac{ du }{ 10^{ -7 } }
\end{array} \\[10 pt]

\int { \frac{ 1 }{ 10^{ -1 } - 10^{ -7 } P } dP } = \int { \frac{ 1 }{ u } * -\frac{ du }{ 10^{ -7 } } } \\[10 pt]

-\frac{ 1 }{ 10^{ -7 } } \ln u = -\frac{ 1 }{ 10^{ -7 } } \ln { 10^{ -1 } - 10^{ -7 } P } \\[10 pt]

10 \ln P - 10 \ln { 10^{ -1 } - 10^{ -7 } P } + C = t \quad (1) \\[10 pt]

\ln \frac{ P }{ 10^{ -1 } - 10^{ -7 } P } = 10^{ -1 } t + C \\[10 pt]

\frac{ P }{ 10^{ -1 } - 10^{ -7 } P } = e^{ 10^{ -1 } t + C } \\[10 pt]
$$

Como $e^{ 10^{ -1 } t + C } = e^{ 10^{ -1 } t } e^C$, podemos decir que $C = e^C$.

$$
P = (10^{ -1 } - 10^{ -7 } P) C e^{ 10^{ -1 } t } = 10^{ -1 } C e^{ 10^{ -1 } t } - 10^{ -7 } P C e^{ 10^{ -1 } t } \\[10 pt]

P + 10^{ -7 } P C e^{ 10^{ -1 } t } = 10^{ -1 } C e^{ 10^{ -1 } t } \quad P (1 + 10^{ -7 } C e^{ 10^{ -1 } t }) = 10^{ -1 } C e^{ 10^{ -1 } t } \\[10 pt]

P = \frac{ 10^{ -1 } C e^{ 10^{ -1 } t } }{ 1 + 10^{ -7 } C e^{ 10^{ -1 } t } }
$$

Como $P(0) = 5,000$.

$$
5,000 = \frac{ 10^{ -1 } C }{ 1 + 10^{ -7 } C } \quad 5,000 (1 + 10^{ -7 } C) = 10^{ -1 } C \\[10 pt]

5,000 + 5 * 10^{ -4 } C = 10^{ -1 } C \quad 10^{ -1 } C - 5 * 10^{ -4 } C = 5,000 \\[10 pt]

C (10^{ -1 } - 5 * 10^{ -4 }) = 5,000 \quad C = \frac{ 5,000 }{ 10^{ -1 } - 5 * 10^{ -4 } } \approx 5,251
$$

### ¿Cuál es el valor límite de la población?

$$
\lim_{ t \to \infty } P(t) = \lim_{ t \to \infty } \frac{ 10^{ -1 } (5,251) e^{ 10^{ -1 } t } }{ 1 + 10^{ -7 } (5,251) e^{ 10^{ -1 } t } } \\[10 pt]

10^{ -1 } (5,251) \lim_{ t \to \infty } \frac{ e^{ 10^{ -1 } t } }{ 1 + 10^{ -7 } (5,251) e^{ 10^{ -1 } t } } \quad 525.1 \lim_{ t \to \infty } \frac{ e^{ 10^{ -1 } t } }{ 1 + 10^{ -4 } (5.251) e^{ 10^{ -1 } t } }
$$

Dividimos el numerador y denominador del argumento del límite por $e^{ 10^{ -1 } t }$.

$$
525.1 \lim_{ t \to \infty } \frac{ 1 }{ \frac{ 1 }{ e^{ 10^{ -1 } t } } + 10^{ -4 } (5.251) } \\[10 pt]

525.1 \frac{ 1 }{ \frac{ 5.251 }{ 10000 } } = 1,000,000
$$

### ¿En qué momento será la población igual a su valor límite?

Usando $(1)$ para hacer el despeje.

$$
10 \ln 1,000,000 - 10 \ln { 10^{ -1 } - 10^{ -7 } (1,000,000) } + 5,251 = t
$$

> No tiene solución, pues es el valor límite (nunca llega a él).

## 2

Resuelva las siguientes ecuaciones diferenciales:

### $\frac{ dx }{ dt } = e^t - \frac{ 2 t }{ t^2 - 1 }$

$$
\int dx = \int { e^t - \frac{ 2 t }{ t^2 - 1 } dt } \quad x = \int { e^t dt } - \int { \frac{ 2 t }{ t^2 - 1 } dt } \quad (1) \\[10 pt]
$$

$$
\int \frac{ 2 t }{ t^2 - 1 } dt
\begin{array}{lcr}
    u  & = & t^2 - 1 \\
    du & = & 2 t dt \\
\end{array} \\[10 pt]

\int \frac{ 1 } { u } du = \ln u = \ln{ t^2 - 1 }
$$

Volviendo a $(1)$.

$$
x = e^t - \ln{ t^2 - 1 } + C
$$

### $(x^2 + 9) \frac{ dy }{ dx } + xy = 0$

$$
\int { \frac{ 1 }{ y } dy } = -\int { \frac{ x }{ x^2 + 9 } dx } \quad (1)
$$

$$
\int { \frac{ x }{ x^2 + 9 } dx }
\begin{array}{lcr}
    u                & = & x^2 + 9 \\
    du               & = & 2 x dx \\
    \frac{ du }{ 2 } & = & x dx
\end{array} \\[10 pt]

\int { \frac{ 1 }{ u } \frac{ du }{ 2 } } = \frac{ 1 }{ 2 } \ln u = \frac{ 1 }{ 2 } \ln { x^2 + 9 }
$$

Volviendo a $(1)$.

$$
\ln y = -\frac{ 1 }{ 2 } \ln { x^2 + 9 } \quad e^{ \ln y } = e^{ -\frac{ 1 }{ 2 } \ln { x^2 + 9 } + C } \\[10 pt]

y = (x^2 + 9)^{ -\frac{ 1 }{ 2 } } e^C = \frac{ C }{ (x^2 + 9)^\frac{ 1 }{ 2 } }
$$

### $\frac{ dy }{ dx } = 2 x e^{ - y }$

$$
\int { \frac{ 1 }{ e^{ -y } } dy } = \int { 2 x dx } \\[10 pt]

e^y = x^2 + C \quad y = \ln { x^2 + C }
$$

### $\frac{ dx }{ dt } = \frac{ 1 + t }{ t^2 + x^2 }$

> Insoluble con métodos básicos.

### $\frac{ dx }{ dt } = e^{ t + x }$

$$
\int { \frac{ 1 }{ e^x } dx } = \int { e^t dt } \quad -e^{ -x } = e^t + C \\[10 pt]

e^{ -x } = -e^t + C \quad -x = \ln { -e^t + C } \quad x = -\ln { -e^t + C }
$$

## 3

Un reactor transforma plutonio $239$ en uranio $238$ que es relativamente estable para uso industrial. Después de $15$ años se determina que el $0.0043$ por ciento de la cantidad inicial $A_0$ de plutonio se ha desintegrado.

La ecuación que describe este proceso es:

$$
A(t) = A_0 e^{ -k t }
$$

- $A(t)$: cantidad de plutonio en el tiempo $t$.

- $A_0$: cantidad inicial de plutonio.

- $k$: constante de desintegración.

- $t$: tiempo transcurrido.

$$
A(15) = A_0 \left (1 - \frac{ 0.0043 }{ 100 } \right ) = A_0 * 0.999957 = A_0 e^{ -k (15) } \\[10 pt]

e^{ -k (15) } = 0.999957 \quad -15 k = \ln 0.999957 \quad k = -\frac{ \ln 0.999957 }{ 15 }
$$

$$
A(t) = A_0 e^{ \frac{ \ln 0.999957 }{ 15 } t }
$$

### Determinar la semivida (tiempo necesario para que la cantidad inicial de átomos se reduzca a la mitad) de este isótopo si la rapidez de desintegración es proporcional a la cantidad restante

$$
\frac{ A_0 }{ 2 } = A_0 e^{ \frac{ \ln 0.999957 }{ 15 } t } \quad e^{ \frac{ \ln 0.999957 }{ 15 } t } = \frac{ 1 }{ 2 } \quad \frac{ \ln 0.999957 }{ 15 } t = \ln \frac{ 1 }{ 2 } \\[10 pt]

t = \frac{ 15 \ln \frac{ 1 }{ 2 } }{ \ln 0.999957 }
$$

## 4

Resuelva las siguientes ecuaciones diferenciales:

### $3 x + y - 2 + \frac{ dy }{ dx } (x - 1) = 0$

### $(t^2 x^2 - 1) \frac{ dx }{ dt } + 2 t x^3 = 0$, haciendo $x = z^\alpha$

### $x + (x - t) \frac{ dx }{ dt } = 0$

Suponiendo que $x \neq t$.

$$
\frac{ dx }{ dt } = -\frac{ x }{ x - t }
$$

### $2 t + 3 x + (x + 2) \frac{ dx }{ dt } = 0$

## 5

Determine la linealidad y establezca el orden de las siguientes ecuaciones en derivadas parciales (EDP):

### $u_t - u_{ xx } + 1 = 0$

- Linealidad: sí.

- Orden: 2.

### $u_t - u_{ xx } + x u = 0$

- Linealidad: sí.

- Orden: 2.

### $u_t - u_{ xxt } + u u_x = 0$

- Linealidad: no.

- Orden: 3.

### $u_{ tt } - u_x + x^2 = 0$

- Linealidad: sí.

- Orden: 2.

### $u_t - u_{ xx } + \frac{ u }{ x } = 0$

- Linealidad: sí.

- Orden: 2.

### $u_x + e^y u_y = 0$

- Linealidad: sí.

- Orden: 1.

## 6

Dado $c \int \mathbb{ R }$, estudiar la linealidad y orden de la siguiente ecuación:

$$
u_x + c u_y = 0 \quad (x,y) \in \mathbb{ R }^2
$$

- Linealidad: sí.

- Orden: 1.

- Interpretar geométricamente la EDP y calcular sus soluciones.

## 7

Resolver las ecuaciones:

### $u_t + x u_x = 0$ con $(x,t) \in \mathbb{ R }^2$

### $u_t + 2 t x^2 u_x = 0$ con $(x,t) \in \mathbb{ R }^2$

## 8

Calcular la solución del siguiente problema:

$$
u_t - u_x = u^2 \quad x \in \mathbb{ R }, t > 0 \\[10 pt]

u(x,0) = \frac{ 1 }{ 2 } e^{ -x } \quad x \in \mathbb{ R }
$$
