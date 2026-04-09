---
reviewed_on: "2025-04-07"
---

# Knapsack

## Statement

Given a set of items, each with a weight and a benefit, and a knapsack with a maximum weight capacity, the goal is to select a subset of the items that maximizes the total benefit while ensuring that the total weight does not exceed the knapsack's capacity. Each item can either be included (1) or excluded (0) from the knapsack.

## Input

- A set of $n$ items, where for each item $i$ (with $1 \leq i \leq n$):

	- A weight $w_i$

	- A benefit $b_i$

- A knapsack with a maximum weight capacity $M$.

## Output

A binary vector $(x_1,x_2,\dots,x_n)$ where:

- Each $x_i \in \{0,1\}$ indicates whether item $i$ is included in the knapsack (1) or not (0).

- The total weight of the selected items must not exceed the knapsack's capacity:

	$$
	\sum_{ i = 1 }^n { w_i x_i } \leq M
	$$

- The total benefit is maximized:

	$$
	\text{maximize} \; \sum_{ i = 1 }^n b_i \, x_i
	$$
