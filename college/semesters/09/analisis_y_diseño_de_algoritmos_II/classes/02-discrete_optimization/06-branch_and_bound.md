---
reviewed_on: "2025-05-15"
---

# Branch and bound

Este algoritmo sirve para resolver problemas de programación entera o mixta, donde algunas o todas las variables deben tomar valores enteros. Se basa en resolver relajaciones continuas (sin la restricción de integralidad) para obtener cotas (bounds) que guíen la búsqueda.

## Pasos

1. Relajación continua.

	Se resuelve el problema original ignorando la condición de integralidad con el método simplex.

	> Relajación continua se refiere a un enfoque en el que se eliminan temporalmente las restricciones de integralidad de un problema de optimización entera.

2. Verificar si en la solución obtenida en el paso anterior, alguna de las variables viola alguna condición de integralidad.

	> Si esto no ocurre, se encontró una solución óptima.

3. Se elige una variable cuya solución no sea entera (variable de ramificación).

4. Ramificación (branching).

	Se generan dos subproblemas añadiendo restricciones complementarias que obliguen a la variable a tomar valores enteros.

	Sea $x_i$ la variable que incumple la condición de integralidad con un valor $v$, los subproblemas que genera son dos, con las siguientes restricciones

	$$
	R_1 = x_i \leq \floor{ v } \quad R_2 = x_i \geq \ceil{ v }
	$$

5. Acotación (bounding).

	Cada subproblema se resuelve como **relajación continua** (paso 1), obteniendo nuevas cotas. Si la cota del subproblema no puede superar la mejor solución entera conocida o la relajación es **infactible**, se poda ese nodo (no es necesario explorar).

Cuando no quedan nodos pendientes por explorar, el algoritmo finaliza.
