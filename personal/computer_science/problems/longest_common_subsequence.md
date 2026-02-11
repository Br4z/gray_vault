---
reviewed_on: "2025-02-24"
---

# Longest common subsequence

## Subsequence definition

A sequence $Z$ is a subsequence of another sequence $X$ if $Z$ can be obtained from $X$ by deleting zero or more elements without changing the order of the remaining elements. Formally, given:

$$
X = \langle x_1,x_2,\dots,x_n \rangle
$$

a sequence

$$
Z = \langle z_1,z_2,\dots,z_k \rangle
$$

is a subsequence of $X$ if there exists an increasing sequence of indices:

$$
1 \leq i_1 < i_2 < \dots < i_k \leq n
$$

such that:

$$
z_j = x_{ i_j } \quad \forall j \in \{1,2,\dots,k\}
$$

## Statement

Given two sequences $X$ and $Y$, the goal is to determine the longest common subsequence (LCS) shared by both.

## Input

Two sequences:

1. Sequence $X$ of length $n$.

	$$
	X = \langle x_1,x_2,\dots,x_n \rangle
	$$

2. Sequence $Y$ of length $m$.

	$$
	Y = \langle y_1,y_2,\dots,y_m \rangle
	$$

## Output

The longest common subsequence $Z$:

$$
Z = \langle z_1,z_2,\dots,z_k \rangle
$$

where $Z$ is a subsequence of both $X$ and $Y$, and the length $k$ is as large as possible.
