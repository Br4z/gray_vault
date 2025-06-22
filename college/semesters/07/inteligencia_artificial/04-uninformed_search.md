# Uninformed search

## Cómo solucionar un problema

1. Formulación del problema: conjunto de estados, operadores, meta y costo asociado.

2. Búsqueda: evaluar acciones posibles y decidir la más apropiada.

3. Ejecución: una vez encontrada la solución, se procede a ejecutar la secuencia de acciones.

## Problemas bien definidos

- Estados.

    - Como representa el estado actual.

    - Cuáles son los posibles estados.

    - Estado inicial.

- Operadores: aplicado sobre un conjunto particular, genera un conjunto de estados posibles.

- Prueba de meta: permite saber si el estado actual es un estado meta.

- Función costo de una ruta: le asigna un costo a una ruta determinada.

    - El costo es la suma de los costos de cada una de las acciones individuales a lo largo de una ruta.

    - Se denota por la letra $g$.

## Árboles de búsqueda

Permite facilitar la compresión de las **exploraciones**.

- El estado inicial es el **nodo raíz**.

- Se **expande** el nodo raíz al aplicar los operadores sobre el nodo.

- En cada paso, el algoritmo de búsqueda escoge un nodo hoja y lo **expande**.

---

Cada **nodo** del árbol guarda la siguiente información:

- El **estado** del problema.

- Una **referencia** al nodo padre.

- El **operador** que se aplicó para general el nodo.

- La **profundidad** del nodo.

- El **costo** de la ruta desde la raíz hasta el nodo.

### Métodos de búsqueda

#### Búsqueda no informada

No hay caminos prioritarios y la única diferencia entre las técnicas es el orden en que se expanden los nodos.

##### Técnicas (búsqueda no informada)

- Limitada por profundidad.

- Por profundización iterativa.

###### Preferente por amplitud

1. Expandir el nodo raíz, esto genera nodos de profundidad $1$.

2. Expandir, de izquierda a derecha, cada nodo de profundidad $1$.

3. Continuar expandiendo, de izquierda a derecha, cada uno de los nodos en la profundidad $d$ y luego los de profundidad $d + 1$.

> Expandir se refiere al proceso de verificar si el nodo es meta y si no lo es le crea sus respectivos hijos.

Los ciclos no afectan la búsqueda preferente por todos los nodos son explorados.

###### Implementación (preferente por amplitud)

Se puede implementar considerando la lista de nodos a expandir como una **cola**, pues representar directamente un árbol sería más costoso. Empezando por la raíz, la expansión de cada nodo sería agregar los nodos hijos a la cola.

---

- Completitud: si.

- Complejidad temporal: $O(b^n)$.

    Suponiendo un factor de ramificación $b$, el número de nodos expandidos será el número en el nivel actual multiplicado por $b$ (si la meta no está en ese nivel). Empezando desde la raíz, tenemos la siguiente fórmula:

    $$
    f(d) = b^d
    $$

    > Donde $d$ es la profundidad.

    Por lo que en general, las expansiones que se hacen son:

    $$
    \sum_{ i = 0 }^d f(i) = 1 + b + \dots + b^d
    $$

    > Como solo estamos calculando complejidades, omitimos la constante asociada al tiempo que toma expandir un nodo.

- Complejidad espacial: cada nodo del árbol se debe guardar en memoria, por lo que es igual que a la complejidad temporal ($O(b^d)$).

    > Como solo estamos calculando complejidades, omitimos la constante asociada a la memoria necesaria para expandir un nodo.

- Solución óptima: no.

###### De costo uniforme

1. Se expande el nodo raíz.

2. En cada nodo $n$ del árbol se calcula el costo de ruta $g(n)$.

3. Se expande el nodo de menor costo, sin importar a qué profundidad este.

Los ciclos no afectan la búsqueda por costo uniforme porque al repetir estados se acumula el costo de ruta.

> Si todos los costos son iguales, costo uniforme se comporta igual que la búsqueda por amplitud.

---

- Completitud: si.

- Complejidad temporal: numero de nodos con costo menor al de la solucion optima.

- Complejidad espacial: numero de nodos con costo menor al de la solucion optima.

- Solucion optima: si.

###### Implementación (de costo uniforme)

Se puede implementar considerando la lista de nodos a expandir como una **cola**, donde la prioridad es el costo y se selecciona aquel con menor (mayor prioridad).

#### Preferente por profundidad

En lugar de buscar de forma exhaustiva en cada nivel, este algoritmo sigue las ramas del árbol hacia abajo hasta el nivel más bajo que pueda.

1. Se expande la raíz.

2. Siempre se expande, de izquierda a derecha, el nodo con mayor profundidad del árbol.

> Si se llega a un nodo tal que al expandirlo no tiene hijos, se expanden los nodos de niveles mas profundos.

Los ciclos afectan a la búsqueda preferente por profundidad, además del orden de los operadores.

---

- Completitud: no.

- Complejidad temporal: $O(b^d)$, en el peor caso se expanden los mismos nodos que por amplitud, simplemente en un orden distinto.

- Complejidad espacial: $b * d$, no es necesario guardar cada nodo del árbol en memoria.

    > Como máximo se tienen en memoria todos los nodos del nivel actual y de los anteriores de un nodo para llegar a él.

- Solución óptima: no.

#### Preferente por profundidad evitando ciclos

Es igual al preferente por profundidad, solo que en este se evita que sobre una misma rama se alcance un estado previo.

#### Limitada por profundidad

Es igual al preferente por profundidad, solo que en este se establece una profundidad **máxima** hasta la que se hace la exploración, cuando se llega a esta, se continúa con las profundidades anteriores.

> El límite a usar depende del problema en particular.

Podríamos decir que este enfoque intenta tomar lo bueno de preferente por profundidad, llegar más rápido a una solución que amplitud sin caer en bucles.

---

- Completitud: sí (siempre y cuando el límite seleccionado incluya alguna solución).

- Complejidad temporal: $O(b^d)$, donde $d$ es la profundidad máxima.

- Complejidad espacial: $O(b * d)$, donde $d$ es la profundidad máxima.

- Solución óptima: no.

#### Por profundización iterativa

Es igual a la limitada por profundidad, solo que este prueba todos los **límites** de profundidad posibles, inicialmente toma como límite $0$ y lleva a cabo una búsqueda limitada por profundidad, luego aumenta el límite en $1$ y realiza el mismo procedimiento, así hasta encontrar alguna solución.

---

- Completitud: sí.

- Complejidad temporal: $O(b^d)$, donde $d$ es la profundidad máxima probada.

    $$
    \sum_{ i = 0 }^d { (d - i) b^i } = (d + 1) 1 + d b + (d - 1) b^2 + \dots + 1 * b^d
    $$

- Complejidad espacial: $O(b * d)$, donde $d$ es la profundidad máxima probada.

- Solución óptima: no.
