---
reviewed_on: "2025-02-15"
---

# Introduction to dynamic programming - Fibonacci succession

## 10 Dynamic programming

Dynamic programming combines the best of both worlds. It gives us a way to design custom algorithms that systematically search all possibilities (thus guaranteeing **correctness**) while storing intermediate results to avoid recomputing (thus providing **efficiency**)...

Dynamic programming is a technique for efficiently implementing a recursive algorithm by storing partial results. It requires seeing that a naive recursive algorithm computes the same subproblems over and over and over again. In such a situation, storing the answer for each subproblem in a table to look up instead of recompute can lead to an efficient algorithm. Dynamic programming starts with a recursive algorithm or definition. Only after we have a correct recursive algorithm can we worry about speeding it up by using a results matrix.

### 10.1 Caching vs. computation

Dynamic programming is essentially a tradeoff of space for time...

#### 10.1.1 Fibonacci numbers by recursion

![[personal/computer_science/problems/Fibonacci_sequence|Fibonacci_sequence]]

```cpp
int Fibonacci(int position) {
	if (position == 0)
		return 0;
	else if (position == 1)
		return 1;
	else
		return Fibonacci(position - 1) + Fibonacci(position - 2);
}
```

...Since $\frac{ F_{ n + 1 } }{ F_n } \approx \frac{ 1 + \sqrt{ 5 } }{ 2 } = \phi$, this means that $F_n > \frac{ 1 + \sqrt{ 5 } }{ 2 } \approx { 1.6 }^n$ for sufficiently large $n$. Since our recursion tree has only $0$ and $1$ as leaves, summing them up to get such a large number means we must have at least ${ 1.6 }^n$ leaves or procedure calls...

#### 10.1.2 Fibonacci numbers by caching

In the **top-down** approach, also known as **memoization**, we keep the solution recursive and add a memoization table to avoid repeated calls of same subproblems.

1. Before making any recursive call, we first check if the memoization table already has a solution for it.

2. After the recursive call is over, we store the solution in the memoization table.

```cpp
#define MAX 92 // largest n for which F(n) fits in a long
#define UNKNOWN -1 // contents denote an empty cell
long storage[MAX + 1];


int Fibonacci_helper(int position) {
	if (storage[position] == UNKNOWN)
		storage[position] = Fibonacci_helper(position - 1) + Fibonacci_helper(position - 2);

	return storage[position];
}

int Fibonacci(int position) {
	storage[0] = 0;
	storage[1] = 1;

	for (int i = 2; i < MAX; i++)
		storage[i] = UNKNOWN;

	return Fibonacci_helper(position);
}
```

It computes $F(n)$ in linear time ($O(n)$) because the recursive function `Fibonacci_helper` is called at most twice for each value $k$ where $0 \leq k \leq n -1$.

#### 10.1.3 Fibonacci numbers by dynamic programming

In the **bottom-up** approach, also known as **tabulation**, we start with the smallest subproblems and gradually build up to the final solution.

1. We write an iterative solution and build the solution in bottom-up manner.

2. We use a dynamic programming table where we first fill the solution for base cases and then fill the remaining entries of the table using recursive formula.

3. We only use recursive formula on table entries and do not make recursive calls.

```cpp
#define MAX 92 // largest n for which F(n) fits in a long
#define UNKNOWN -1 // contents denote an empty cell
long storage[MAX + 1];


int Fibonacci(int position) {
	storage[0] = 0;
	storage[1] = 1;

	for (int i = 2; i <= position; i++)
		storage[i] = storage[i - 1] + storage[i - 2];

	return storage[position];
}
```

Like the **top-down** version, the time and space complexity is $O(n)$, but we can improve its space complexity by using two variables instead of one vector.

```cpp
#define MAX 92 // largest n for which F(n) fits in a long


int Fibonacci(int position) {
	int a = 0, b = 1;

	if (position == 0)
		return 0; // a
	else if (position == 1)
		return 1; // b
	else {
		for (int i = 2; i <= position; i++) {
			int next = a + b;
			a = b;
			b = next;
		}

		return b;
	}
}
```

This new version now has a space complexity of $O(1)$.
