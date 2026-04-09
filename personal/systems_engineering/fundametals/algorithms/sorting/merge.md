---
reviewed_on: "2025-05-05"
---

# Merge

1. Divide: divide the list or array recursively into two halves until it can no more be divided.

2. Conquer: each subarray is sorted individually using the merge sort algorithm.

3. Merge: the sorted subarrays are merged back together in sorted order. The process continues until all elements from both subarrays have been merged.

The recurrence relation of is:

$$
T(n) =
\begin{cases}
	\Theta(1)                        & n = 1 \\
	2 T(\frac{ n }{ 2 }) + \Theta(n) & n > 1
\end{cases}
$$

- $T(n)$: the total time taken by the algorithm to sort an array of size $n$.

- $2 T(\frac{ n }{ 2 })$: the time taken by the algorithm to recursively sort the two halves of the array.

- $\Theta(n)$: the time taken to merge the two sorted halves.

## Complexity

- All cases: $O(n \log_2 n) = O(n \log n)$.

## C++ implementation

```c++
#include <vector>


template <class T>
void merge(std::vector <T> &input, int left, int middle, int right) {
	int n_1 = middle - left + 1;
	int n_2 = right - middle;

	std::vector <T> array_1(input.begin() + left, input.begin() + middle + 1);
	std::vector <T> array_2(input.begin() + middle + 1, input.begin() + right + 1);

	int i = 0, j = 0, k = left;

	while (i < n_1 && j < n_2) {
		if (array_1[i] > array_2[j])
			input[k++] = array_2[j++];
		else
			input[k++] = array_1[i++];
	}

	while (i < n_1)
		input[k++] = array_1[i++];

	while (j < n_2)
		input[k++] = array_2[j++];
}

template <class T>
void merge_sort(std::vector <T> &input, int left, int right) {
	if (left < right) {
		int middle = (left + right) / 2;
		merge_sort(input, left, middle);
		merge_sort(input, middle + 1, right);
		merge(input, left, middle, right);
	}
}
```
