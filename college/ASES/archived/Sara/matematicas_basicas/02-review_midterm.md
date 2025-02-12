# Review midterm

1. Encontrar la solución de $| \frac{ 3 x - 1 }{ 2 x - 4 } | < 1$.

    - $3 x - 1 > 0 \quad 2 x - 4 > 0$.

        $$
        x > \frac{ 1 }{ 3 } \quad x > 2 \\[10 pt]

        x \in \left (\frac{ 1 }{ 3 },\infty \right ) \quad x \in (2,\infty) \quad x \in (2,\infty) \\[10 pt]

        \frac{ 3 x - 1 }{ 2 x - 4 } < 1 \quad 3 x - 1 < 2 x - 4 \\[10 pt]

        x < -3 \quad x \in (-\infty,-3)
        $$

        La **intersección** del caso es $x \in \empty$, por lo que no llegamos a ninguna solución.

    - $3 x - 1 < 0 \quad 2 x - 4 < 0$.

        $$
        x < \frac{ 1 }{ 3 } \quad x < 2 \\[10 pt]

        x \in \left (-\infty,\frac{ 1 }{ 3 } \right ) \quad x \in (-\infty, 2) \quad x \in \left (-\infty,\frac{ 1 }{ 3 } \right ) \\[10 pt]

        \frac{ 3 x - 1 }{ 2 x - 4 } < 1 \quad 3 x - 1 > 2 x - 4 \\[10 pt]

        x > -3 \quad x \in (-3,\infty)
        $$

        La **intersección** del caso y la solución es $x \in \left (-3,\frac{ 1 }{ 3 } \right )$.

3. Encontrar la solución de $| x - \sqrt{ 2 } | \geq 1$.

    - $x - \sqrt{ 2 } > 0$.

        $$
        x > \sqrt{ 2 } \quad x \in (\sqrt{ 2 }, \infty) \\[10 pt]

        x - \sqrt{ 2 } \geq 1 \quad x \geq 1 + \sqrt{ 2 } \quad x \in [1 + \sqrt{ 2 }, \infty)
        $$

        La **intersección** del caso y la solución es $x \in [1 + \sqrt{ 2 }, \infty)$.

    - $x - \sqrt{ 2 } < 0$.

        $$
        x < \sqrt{ 2 } \quad x \in (-\infty, \sqrt{ 2 }) \\[10 pt]

        -(x - \sqrt{ 2 }) \geq 1 \quad -x \geq 1 - \sqrt{ 2 } \quad x \leq \sqrt{ 2 } - 1 \quad x \in (-\infty,\sqrt{ 2 } - 1]
        $$

        La **intersección** del caso y la solución es $x \in (-\infty,\sqrt{ 2 } - 1]$.

    La solución de esta inecuación es la **unión** de todos los intervalos en los que encontramos solución.

    $$
    x \in [1 + \sqrt{ 2 }, \infty) \cup (-\infty,\sqrt{ 2 } - 1]
    $$

4. Resolver $\frac{ (x - 7)^3 (3 - x) (x - 2)^3 }{ x^2 - 5 x + 6 } \leq 0$.

    $$
    x^2 - 5 x + 6 = (x - 3) (x - 2)
    $$

    1. $(x - 7)^3 (3 - x) (x - 2)^3 = 0$.

        $$
        x = 7
        $$

    2. $(x - 7)^3 (3 - x) (x - 2)^3 < 0 \quad (x - 3) (x - 2) > 0$.

        - $(x - 7)^3 < 0 \quad 3 - x > 0 \quad (x - 2)^3 > 0$.

            $$
            x < 7 \quad x < 3 \quad x > 2 \quad x \in (2,3)
            $$

            - $x - 3 > 0 \quad x - 2 > 0$.

                $$
                x > 3 \quad x > 2 \quad x \in (3,\infty)
                $$

                $$
                x \in (2,3) \cap (3,\infty) \quad x \in \empty
                $$

            - $x - 3 < 0 \quad x - 2 < 0$.

                $$
                x < 3 \quad x < 2 \quad x \in (-\infty,2)
                $$

                $$
                x \in (2,3) \cap (-\infty,2) \quad x \in \empty
                $$

        - $(x - 7)^3 > 0 \quad (3 - x) < 0 \quad (x - 2)^3 > 0$.

            $$
            x > 7 \quad x > 3 \quad x > 2 \quad x \in (7,\infty)
            $$

            - $x - 3 > 0 \quad x - 2 > 0$.

                $$
                x > 3 \quad x > 2 \quad x \in (3,\infty)
                $$

                $$
                x \in (7,\infty) \cap (3,\infty) \quad x \in (7,\infty)
                $$

            - $x - 3 < 0 \quad x - 2 < 0$.

                $$
                x < 3 \quad x < 2 \quad x \in (-\infty,2)
                $$

                $$
                x \in (7,\infty) \cap (-\infty,2) \quad x \in \empty
                $$

            $$
            x \in (7,\infty) \cup \empty \quad x \in (7,\infty)
            $$

        - $(x - 7)^3 > 0 \quad (3 - x) > 0 \quad (x - 2)^3 < 0$.

            $$
            x > 7 \quad x < 3 \quad x < 2 \quad x \in \empty
            $$

        La solución encontrada para este es $x \in (7,\infty)$.

    3. $(x - 7)^3 (3 - x) (x - 2)^3 > 0 \quad (x - 3) (x - 2) < 0$.

        - $(x - 7)^3 > 0 \quad 3 - x > 0 \quad (x - 2)^3 > 0$.

            $$
            x > 7 \quad x < 3 \quad x > 2 \quad x \in \empty
            $$

            $$
            x \in \empty
            $$

        - $(x - 7)^3 < 0 \quad 3 - x < 0 \quad (x - 2)^3 > 0$.

            $$
            x < 7 \quad x > 3 \quad x > 2 \quad x \in (3,7)
            $$

            $$
            x \in \empty
            $$

        - $(x - 7)^3 > 0 \quad 3 - x < 0 \quad (x - 2)^3 < 0$.

            $$
            x > 7 \quad x > 3 \quad x < 2 \quad x \in \empty
            $$

            $$
            x \in \empty
            $$

        - $(x - 7)^3 < 0 \quad 3 - x > 0 \quad (x - 2)^3 < 0$.

            $$
            x < 7 \quad x < 3 \quad x < 2 \quad x \in (-\infty,2)
            $$

            - $x - 3 < 0 \quad x - 2 > 0$.

                $$
                x < 3 \quad x > 2 \quad x \in (2,3)
                $$

                $$
                x \in (-\infty,2) \cap (2,3) \quad x \in \empty
                $$

            - $x - 3 > 0 \quad x - 2 < 0$.

                $$
                x > 3 \quad x < 2 \quad x \in \empty
                $$

                $$
                x \in \empty
                $$

        No hay solución en este caso.

    $$
    x \in \{7\} \cap (7,\infty) \quad x \in [7,\infty)
    $$

    La **intersección** de los casos y la solución es $x \in [7,\infty)$.

5. Resolver $4 y^4 - 2 y^2 = 4$.

    $$
    y^2 = x \quad 4 x^2 - 2 x = 4 \quad 4 x^2 - 2 x - 4 = 0 \\[10 pt]

    x = \frac{ 2 \pm \sqrt{ 4 - 4 (4) (-4)} }{ 2 (4) } = \frac{ 2 \pm \sqrt{ 68 } }{ 8 } = \frac{ 2 \pm \sqrt{ 2^2 * 17 } }{ 8 } = \frac{ 1 \pm \sqrt{ 17 } }{ 4 } \\[10 pt]

    y^2 = \frac{ 1 \pm \sqrt{ 17 } }{ 4 } \quad y = \pm \sqrt{ \frac{ 1 \pm \sqrt{ 17 } }{ 4 } }
    $$

6. Resolver $\frac{ 1 }{ 2 } - \frac{ 12 }{ 2 \sqrt{ x } } = \sqrt{ x }$.

    $$
    \frac{ 1 }{ 2 } = \sqrt{ x } + \frac{ 12 }{ 2 \sqrt{ x } } \quad \frac{ 1 }{ 2 } = \frac{ 2 x + 12 }{ 2 \sqrt{ x } }
    $$

    Multiplicar por $2 \sqrt{ x }$.

    $$
    \sqrt{ x } = 2 x + 12 \quad x = 4 x^2 + 48 x + 144 \quad 4 x^2 + 47 x + 144 = 0 \\[10 pts]

   x = \frac{ -47 \pm \sqrt{ (-47)^2 - 4 (4) (144) } }{ 2 (4) } = \frac{ -47 \pm \sqrt{ -95 } }{ 8 } \quad x \notin \mathbb{ R }
    $$
