---
reviewed_on: "2025-08-03"
---

# Vertex cover

## Statement

Given an undirected graph, the goal is to find a **vertex cover** with the minimum possible number of vertices. A vertex cover is a subset of the graph's vertices such that every edge in the graph is incident to (i.e., touches) at least one vertex in the subset.

## Input

An undirected graph $G = (V,E)$, where:

- $V$ is the set of vertices.

- $E$ is the set of edges.

## Output

A subset of vertices $V^\prime \subseteq V$ such that for every edge $(u,v) \in E$, at leas one of its endpoints is in the subset (i.e., $u \in V^\prime$ or $v \in V^\prime$). The size of the subset, $\card{ V^\prime }$, must be minimized.
