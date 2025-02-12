---
reviewed_on: "2025-02-03"
---

# Decision trees

- Nodes: represent the verification of a condition on an attribute.

- Branches: represent the value of the condition checked in the **node** from which they derive.

- Leaf node: represents the class labels.

## Basic (greedy) Algorithm

- The tree is built in a **top-down** recursive manner using **divide and conquer**.

- Initially, all tuples are at the root.

- The attributes must be **categorical**; if they are continuous values, they must be **discretized** beforehand.

- The tuples are recursively divided based on the selected attribute.

- The condition attributes are selected based on statistics or using statistical measures.

## Information Gain

To select the attribute with the highest information gain, consider two classes $P$ and $N$. Let the set of examples $S$ contain $p$ elements of class $P$ and $n$ elements of class $N$. The amount of information needed to decide whether any given sample from $S$ belongs to $P$ or $N$ is defined as:

$$
\operatorname{I}(p,n) = -\frac{ p }{ p + n } \log_2 \frac{ p }{ p + n } - \frac{ n }{ p + n } \log_2 \frac{ n }{ p + n }
$$

> This is called **entropy**.

- Maximum: when the probability of the two classes is the same.

	$$
	\text{entropy}_\text{max} = -0.5 \log_2 0.5 - (-0.5 \log_2 0.5) = 1
	$$

- Minimum (**pure node**): when all the probability is in one class.

	$$
	\text{entropy}_\text{min} = -1 \log_2 1 = 0
	$$

The optimal split is obtained by choosing the **feature** with **minimum entropy**.

---

If an attribute $A$ is used, a set $S$ will be divided into sets $\{S_1,S_2,\dots,S_v\}$. If $S_i$ contains $p_i$ elements of $P$ and $n_i$ elements of $N$, the entropy, or the information required to classify objects in all the subtrees $S_i$, is

$$
E(A) = \sum_{ i = 1 }^v \frac{ p_i + n_i }{ p + n } I(p_i, n_i)
$$

The information gain of the branch $A$ is

$$
\operatorname{Gain}(A) = I(p,n) - E(A)
$$
