---
reviewed_on: "2025-08-04"
---

# Dijkstra

It is a **greedy** algorithm that finds the shortest path from a starting vertex (the "source") to all other vertices in a **weighted** graph with **non-zero** edge weights.

1. Initialization.

	1. Create a set to keep track of visited vertices and a set to keep track of previous vertex.

	2. Assign a tentative distance value to every vertex: set it to zero for our initial vertex and to infinity fo all other vertices.

	3. Set the initial vertex as the current vertex.

2. Iteration.

	1. For te current vertex, consider all of its unvisited neighbors.

	2. For each neighbor, calculate the distance from the source vertex. If this distance is less than the previously recorded distance, update the distance set and previous vertex set.

	3. Once all neighbors of the current vertex have been considered, mark the current vertex as visited. A visited vertex will not be checked again.

3. Selection: select the unvisited vertex with the smallest tentative distance and set it as the new "current vertex".

4. Termination: repeat the process until all vertices have been visited.

## Path reconstruction

To find the shortest path from the source to a destination vertex, you can work backward from the destination using the stored previous vertex information:

1. Start at the destination vertex.

2. Repeatedly move to the previous vertex store for the current one.

3. Continue until you reach the source vertex.

## Complexity

Using an array $O(V^2)$, where $V$ is the number of vertices and $O((V + E) \log V)$ using a binary heap (priority queue).

## C++ implementation
