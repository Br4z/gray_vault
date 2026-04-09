---
reviewed_on: "2025-03-18"
---

# Activity selection problem

Given a set of $n$ activities, each with a **start time** and an **end time**, the goal is to select the **maximum number of non-overlapping activities**.

Each activity $a_i$ is represented by:

- A start time $s_i$.

- A finish time $f_i$, where $s_i < f_i$.

The activities are **sorted in ascending order** by their **finish time**.

## Input

- A set of $n$ activities:

	$$
	S = \{(s_1,f_1),(s_2,f_2),\dots,(s_n,f_n)\}
	$$

	where $s_i$ and $f_i$ are natural numbers and the activities are sorted by $f_i$.

## Output

A subset of $S$ ($A \subseteq S$) of selected activities:

$$
A = \{(s_{ i_1 },f_{ i_1 }),(s_{ i_2 },f_{ i_2 }),\dots,(s_{ i_k }, f_{ i_k })\}
$$

such that:

- The activities in $A$ are **mutually compatible** (no overlaps).

- The number of selected activities $k$ ($|A|$) is maximized.
