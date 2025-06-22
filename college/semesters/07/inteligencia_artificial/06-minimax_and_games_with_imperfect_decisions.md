# Minimax and games with imperfect decisions

## Juegos como problemas de búsqueda

La IA se centra en el análisis de juegos donde los estados se puedan **representar** fácilmente e intervenga en los movimientos la **toma de decisiones**.

## Algoritmo minimax

El algoritmo minimax se aplica para el caso de juegos de dos participantes, **MAX** y **MIN**. La salida del algoritmo es la jugada que debería realizar **MAX** en la raíz.

La definición formal de juego requiere:

- Estado inicial.

- Conjunto de operadores.

- Prueba terminal.

- Función de utilidad, asigna un valor numérico al resultado obtenido de MAX en el juego.

    > En juegos donde se gana, pierde o empata, $f = 1$ si gana, $f = -1$ si pierde y $f = 0$ si empata.

La mejor opcion para MAX se conoce como la decisión minimax. Se supone que MIN siempre juega con la intensión de disminuir al máximo la utilidad de MAX.

> Siempre esperamos el peor de los casos, que el jugador humano haga la mejor jugada posible.

Si la profundidad máxima del árbol es *m* y hay *b* movimientos legales en cada punto, se tiene:

- Complejidad temporal: $O(b^m)$.

- Complejidad espacial: $O(b*m)$.

### Implementacion (minimax)

- Se debe guardar el tipo de nodo, MAX o MIN, la profundidad y la utilidad. Inicializar la utilidad de los nodos MAX en $-\infty$ y los MIN en $\infty$.

- Se utiliza una pila como estructura de datos.

- Cuando se expanda un nodo hoja se calcula su utilidad.

- Una vez terminada la construcción, se recorren los nodos en un arreglo desde los más profundos hasta la raíz. Cada nodo informa al padre su utilidad.

- Cuando se llegue a la raíz se tendrá el valor minimax.

## Poda alfa-beta

Aplicada a un árbol minimax, produce la misma jugada que se obtendría sin ella. Los dos parámetros alfa y beta describen los límites sobre los valores que aparecen a lo largo del camino:

- $\alpha$: el valor de la mejor opción (el más alto) que se ha encontrado hasta el momento en cualquier punto del camino, para MAX.

- $\beta$: el valor de la mejor opción (el más bajo) que se ha encontrado hasta el momento en cualquier punto del camino, para MIN.

Esta búsqueda va actualizando el valor de los parámetros según se recorre el árbol.

## Algoritmo minimax con decisiones imperfectas

En lugar de llegar hasta los nodos terminales, se **suspende** antes la búsqueda y se aplica sobre estos nodos una **función de utilidad heurística**.

## Juegos con elemento aleatorio

Un árbol de juego donde influye el azar, debe incluir **nodos aleatorios** para poder modelar el algoritmo minimax. Se calcula el valor esperado en cada nodo aleatorio, esto se hace sumando el valor de las hojas multiplicando por la probabilidad asociada.
