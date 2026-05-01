---
reviewed_on: "2025-01-19"
---

# Linear and quadratic function

## 1

Encuentre los valores de la constante $k$, para que la gráfica de la función $f(x) = \frac{ (k^2 - 3 k - 1) x + 7 }{ k + 2 }$ sea una recta

$$
f(x) = \frac{ k^2 - 3 k - 1 }{ k + 2 } x + \frac{ 7 }{ k + 2 } \quad m = \frac{ k^2 - 3 k - 1 }{ k + 2 }
$$

1. paralela a la recta $6 x - 2 y + 1 = 0$.

	$$
	\begin{align}
		& 6 x - 2 y = -1 \\
		& y = -\frac{ -1 - 6 x }{ 2 } \\
		& y = 3 x + \frac{ 1 }{ 2 } \quad m = 3
	\end{align}
	$$

	$$
	\begin{align}
		& \frac{ k^2 - 3 k - 1 }{ k + 2 } = 3 \\
		& k^2 - 6 k - 7 = 0 \\
		& (k - 7) (k + 1) = 0 \\
		& k_1 = 7 \quad k_2 = -1
	\end{align}
	$$

2. perpendicular a la recta $x - y - 2 = 0$.

	$$
		y = x - 2 \quad m = 1
		$$
	$$

	\begin{align}
		& \frac{ k^2 - 3 k - 1 }{ k + 2 } = -1 \\
		& k^2 - 2 k + 1 = 0 \\
		& (k - 1) (k - 1) = 0 \\
		& k = 1
	\end{align}

	$$

## 2

Halle dos funciones lineales cuyas gráficas se interceptan perpendicularmente en el punto $P(-3,2)$, tal que una de ellas pase por el punto $Q(1,1)$.

Con dos puntos podemos hallar la pendiente de la función que pasa por $P$ y $Q$.

$$
m = \frac{ 1 - 2 }{ 1 + 3 } = -\frac{ 1 }{ 4 }
$$

Ahora se construye la función con esa pendiente y que pase por $Q$.

$$
\begin{align}
	& (x - 1) * -\frac{ 1 }{ 4 } = y - 1 \\
	& y = -\frac{ 1 }{ 4 } x + \frac{ 1 }{ 4 } + 1 \\
	& y = -\frac{ 1 }{ 4 } x + \frac{ 5 }{ 4 }
\end{align}
$$

Para que la otra función sea se intercepte perpendicularmente con la que se halló anteriormente, se tiene que cumplir lo siguiente:

$$
m = 4
$$

$$
\begin{align}
	& (x + 3) 4 = y - 2 \\
	& y = 4 x + 14
\end{align}
$$

## 3

Halle una función cuadrática que cumpla con las siguientes condiciones:

Para resolver esto, se va a hacer uso de la [[personal/math/function/vertex_form_of_a_quadratic_function|forma canónica de una función cuadrática]].

1. su gráfico pasa por el punto $P(-3,7)$ y su vértice es $V(2,-1)$.

	$$
	\begin{align}
		& a (-3 - 2)^2 - 1 = 7 \\
		& 25 a = 8 \\
		& a = \frac{ 8 }{ 25 }
	\end{align}
	$$

	$$
	f(x) = \frac{ 8 }{ 25 } (x - 2)^2 - 1
	$$

2. el vértice de su gráfico es $V\left (\frac{ 1 }{ 2 },5 \right )$ y $x = 1$ es raíz.

	$$
	\begin{align}
		& a \left (1 - \frac{ 1 }{ 2 } \right )^2 - 5 = 0 \\
		& \frac{ 1 }{ 4 } a = 5 \\
		& a = 20
	\end{align}

	$$

	$$
	f(x) = 20 \left (x - \frac{ 1 }{ 2 } \right )^2 - 5
	$$

3. intercepte al eje $x$ en $x = -5$ y $x = 3$, y su valor mínimo es $-4$.

	$$
	r_1 = (-5,0) \quad r_2 = (3,0)
	$$

	$$
	\begin{align}
		& a (-5 + h)^2 - 4 = 0 \\
		& a (25 - 10 h + h^2) = 4 \\
		& a = \frac{ 4 }{ 25 - 10 h + h^2 } \quad (1)
	\end{align}
	$$

	$$
	\begin{align}
		& a (3 + h)^2 - 4 = 0 \\
		& a (9 + 6 h + h^2) = 4 \\
		& a = \frac{ 4 }{ 9 + 6 h + h^2 } \quad (2)
	\end{align}
	$$

	Igualando $(1)$ y $(2)$.

	$$
	\begin{align}
		& \frac{ 4 }{ 9 + 6 h + h^2 } = \frac{ 4 }{ 25 - 10 h + h^2 } \\
		& 9 + 6 h + h^2 = 25 - 10 h + h^2 \\
		& 16 h - 16 = 0 \\
		& h = 1
	\end{align}
	$$

	Reemplazando $h$ en $(2)$.

	$$
	\begin{align}
		& a = \frac{ 4 }{ 9 + 6 h + h^2 } \\
		& = \frac{ 4 }{ 16 } \\
		& \frac{ 1 }{ 4 }
	\end{align}
	$$

	$$
	f(x) = \frac{ 1 }{ 4 } (x - 1) - 4
	$$

## 4

Halle el valor de $y$ para que la ecuación cuadrática $x^2 + 2 + y (2 x + 9) = 0$ tenga raíces iguales.

Para que una ecuación cuadrática solo tenga una solución, su discriminante debe ser cero.

$$
\begin{align}
	& x^2 + 2 + 2 y x + 9 y = 0 \\
	& x^2 + 2 y x + (9 y + 2) = 0 \\
	& a = 1 \quad b = 2 y \quad c = 9 y + 2
\end{align}
$$

$$
\begin{align}
	& \Delta = b^2 - 4 a c = 0 \\
	& 4 y^2 - 4 (9 y + 2) = 0 \\
	& y^2 - (9 y + 2) = 0 \\
	& y^2 - 9 y - 2 = 0 \\
	& y = \frac{ -(-9) \pm \sqrt{ 81 + 8 } }{ 2 } \\
	& y_1 = \frac{ 9 + \sqrt{ 89 } }{ 2 } \quad y_2 = \frac{ 9 - \sqrt{ 89 } }{ 2 }
\end{align}
$$

## 5

Un turista desea alquilar un automóvil por un día. Dos empresas le ofrecen lo siguiente:

- La empresa $A$ le cobra $\$50,000$ por día y $\$1,600$ por kilómetro recorrido.

- La empresa $B$ le cobra $\$60,000$ por día y $\$1,200$ por kilómetro recorrido.

$$
A_\text{cost} = 50,000 t + 1,600 x \quad B_\text{cost} = 60,000 t + 1,200 x
$$

$t$ es el tiempo en días y $x$ es la distancia en kilómetros.

1. Si el turista desea recorrer 71 kilómetros, ¿qué empresa le convendría más?

	Suponiendo que dicha distancia se recorre en un dia.

	$$
	\begin{align}
		& A_\text{cost} = 50,000 + 1,600 (71) = 163,600 \\
		& B_\text{cost} = 60,000 + 1,200 (71) = 145,200
	\end{align}
	$$

	Le conviene mas la empresa $B$.

2. Si el turista desea recorrer 20 kilómetros, ¿qué empresa le convendría más?

	Suponiendo que dicha distancia se recorre en un dia.

	$$
	\begin{align}
		& A_\text{cost} = 50,000 + 1,600 (20) = 82,000 \\
		& B_\text{cost} = 60,000 + 1,200 (71) = 84,000
	\end{align}
	$$

	Le conviene mas la empresa $A$.

3. ¿Cuál es el kilometraje recorrido para el cual es indiferente contratar una empresa o la otra?

	Suponiendo que dicha distancia se recorre en un dia.

	$$
	\begin{align}
		& A_\text{cost} = B_\text{cost} \\
		&  50,000 + 1,600 x = 60,000 + 1,200 x \\
		& 400 x = 10,000 \\
		& x = \frac{ 10,000 }{ 400 } \\
		& x = 25
	\end{align}
	$$

## 6

Se dispone de $2,000$ dólares para cercar un terreno rectangular, usando la orilla de un río como uno de sus lados. Si el costo por metro lineal de cerca del lado perpendicular al río, es 20 dólares y del lado opuesto es 35 dólares, halle las dimensiones del corral que maximizan su área.

La ecuación que modela el area y el coste son las siguientes:

$$
A = x y \quad \text{cost} = 35 x + 20 (2 y)
$$

$$
\begin{align}
	& 2,000 = 35 x + 40 y \\
	& y = \frac{ 2,000 - 35 x } { 40 } \\
	& x = 50 - \frac{ 7 }{ 8 } y
\end{align}
$$

$$
\begin{align}
	& A = \left (50 - \frac{ 7 }{ 8 } y \right ) y \\
	& = -y^2 \frac{ 7 }{ 8 } + 50 y
\end{align}
$$

Sabemos que el punto máximo de la ecuación que modela el área es el vértice de la parábola (en este caso).

$$
\begin{align}
	& h = -\frac{ 50 }{ 2 \left (-\frac{ 7 }{ 8 } \right ) } \\
	& = \frac{ 200 }{ 7 }
\end{align}
$$

$$
\begin{align}
	& x = 50 - \frac{ 7 }{ 8 } \frac{ 200 }{ 7 } \\
	& = 50 - 25 \\
	& = 25
\end{align}
$$

Las dimensiones que maximizan el área del corral son $\frac{ 200 }{ 7 }$ y 25.

## 7

Considere el rectángulo con dos de sus lados sobre los ejes coordenados y uno de sus vértices sobre la recta $5 x + 3 y − 15 = 0$.

1. Exprese el área del rectángulo como función de uno de sus lados, indicando su dominio.

	$$
	\begin{align}
		& 3 y = 15 - 5 x \\
		& y = \frac{ 15 - 5 x }{ 3 }
	\end{align}
	$$

	$$
	\begin{align}
		& A = x \frac{ 15 - 5 x }{ 3 } \\
		& = -x^2 \frac{ 5 }{ 3 } + 5 x
	\end{align}
	$$

2. Halle las dimensiones del rectángulo de mayor área.

	$$
	\begin{align}
		& h = -\frac{ 5 }{ 2 * -\frac{ 5 }{ 3 } } \\
		& = -\frac{ 15 }{ 10 } \\
		& = \frac{ 3 }{ 2 }
	\end{align}
	$$

	$$
	\begin{align}
		& y = \frac{ 15 - 5 \frac{ 3 }{ 2 } }{ 3 } \\
		& = \frac{ 45 }{ 6 }
	\end{align}
	$$

	Las medidas que maximizan el área son $\frac{ 3 }{ 2 }$ y $\frac{ 45 }{ 6 }$.

## 8

Una pieza de alambre de 100 centímetros de largo se corta en dos partes, para formar con cada una de ellas un cuadrado. ¿Dónde se debe hacer el corte para minimizar la suma de las áreas de los cuadrados?

$$
\begin{align}
	& 4 x + 4 y = 100 \\
	& y = \frac{ 100 - 4 x }{ 4 } \\
	& = -x + 25
\end{align}
$$

$$
\begin{align}
	& A = x^2 + (-x + 25)^2 \\
	& = x^2 + x^2 - 50 x + 625 \\
	& = 2 x^2 - 50 x + 625
\end{align}
$$

$$
\begin{align}
	& h = -\frac{ -50 }{ -4 } \\
	& = \frac{ 25 }{ 2 }
\end{align}
$$

$$
\begin{align}
	& y = \frac{ 100 - 4 \left (\frac{ 25 }{ 2 } \right ) }{ 4 } \\
	& = \frac{ 25 }{ 2 }
\end{align}
$$

La pieza de alambre deber ser cortada a la mitad para maximizar la suma de las áreas de los cuadrados.

## 9

En un partido entre el Everton y Nápoles la trayectoria que describe la pelota en un momento del juego es parabólica. La distancia en línea recta desde donde James patea la pelota hasta donde cae en el suelo es de 26 metros, el arquero Juan David Ospina no la ataja y cuando llega a él está a 18 metros del punto inicial, la altura máxima que alcanza la pelota es de 4 metros. Halle la función que modela la situación. ¿A qué altura del suelo Juan David Ospina intenta atajar la pelota?

Las raíces de la función que modela esta situación están en las coordenadas:

$$
A(0,0) \quad B(26,0)
$$

El vértice de la parábola siempre está en la mitad de las raíces y además sabemos que la altura máxima es 4 metros, entonces:

$$
\begin{align}
	& V \left (\frac{ 26 - 0 }{ 2 },4 \right ) \\
	& V(13,4)
\end{align}
$$

Con una coordenada y la forma canónica de una función cuadrática, podemos hallar la función que modela la situación.

$$
\begin{align}
	& f(0) = a (0 - 13)^2 + 4 \\
	& 0 = 169 a + 4 \\
	& a = -\frac{ 4 }{ 169 }
\end{align}
$$

$$
f(x) = -\frac{ 4 }{ 169 } (x - 13)^2 + 4
$$

$$
\begin{align}
	& f(18) = -\frac{ 4 }{ 169 } (18 - 13)^2 + 4 \\
	& = -\frac{ 20 }{ 169 } + 4 \\
	& = \frac{ 656 }{ 169 }
\end{align}
$$

Juan David Ospina estaba $\frac{ 656 }{ 169 }$ metros a cuando intento atajar la pelota.