# Math

## Optimizing the dimensions of a cylinder

Un recipiente cilíndrico sin tapa debe almacenar un volumen $v$. El material del fondo del recipiente cuesta $c_1$ por unidad del área y el del lado curvo cuesta $c_2$ por unidad del área ¿Que dimensiones minimizaran el costo total del recipiente?

$$
\text{ area fondo } = r^2 \pi \quad \text{ lado curvo } = 2 r \pi h \\[10 pt]

r^2 \pi h = v \quad h = \frac{ v }{ r^2 \pi } \\[10 pt]

f(r) = \text{ costo del recipiente } \\[10 pt]

f(r) = c_1 r^2 \pi + 2 c_2 r \pi h = c_1 r^2 \pi + 2 c_2 r \pi \left ( \frac{ v }{ r^2 \pi } \right ) = c_1 r^2 \pi + \frac{ 2 c_2 v }{ r } \\[10 pt]

f'(r) = 2 c_1 r \pi - \frac{ 2 c_2 v }{ r^2 } = \frac{ 2 c_1 r^3 \pi - 2 c_2 v }{ r^2 } = \frac{ 2(c_1 r^3 \pi - c_2 v) }{ r^2 } \\[10 pt]

2(c_1 r^3 \pi - c_2 v) = 0 \quad r = \sqrt[3]{ \frac{ c_2 v }{ c_1 \pi } } \\[10 pt]

h = \frac{ v }{ \left (\sqrt[3]{ \frac{ c_2 v }{ c_1 \pi } } \right )^2 \pi }
$$
