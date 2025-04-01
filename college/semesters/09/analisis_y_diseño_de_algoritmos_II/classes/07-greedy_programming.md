---
reviewed_on: "2025-03-14"
---

# Greedy programming

La programación dinámica puede resultar costosa (pocos subproblemas repetidos), es aquí cuando podemos usar una **estrategia** voraz para resolver el problema.

![[personal/computer_science/algorithms/greedy_algorithm|Algoritmo voraz]]

## Problema de selección de actividades

![[personal/computer_science/problems/activity_selection_problem|Problema de selección de actividades]]

### Programación dinámica

#### Caracterización de la estructura de una solución óptima (subestructura óptima)

Sea $A_{ ij }$ la solución al problema $S_{ ij }$ (el problema de selección de actividades considerando las actividades que inician después que termina la actividad $i$ y finalizan antes que inicie la actividad $j$).

$$
A_{ ij } = A_{ ik } \cup \{a_k\} \cup A_{ kj }
$$

#### Definir recursivamente el valor de una solución óptima

$$
C[i,j] = \begin{cases}
		0 & S_{ ij } = \emptyset \\
		\max(c[i,k] + c[k,j] + 1 : a_k \in S_{ ij }) & S_{ ij } \neq \emptyset
	\end{cases}
$$

### Enfoque voraz

1. Se elige la actividad que termina primero, pues esto maximiza el tiempo disponible para programar las siguientes.

2. Luego, se recorre la lista y se selecciona cada actividad que comienza después de que la última actividad elegida ha finalizado.

3. Se continúa este proceso hasta evaluar todas las actividades, garantizando así la selección del mayor número posible de actividades compatibles.

> Si es necesario, se ordenan todas las actividades según su hora de finalización.

## Algorithm (Greedy Approach)

1. **Sort** the activities by their **finish time**.
2. **Select** the first activity and add it to **S**.
3. **Iterate** through the remaining activities:
   - Add an activity **a_j** to **S** **only if** it **starts after** the last selected activity finishes.
4. **Repeat** until all activities are considered.

## Complexity Analysis

- **Sorting** the activities by finish time: **O(n log n)**
- **Iterating** through activities: **O(n)**
- **Total Complexity**: **O(n log n)**