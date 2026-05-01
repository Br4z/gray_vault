---
reviewed_on: "2025-02-19"
---

# Coin change

## Statement

Given a set of coin denominations **A** and a target amount **P**, the goal is to determine the **minimum number of coins** required to make the exact amount **P**. Additionally, we need to find which coins (and their counts) achieve this minimum.

## Input

- A sorted set of $n$ coin denominations.

	$$
	A = \{a_1,a_2,\dots,a_n\}, \quad \text{where} \; a_i \in \mathbb{ N } \pand a_1 < a_2 < \dots < a_n
	$$

- A target amount $P$ (a natural number).

## Output

A tuple $(m_1,m_2,\dots,m_n)$ where:

- Each $m_i$ represents the number of times coin $a_i$ is used.

- The total value of the selected coins must equal $P$:

	$$
	\sum_{ i = 1 }^n m_i a_i = P
	$$

- The total number of coins used is minimized:

	$$
	\sum_{ i = 1 }^n m_i \; \text{is minimal}
	$$
