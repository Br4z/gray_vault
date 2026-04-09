---
reviewed_on: "2025-03-14"
---

# Dynamic programming

Dynamic programming combines the best of both worlds. It gives us a way to design custom algorithms that systematically search all possibilities (thus guaranteeing **correctness**) while storing intermediate results to avoid recomputing (thus providing **efficiency**)...

Dynamic programming is a technique for efficiently implementing a recursive algorithm by storing partial results. It requires seeing that a naive recursive algorithm computes the same subproblems over and over and over again. In such a situation, storing the answer for each subproblem in a table to look up instead of recompute can lead to an efficient algorithm. Dynamic programming starts with a recursive algorithm or definition. Only after we have a correct recursive algorithm can we worry about speeding it up by using a results matrix.

## Approaches

### Top-down (memoization)

We keep the solution recursive and add a memoization table to avoid repeated calls of same subproblems.

1. Before making any recursive call, we first check if the memoization table already has a solution for it.

2. After the recursive call is over, we store the solution in the memoization table.

## Bottom-up

In the **bottom-up** approach, also known as **tabulation**, we start with the smallest subproblems and gradually build up to the final solution.

1. We write an iterative solution and build the solution in bottom-up manner.

2. We use a dynamic programming table where we first fill the solution for base cases and then fill the remaining entries of the table using recursive formula.

3. We only use recursive formula on table entries and do not make recursive calls.
