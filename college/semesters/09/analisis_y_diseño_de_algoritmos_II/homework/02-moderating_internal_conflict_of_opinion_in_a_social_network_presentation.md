---
reviewed_on: "2025-05-09"
---

# Moderating internal conflict of opinion in a social network presentation

## Algoritmo para calcular el costo de una solución óptima

1. Definición de subproblemas y tabla de memoria.

	Se define una matriz `storage` de dimensión $(n + 1) \times (r_{ \max } + 1)$, donde $n$ es el número de grupos y $r_{ \max }$ el esfuerzo total disponible.

	> $\text{storage}[i][r]$ representa el menor conflicto interno que podemos alcanzar moderando solo los primeros $i$ grupos con un presupuesto de $r$ de esfuerzo.

2. Caso base.

	- Para $i = 0$ (cero grupos), el conflicto es 0 para cualquier $r$.

	- Para $i \geq 1$ inicialmente supongo un valor muy alto $\infty$.

3. Construcción de la solución (bottom-up).

	Recorro los grupos uno a uno ($i = 1$ hasta $n$). Cada grupo $i$ viene dado por

	$$
	a_{ i - 1 } = (n_i, o_{ i,1 }, o_{ i,2 }, r_i)
	$$

	Calculo dos cantidades por agente de ese grupo

	- Conflicto por agente: $(o_{ i,1 } - o_{ i,2 })^2$.

	- Esfuerzo por agente: $\abs{ o_{ i,1 } - o_{ i,2 } } \cdot r$.

4. Explorar todas las posibilidades de moderar $k$ agentes.

	Para cada posible nivel de esfuerzo $r$ desde 0 hasta $r_{ \max }$, y para cada $k$ entre 0 y $n_i$ (número de agentes que decido moderar en este grupo), hago:

	1. $\text{required\_effort} = \ceil{ \text{effort\_per\_agent} \cdot k }$

	2. Si el presupuesto parcial $r$ permite tal moderación ($\text{required\_effort} \leq r$), entonces:

		El conflicto restante que generan los agentes no moderados de este grupo es

		$$
		(n_i - k_i) \cdot \text{effort\_per\_agent}
		$$

		El conflicto total si moderamos $k$ aquí y usamos la mejor solución de esfuerzo $r - \text{required\_effort}$ para los anteriores $i − 1$ grupos es

		$$
		\text{storage}[i - 1][r - \text{required\_effort}] + (n_i - k_i) \cdot \text{effort\_per\_agent}
		$$

		Si esa suma es menor que el valor actual de $\text{storage}[i][r]$, lo actualizo con este nuevo mínimo.

5. Respuesta final.

	Una vez procesados todos los grupos, la celda $\text{storage}[n][r_{ \max }]$ contiene el menor conflicto interno posible moderando de manera óptima hasta $n$ grupos con esfuerzo total menor o igual a $r_{ \max }]$.

## Algoritmo para calcular una solución óptima

### Registro de decisiones durante el cálculo del costo

1. Matriz de decisiones.

	Se crea una matriz decisions de tamaño $(n + 1) \times (r_{ \max } + 1)$ y se inicializa con ceros.

	> $\text{decisions}[i][r]$ almacenará, para los primeros $i$ grupos y presupuesto $r$, el número óptimo de agentes que conviene moderar en el grupo $i$.

2. Actualización simultánea.

	Durante el mismo bucle en el que rellenamos $\text{storage}[i][r]$ buscando el mínimo conflicto, cuando encontramos un nuevo mínimo, guardamos el $k$ en $\text{decisions}[i][r]$. De esta forma, cada vez que mejoramos la solución parcial para $(i,r)$, también anotamos cuántos agentes ($k$) debimos moderar en el grupo actual.

### Reconstrucción de la estrategia óptima (backtracking)

Una vez completas ambas matrices, se recorre decisions en sentido inverso para extraer paso a paso la estrategia que generó el costo mínimo.