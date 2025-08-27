---
reviewed_on: "2025-08-03"
---

# Minimum spanning tree

## Statement

Given a **connected**, **undirected**, and **weighted** graph, the goal is to find a spanning tree that connects all the vertices together with the minimum possible total edge weight. A spanning tree is a subgraph that includes all vertices of the original graph and is a tree (i.e., it has no cycles).

## Input

A connected, undirected, and weighted graph $G = (V,E,w)$ where:

- $V$ is the set of vertices.

- $E$ is the set of edges.

- $w$ is a function that assigns a weight or cost to each edge $e \in E$.

## Output

A subset of edges $E^\prime \subseteq E$ that forms a spanning tree $T = (V,E^\prime)$ for the graph. The resulting tree $T$ must satisfy two conditions:

1. Spanning: it connects all vertices in $V$.

2. Minimum weight: the sum of the weights of all edges in $E^\prime$ in minimized.

	$$
	\sum_{ e \in E^\prime } w(e) \; \text{is minimal}
	$$
