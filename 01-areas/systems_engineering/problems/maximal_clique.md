---
reviewed_on: "2025-08-03"
---

# Maximal clique

## Statement

Given an undirected graph, the goal is to find a maximal clique. A clique is a subset of vertices where every two distinct vertices are adjacent (connected by an edge). A clique is maximal if it cannot be extended by adding any other vertex from the graph. In other words, any vertex not in the maximal clique is not connected to at least one vertex within the clique.

It is different from the **maximum clique** problem. The maximum clique problem, seeks to find the largest possible clique in the graph.

## Input

An undirected graph $G = (V,E)$, where:

- $V$ is the set of vertices.

- $E$ is the set of edges.

## Output

A subset of vertices $C \subseteq V$ that satisfies two conditions:

1. Clique property: for every pair of distinct vertices $u,v \in C$, $(u, v) \in E$.

2. Maximality property: there is no vertex $w \in V \setminus C$ such that $C \cup \{w\}$ is also a clique.
