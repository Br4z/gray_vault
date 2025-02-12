# Pyshics problem

![graph](../assets/Jairo/01_01-velocity_graph.jpg)

Podemos identificar $3$ momentos en la gráfica, el primero de $t = 0$ a $t = 2$, el segundo de $t = 2$ a $t = 6$ y el tercero de $t = 6$ a $t = 8$.

1. Dibuje la gráfica posición-tiempo con valores numéricos.

    $$
    a_{ 1-2 } = \frac{ 15 - 15 }{ 2 - 0 } = 0 \quad a_{ 2-6 } = \frac{ -15 - 15 }{ 6 - 2 } = \frac{ -30 }{ 4 } = -\frac{ 15 }{ 2 } \quad a_{ 6-8 } =  \frac{ -15 - (-15) }{ 8 - 6 } = 0
    $$

    > Las aceleraciones que hallamos corresponderían a las pendientes ($m$) de cada una de las rectas.

    Con la aceleración, ahora podemos usar la ecuación de la pendiente ($m = \frac{ y_2 - y_1 }{ x_2 - x_1 }$) para hallar la ecuación del movimiento en cada momento.

    $$
    (t_{ 1-2 } - 0) (0) = v_{ 1-2 } - 15 \quad v_{ 1-2 } = 15 \\[10 pt]

    (2 - t_{ 2-6 }) \left (-\frac{ 15 }{ 2 } \right ) = 15 - v_{ 2-6 } \quad v_{ 2-6 } = -\frac{ 15 }{ 2 } t_{ 2-6 } + 30 \\[10 pt]

    (t_{ 6-8 } - 6) (0) = v_{ 6-8 } - (-15) \quad v_{ 6-8 } = -15
    $$

    Representándolo como una ecuación a trozos tendríamos:

    $$
    v(t) = \left \{
        \begin{array}{ll}
            15                       &0 \leq t \leq 2 \\[5 pt]
            -\frac{ 15 }{ 2 } t + 30 &2 < t \leq 6 \\[5 pt]
            -15                      &6 < t \leq 8
        \end{array}
    \right .
    $$

    $$
    \int { v dt } = x(t)= \left \{
        \begin{array}{ll}
            15 t + C_0                         &0 \leq t \leq 2 \\[5 pt]
            -\frac{ 15 }{ 4 } t^2 + 30 t + C_1 &2 < t \leq 6 \\[5 pt]
            -15 t + C_2                        &6 < t \leq 8
        \end{array}
    \right .
    $$

    Ahora tenemos que hallar las distancias iniciales a las que empezó cada momento (lo que correspondería a la $C$ de una integral).

    $$
    x_0 = 0 \quad 15 (0) + C_0 = 0 \quad C_0 = 0 \\[10 pt]

    x_2 = 15 (2) = 30 \quad -\frac{ 15 }{ 4 } (2)^2 + 30 (2) + C_1 = 30 \quad C_1 = -15 \\[10 pt]

    x_6 = -\frac{ 15 }{ 4 } (6)^2 + 30 (6) - 15 = 30 \quad -15 (6) + C_2 = 30 \quad C_2 = 120
    $$

    > Note que la distancia de una ecuación se halla a partir de la anterior.

    $$
    x(t)= \left \{
        \begin{array}{ll}
            15 t                              &0 \leq t \leq 2 \\[5 pt]
            -\frac{ 15 }{ 4 } t^2 + 15 t - 30 &2 < t \leq 6 \\[5 pt]
            -15 t + 120                       &6 < t \leq 8
        \end{array}
    \right .
    $$

    Graficando esta función tenemos:

    ![$x(t)$](../assets/Jairo/01_02-distance_graph.jpg) pending

2. Dibuje la gráfica aceleración-tiempo con valores numéricos.

    $$
    a(t) = \frac{ d }{ dt } v =  \left \{
        \begin{array}{ll}
            0                  &0 \leq t \leq 2 \\[5 pt]
            -\frac{ 15 }{ 2 }  &2 < t \leq 6 \\[5 pt]
            0                  &6 < t \leq 8
        \end{array}
    \right .
    $$

    ![$a(t)$](../assets/Jairo/01_03-acceleration_graph.jpg) pending

3. Calcule la distancia total recorrida por la partícula.

4. Calcule el desplazamiento total de la partícula.

    $$
    d = x_f - x_i = x(8) - x(0) = 0 - 0 = 0
    $$
