---
reviewed_on: "2024-11-04"
---

# Iterative methods for solving linear equation systems

$$
\newcommand \norm[1]{ \left \lVert #1 \right \rVert }
\newcommand \abs[1]{ \left \lvert #1 \right \rvert }
$$

## No computer problems

### 1

The following system of equations is designed to determine concentrations (the $c$ values are in $\frac{ \text{g} }{ \text{m}^3 }$) in a series of coupled reactors as a function of the input mass quantity to each of them (the right sides are in $\frac{ \text{g} }{ \text{d} }$),

$$
\begin{array}{cccc}
    15 c_1  & - 3 c_2  & - c_3    & = 3,800 \\
    -3 c_1  & + 18 c_2 & - 6 c_3  & = 1,200 \\
    -4 c_1  & - c_2    & + 12 c_3 & = 2,350
\end{array}
$$

Solve this problem using the Gauss-Seidel method with $\varepsilon_s = 5\%$.

$$
c_1 = \frac{ 1 }{ 15 } (3,800 + 3 c_2 + c_3) \\[10 pt]

c_2 = \frac{ 1 }{ 18 } (1,200 + 3 c_1 + 6 c_3) \\[10 pt]

c_3 = \frac{ 1 }{ 15 } (2,350 + 4 c_1 + c_2)
$$

$$
{ c_1 }^{ (0) } = 0 \quad { c_2 }^{ (0) } = 0 \quad { c_3 }^{ (0) } = 0
$$

1. Iteration $1$.

    $$
    c_1^{ (1) } = \frac{ 1 }{ 15 } (3,800) = \frac{ 760 }{ 3 } \\[10 pt]

    c_2^{ (1) } = \frac{ 1 }{ 18 } (1,200 + 760) = \frac{ 980 }{ 9 } \\[10 pt]

    c_3^{ (1) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 760 }{ 3 } + \frac{ 980 }{ 9 } \right ) = \frac{ 15,625 }{ 54 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 760 }{ 3 } - 0 }{ \frac{ 760 }{ 3 } } } * 100\% = 100\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 980 }{ 9 } - 0 }{ \frac{ 980 }{ 9 } } } * 100\% = 100\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 15,625 }{ 54 } - 0 }{ \frac{ 15,625 }{ 54 } } } * 100\% = 100\% \\[10 pt]
    $$

2. Iteration $2$.

    $$
    c_1^{ (2) } = \frac{ 1 }{ 15 } \left (3,800 + 3 * \frac{ 980 }{ 9 } + \frac{ 15,625 }{ 54 } \right ) = \frac{ 47,693 }{ 162 } \\[10 pt]

    c_2^{ (2) } = \frac{ 1 }{ 18 } \left (1,200 + 3 * \frac{ 47,693 }{ 162 } + 6 * \frac{ 15,625 }{ 54 } \right ) = \frac{ 206,243 }{ 972 } \\[10 pt]

    c_3^{ (2) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 47,693 }{ 162 } + \frac{ 206,243 }{ 972 } \right ) = \frac{ 3,635,075 }{ 11,664 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 47,693 }{ 162 } - \frac{ 760 }{ 3 } }{ \frac{ 47,693 }{ 162 } } } * 100\% \approx 13.95\% \\[10 pt]

    \varepsilon_2 = \abs{ \frac{ \frac{ 206,243 }{ 972 } - \frac{ 980 }{ 9 } }{ \frac{ 206,243 }{ 972 } } } * 100\% \approx 48.68\% \\[10 pt]

    \varepsilon_3 = \abs{ \frac{ \frac{ 3,635,075 }{ 11,664 } - \frac{ 15,625 }{ 54 } }{ \frac{ 3,635,075 }{ 11,664 } } } * 100\% \approx 7.15\% \\[10 pt]
    $$

3. Iteration $3$.

    $$
    c_1^{ (3) } = \frac{ 1 }{ 15 } \left (3,800 + 3 * \frac{ 206,243 }{ 972 } + \frac{ 3,635,075 }{ 11,664 } \right ) = \frac{ 55,383,023 }{ 174,960 } \\[10 pt]

    c_2^{ (3) } = \frac{ 1 }{ 18 } \left (1,200 + 3 * \frac{ 55,383,023 }{ 174,960 } + 6 * \frac{ 3,635,075 }{ 11,664 } \right ) = \frac{ 234,419,273 }{ 1,049,760 } \\[10 pt]

    c_3^{ (3) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 55,383,023 }{ 174,960 } + \frac{ 234,419,273 }{ 1,049,760 } \right ) = \frac{ 806,109,565 }{ 2,519,424 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 55,383,023 }{ 174,960 } - \frac{ 47,693 }{ 162 } }{ \frac{ 55,383,023 }{ 174,960 } } } * 100\% \approx 7\% \\[10 pt]

    \varepsilon_2 = \abs{ \frac{ \frac{ 234,419,273 }{ 1,049,760 } - \frac{ 206,243 }{ 972 } }{ \frac{ 234,419,273 }{ 1,049,760 } } } * 100\% \approx 4.98\% \\[10 pt]

    \varepsilon_3 = \abs{ \frac{ \frac{ 806,109,565 }{ 2,519,424 } - \frac{ 3,635,075 }{ 11,664 } }{ \frac{ 806,109,565 }{ 2,519,424 } } } * 100\% \approx 2.6\% \\[10 pt]
    $$

4. Iteration $3$.

    $$
    c_1^{ (3) } = \frac{ 1 }{ 15 } \left (3,800 + 3 * \frac{ 234,419,273 }{ 1,049,760 } + \frac{ 806,109,565 }{ 2,519,424 } \right ) = \frac{ 60,338,697,653 }{ 188,956,800 } \\[10 pt]

    c_2^{ (3) } = \frac{ 1 }{ 18 } \left (1,200 + 3 * \frac{ 60,338,697,653 }{ 188,956,800 } + 6 * \frac{ 806,109,565 }{ 2,519,424 } \right ) = \frac{ 256,837,852,403 }{ 1,133,740,800 } \\[10 pt]

    c_3^{ (3) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 60,338,697,653 }{ 188,956,800 } + \frac{ 256,837,852,403 }{ 1,133,740,800 } \right ) = \frac{ 1,175 }{ 6 }+ \frac{ 60,338,697,653 }{ 566,870,400 } + \frac{ 256,837,852,403 }{ 13,604,889,600 } \approx 321.1535
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 60,338,697,653 }{ 188,956,800 } - \frac{ 55,383,023 }{ 174,960 } }{ \frac{ 60,338,697,653 }{ 188,956,800 } } } * 100\% \approx 0.87\% \\[10 pt]

    \varepsilon_2 = \abs{ \frac{ \frac{ 256,837,852,403 }{ 1,133,740,800 } - \frac{ 234,419,273 }{ 1,049,760 } }{ \frac{ 256,837,852,403 }{ 1,133,740,800 } } } * 100\% \approx 1.43\% \\[10 pt]

    \varepsilon_3 = \abs{ \frac{ 321.1535 - \frac{ 806,109,565 }{ 2,519,424 } }{ 321.1535 } } * 100\% \approx 0.37\% \\[10 pt]
    $$

$$
c_1 \approx \frac{ 60,338,697,653 }{ 188,956,800 } \approx 319.33 \frac{ \text{g} }{ \text{m}^3 } \\[10 pt]

c_2 \approx \frac{ 256,837,852,403 }{ 1,133,740,800 } \approx 226.54 \frac{ \text{g} }{ \text{m}^3 } \\[10 pt]

c_3 \approx 321.1535 \frac{ \text{g} }{ \text{m}^3 } \\[10 pt]
$$

### 2

Solve the first problem using Jacobi's method.

$$
{ c_1 }^{ (0) } = 0 \quad { c_2 }^{ (0) } = 0 \quad { c_3 }^{ (0) } = 0
$$

1. Iteration $1$.

    $$
    c_1^{ (1) } = \frac{ 1 }{ 15 } (3,800) = \frac{ 760 }{ 3 } \\[10 pt]

    c_2^{ (1) } = \frac{ 1 }{ 18 } (1,200) = \frac{ 200 }{ 3 } \\[10 pt]

    c_3^{ (1) } = \frac{ 1 }{ 12 } (2,350) = \frac{ 1,175 }{ 6 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 760 }{ 3 } - 0 }{ \frac{ 760 }{ 3 } } } * 100\%  = 100\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 200 }{ 3 } - 0 }{ \frac{ 200 }{ 3 } } } * 100\%  = 100\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 1,175 }{ 6 } - 0 }{ \frac{ 1,175 }{ 6 } } } * 100\%  = 100\% \\[10 pt]
    $$

2. Iteration $2$.

    $$
    c_1^{ (2) } = \frac{ 1 }{ 15 } \left (3,800 + 3 * \frac{ 200 }{ 3 } +  \frac{ 1,175 }{ 6 } \right ) = \frac{ 5,035 }{ 18 } \\[10 pt]

    c_2^{ (2) } = \frac{ 1 }{ 18 } \left (1,200 + 3 * \frac{ 760 }{ 3 } + 6 * \frac{ 1,175 }{ 6 } \right ) = \frac{ 1,045 }{ 6 } \\[10 pt]

    c_3^{ (2) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 760 }{ 3 } + \frac{ 200 }{ 3 } \right ) = \frac{ 1,715 }{ 6 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 5,035 }{ 18 } - \frac{ 760 }{ 3 } }{ \frac{ 5,035 }{ 18 } } } * 100\% \approx 9.43\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 1,045 }{ 6 } - \frac{ 200 }{ 3 } }{ \frac{ 200 }{ 3 } } } * 100\% \approx  61.7\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 1,715 }{ 6 } - \frac{ 1,175 }{ 6 } }{ \frac{ 1,715 }{ 6 } } } * 100\% \approx  31.5\% \\[10 pt]
    $$

3. Iteration $3$.

    $$
    c_1^{ (3) } = \frac{ 1 }{ 15 } \left (3,800 + 3 * \frac{ 1,045 }{ 6 } + \frac{ 1,715 }{ 6 } \right ) = \frac{ 2,765 }{ 9 } \\[10 pt]

    c_2^{ (3) } = \frac{ 1 }{ 18 } \left (1,200 + 3 * \frac{ 5,035 }{ 18 } + 6 * \frac{ 1,715 }{ 6 } \right ) = \frac{ 22,525 }{ 108 } \\[10 pt]

    c_3^{ (3) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 5,035 }{ 18 } + \frac{ 1,045 }{ 6 } \right ) = \frac{ 65,575 }{ 216 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 2,765 }{ 9 } - \frac{ 5,035 }{ 18 } }{ \frac{ 2,765 }{ 9 } } } * 100\% \approx 8.95\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 22,525 }{ 108 } - \frac{ 1,045 }{ 6 } }{ \frac{ 22,525 }{ 108 } } } * 100\% \approx  16.49\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 65,575 }{ 216 } - \frac{ 1,715 }{ 6 } }{ \frac{ 65,575 }{ 216 } } } * 100\% \approx  5.85\% \\[10 pt]
    $$

4. Iteration $4$.

    $$
    c_1^{ (4) } = \frac{ 1 }{ 15 } \left (3,800 + 3 * \frac{ 22,525 }{ 108 } + \frac{ 65,575 }{ 216 } \right ) = \frac{ 204,305 }{ 648 } \\[10 pt]

    c_2^{ (4) } = \frac{ 1 }{ 18 } \left (1,200 + 3 * \frac{ 2,765 }{ 9 } + 6 * \frac{ 65,575 }{ 216 } \right ) = \frac{ 141,955 }{ 648 } \\[10 pt]

    c_3^{ (4) } = \frac{ 1 }{ 12 } \left (2,350 + 4 * \frac{ 2,765 }{ 9 } + \frac{ 22,525 }{ 108 } \right ) = \frac{ 409,045 }{ 1,296 }
    $$

    $$
    \varepsilon_1 = \abs{ \frac{ \frac{ 204,305 }{ 648 } - \frac{ 2,765 }{ 9 } }{ \frac{ 204,305 }{ 648 } } } * 100\% \approx 2.56\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 141,955 }{ 648 } - \frac{ 22,525 }{ 108 } }{ \frac{ 141,955 }{ 648 } } } * 100\% \approx  4.79\% \\[10 pt]

    \varepsilon_1 = \abs{ \frac{ \frac{ 409,045 }{ 1,296 } - \frac{ 65,575 }{ 216 } }{ \frac{ 409,045 }{ 1,296 } } } * 100\% \approx  3.81\% \\[10 pt]
    $$

$$
c_1 \approx \frac{ 204,305 }{ 648 } \approx 315.29 \frac{ \text{g} }{ \text{m}^3 } \\[10 pt]

c_2 \approx \frac{ 141,955 }{ 648 } \approx 219.07 \frac{ \text{g} }{ \text{m}^3 } \\[10 pt]

c_3 \approx \frac{ 409,045 }{ 1,296 } \approx 315.62 \frac{ \text{g} }{ \text{m}^3 } \\[10 pt]
$$

### 3

Use the Gauss-Seidel method without relaxation, and with relaxation ($\lambda = 1.2$), to solve the following system for a tolerance of $\varepsilon_s = 5\%$.

> If necessary, rearrange the equations to achieve convergence.

$$
\begin{array}{cccc}
    2 x_1  & - 6 x_2 & - x_3   & = -38 \\
    -3 x_1 & - x_2   & + 7 x_3 & = -34 \\
    -8 x_1 & + x_2   & - 2 x_3 & = -20
\end{array}
$$

Currently the coefficient matrix is not diagonally dominant, rearranging the equations:

$$
\begin{array}{cccc}
    -8 x_1 & + x_2   & - 2 x_3 & = -20 \\
    2 x_1  & - 6 x_2 & - x_3   & = -38 \\
    -3 x_1 & - x_2   & + 7 x_3 & = -34
\end{array}
$$

$$
x_1 = -\frac{ 1 }{ 8 } (-20 - x_2 + 2 x_3) = \frac{ 1 }{ 8 } (20 + x_2 - 2 x_3) \\[10 pt]

x_2 = -\frac{ 1 }{ 6 } (-38 - 2 x_1 + x_3) = -\frac{ 1 }{ 6 } (38 + 2 x_1 - x_3) \\[10 pt]

x_3 = \frac{ 1 }{ 7 } (-34 + 3 x_1 + x_2)
$$

$$
{ x_1 }^{ (0) } = 0 \quad { x_2 }^{ (0) } = 0 \quad { x_3 }^{ (0) } = 0
$$

1. Iteration 1.

   - ${ x_1 }^{ \text{new} }$.

        $$
        { x_1 }^{ \text{new} } = \frac{ 20 + { x_2 }^{ (0) } - 2 { x_3 }^{ (0) } }{ 8 } = 2.5
        $$

   - ${ x_1 }^{ (1) }$.

        $$
        { x_1 }^{ (1) } = { x_1 }^{ (0) } + 1.2 ( { x_1 }^{ \text{new} } - { x_1 }^{ (0) } ) = 0 + 1.2 (2.5 - 0) = 3.0
        $$

   - ${ x_2 }^{ \text{new} }$.

        $$
        { x_2 }^{ \text{new} } = \frac{ 38 + 2 { x_1 }^{ (1) } - { x_3 }^{ (0) } }{ 6 } = \frac{ 38 + 2 (3.0) }{ 6 } = \frac{ 44 }{ 6 } \approx 7.3333
        $$

   - ${ x_2 }^{ (1) }$.

        $$
        { x_2 }^{ (1) } = { x_2 }^{ (0) } + 1.2 ( { x_2 }^{ \text{new} } - { x_2 }^{ (0) } ) = 0 + 1.2 (7.3333 - 0) = 8.8
        $$

   - ${ x_3 }^{ \text{new} }$.

        $$
        { x_3 }^{ \text{new} } = \frac{ -34 + 3 { x_1 }^{ (1) } + { x_2 }^{ (1) } }{ 7 } = \frac{ -34 + 9 + 8.8 }{ 7 } \approx -2.3143
        $$

   - ${ x_3 }^{ (1) }$.

        $$
        { x_3 }^{ (1) } = { x_3 }^{ (0) } + 1.2 ( { x_3 }^{ \text{new} } - { x_3 }^{ (0) } ) = 0 + 1.2 ( -2.3143 - 0 ) = -2.7771
        $$

   $$
   \varepsilon_{x1} = \varepsilon_{x2} = \varepsilon_{x3} = 100\%
   $$

2. Iteration 2.

   - ${ x_1 }^{ \text{new} }$.

        $$
        { x_1 }^{ \text{new} } = \frac{ 20 + { x_2 }^{ (1) } - 2 { x_3 }^{ (1) } }{ 8 } = \frac{ 20 + 8.8 - 2(-2.7771) }{ 8 } \approx 4.2943
        $$

   - ${ x_1 }^{ (2) }$.

        $$
        { x_1 }^{ (2) } = { x_1 }^{ (1) } + 1.2 ( { x_1 }^{ \text{new} } - { x_1 }^{ (1) } ) = 3.0 + 1.2 (4.2943 - 3.0) \approx 4.5532
        $$

   - ${ x_2 }^{ \text{new} }$.

        $$
        { x_2 }^{ \text{new} } = \frac{ 38 + 2 { x_2 }^{ (2) } - { x_3 }^{ (1) } }{ 6 } = \frac{ 38 + 2 (4.5532) - (-2.7771) }{ 6 } \approx 8.3139
        $$

   - ${ x_2 }^{ (2) }$.

        $$
        { x_2 }^{ (2) } = { x_2 }^{ (1) } + 1.2 ( { x_2 }^{ \text{new} } - { x_2 }^{ (1) } ) = 8.8 + 1.2 (8.3139 - 8.8) \approx 8.2167
        $$

   - ${ x_3 }^{ \text{new} }$

        $$
        { x_3 }^{ \text{new} } = \frac{ -34 + 3 { x_1 }^{ (2) } + { x_2 }^{ (2) } }{ 7 } = \frac{ -34 + 13.6596 + 8.2167 }{ 7 } \approx -1.7320
        $$

   - ${ x_3 }^{ (2) }$.

        $$
        { x_3 }^{ (2) } = { x_3 }^{ (1) } + 1.2 ( { x_3 }^{ \text{new} } - { x_3 }^{ (1) } ) = -2.7771 + 1.2 ( -1.7320 - (-2.7771) ) \approx -1.5230
        $$

   Approximate relative errors:

   $$
   \varepsilon_1 \abs{ \frac{ 4.5532 - 3.0 }{ 4.5532 } } * 100\% \approx 34.08\% \\[10pt]

   \varepsilon_2 = \abs { \frac{ 8.2167 - 8.8 }{ 8.2167 } } * 100\% \approx 7.09\% \\[10pt]

   \varepsilon_3 = \abs{ \frac{ -1.5230 - (-2.7771) }{ -1.5230 } } * 100\% \approx 82.36\%
   $$

Continue with additional iterations until the approximate relative errors are less than $5\%$.

After sufficient iterations, we obtain:

$$
x_1 \approx 4.0000, \quad x_2 \approx 8.0000, \quad x_3 \approx -2.0000
$$

### 4

Solve the third problem using Richardson's method.

### 5

From the following three sets of linear equations, identify which one(s) cannot be solved using an iterative method like Gauss-Seidel. Demonstrate that the solution does not converge, using any number of iterations as needed. Clearly state your convergence criterion (i.e., how you know it is not converging).

1. Set one.

    $$
    \begin{array}{cccc}
        9 x_1  & + 3 x_2 & + x_3   & = 13 \\
        -6 x_1 &         & + 8 x_3 & = 2 \\
        2 x_1  & + 5 x_2 & - 1 x_3 & = 6
    \end{array}
    $$

2. Set two.

    $$
    \begin{array}{cccc}
        x_1   & + x_2   & + 6 x_3 & = 8 \\
        x_1   & + 5 x_2 & - 1 x_3 & = 5 \\
        4 x_1 & + 2 x_2 & - 2 x_3 & = 4
    \end{array}
    $$

3. Set three.

    $$
    \begin{array}{cccc}
        -3 x_1 & + 4 x_2 & + 5 x_3 & = 6 \\
        -2 x_1 & + 2 x_2 & - 3 x_3 & = -3 \\
        2 x_1  & + 0 x_2 & - 1 x_3 & = 1
    \end{array}
    $$

## Computer problems

Program the Gauss-Seidel method and test it on these examples:

### a

$$
\begin{cases}
    & 3 x & + y   & + z   & = 5 \\
    & x   & + 3 y & - z   & = 3 \\
    & 3 x & + y   & - 5 z & = -1 \\
\end{cases}
$$

### b

$$
\begin{cases}
    & 3 x & + y   & + z   & = 5 \\
    & 3 x & + y   & - 5 z & = -1 \\
    & x   & + 3 y & - z   & = 3 \\
\end{cases}
$$

Analyze what happens when these systems are solved using simple Gaussian elimination without pivoting.
