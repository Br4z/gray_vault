---
reviewed_on: "2025-03-02"
---

# Matrix chain multiplication

## Statement

Given a sequence of matrices, the goal is to determine the optimal way to multiply them, minimizing the total number of scalar multiplications. The order of multiplication affects the computational cost but not the final result.

## Input

A sequence of $n$ matrices $A_1, A_2, \dots, A_n$. Each matrix $A_i$ has dimensions $p_{ i - 1} \times p_i$, where $p_0, p_1, \dots, p_n$ represent the matrix dimensions.

## Output

An optimal parenthesization of the matrix sequence that minimizes the number of scalar multiplications, from what you can get the minimum number of scalar multiplications required to compute the product.
