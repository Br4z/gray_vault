---
reviewed_on: "2025-08-03"
---

# Subset sum

## Statement

Given a set of non-negative integers and a target sum, the goal is to determine if there exists a subset of the given set whose elements sum up to the target value.

## Input

- A set of array of $n$ non-negative integers, $A = \{a_1,a_2,\dots,a_n\}$.

- A target integer sum, $S$.

## Output

A boolean indicating whether a subset with the specified sum exists. If such a subset exists, the output should be the subset itself.

$$
A^\prime \subseteq A \quad \sum_{ a_i \in A^\prime } a_i = S
$$
