# Informed search

## Heurística

Una heurística es una función que asigna a cada nodo un valor que corresponde al **costo estimado para llegar a la meta** estando en dicho nodo. Se denota por $h(n)$.

La heurística $h(n)$ deber ser $0$ cuando $n$ es un nodo meta.

---

La utilización de heurísticas en los métodos de búsqueda permiten reducir el espacio de estados a expandir en la construcción del árbol.

## Estrategias de búsqueda informada

### Avara

Expandir el nodo con **menor** $h(n)$, este es, aquel que parece estar más cerca de la meta, sin importar a qué profundidad esté. **Minimizando** el **costo** estimado (según la heurística) para lograr una meta.

- Completitud: no.

- Complejidad temporal: $O(b^d)$.

- Complejidad espacial: $O(b^d)$.

- Solución óptima: no, la función heurística no la garantiza.

#### Implementación (Avara)

Se puede implementar considerando la lista de nodos a expandir como una **cola de prioridad**, donde la prioridad es el valor de la **heurística**.

### A*

Expandir el nodo con **menor** $f(n)$, este es, aquel con el menor consto estimado para llegar a la solución.

$$
f(n) = g(n) + h(n)
$$

#### Implementación (A*)

Se puede implementar considerando la lista de nodos a expandir como una **cola de prioridad**, donde la prioridad es el valor de **$f(n)$**.

---

Esta estrategia es **completa** y **óptima** si se cumple que la heurística $h(n)$ es **admisible**, es decir, que nunca asigna un valor mayor al real.

> Las heurísticas admisibles se conocen como heurísticas **optimistas**.

$$
h(n) \leq \text{ costo real }(n)
$$

- Completitud: sí.

- Complejidad temporal: número de nodos con una $f(n)$ más pequeña que el costo óptimo.

- Complejidad espacial: número de nodos con una $f(n)$ más pequeña que el costo óptimo.

- Solución óptima: sí.

## Diseño de heuristicas

En general, si se desea calcular la heurística de un problema que involucre intercambios, solo se tiene que negar las unidades que no cumplen con el objetivo deseado y se divide por el máximo de unidades que se pueden llevar a un estado ideal en un movimiento. Aunque se divida por un número mayor al máximo de unidades que se pueden llevar a un estado ideal en un movimiento, la heurística seguirá siendo **admisible**, pero su comportamiento será más parecido a la búsqueda por **costo uniforme**.

## Heurísticas y desempeño

$b^*$ es el factor de ramificación de $A^*$ y se conoce como **factor de ramificación efectiva**. Si tenemos un árbol que genera tiene $N$ nodos y tiene una profundidad $d$, se tiene que:

$$
1 + b^* + (b^*)^2 + \dots + (b^*)^d = N
$$

> En una heurística **bien** diseñada, **b\*** se aproxima a $1$.

---

Sean dos heurísticas $h_1$ y $h_2$, si para todo nodo $n$, pasa que $h_2(n) \geq h_1(n)$ decimos que $h_2$ **domina** a $h_1$.
