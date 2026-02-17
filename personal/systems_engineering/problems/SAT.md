---
reviewed_on: "2025-08-03"
---

# SAT

## Statement

Given a boolean formula in Conjunctive Normal Form (CNF), the goal is to determine whether there exists an assignment of truth values to its variables that makes the entire formula evaluate to **true**.

## Input

- A set of $n$ boolean variables, $V = \{x_1,x_2,\dots,x_n\}$.

- A set of $m$ clauses, $C = \{c_1,c_2,\dots,c_m\}$, where the overall formula is the conjunction of all clauses.

	$$
	c_1 \pand c_2 \pand \dots c_m
	$$

- Each clause $c_i$ is a disjunction (OR) of one or more **literals**. A literal is a variable $x_j$ or its negation $\lnot x_j$.

## Output

A boolean indicating whether the formula is satisfiable. If satisfiable, an assignment of truth values that make the formula true.

## Special case: 3-SAT

The 3-SAT problem is a constrained version of SAT. It only differs in the number of literals per clause; while in a SAT instance clauses can have any number of literals, in a 3-SAT instance each clause must contain **exactly three literals**.

