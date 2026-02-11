---
reviewed_on: "2025-05-05"
---

# Quick

1. Choose an element from the set of elements to be sorted, which we will call the **pivot**.

2. Resituate the other elements of the list on each side of the pivot, so that on one side are all the elements smaller than the pivot, and on the other side are all the elements larger than the pivot. At this point, **the pivot occupies exactly the place that will correspond to it in the ordered list**.

3. The list is separated into two sublists, one formed by the elements to the left of the pivot and the other by the elements to the right of the pivot.

4. Repeat this process recursively for each sublist as long as it contains more than one element.

> The efficiency of the algorithm depends on the position at which the chosen pivot ends.

> In the C++ implementation, the pivot will be the first element.

## Complexity

- Best case: $O(n \log_2 n) = O(n \log n)$.

- Worst case: $O(\frac{ n (n + 1) }{ 2 }) = O(n^2)$.

- Average case: $O(n \log n)$.

## C++ implementation

```c++
#include <vector>


template <class T>
void swap(std::vector <T> &input, int i, int j) {
	T temp = input[i];
	input[i] = input[j];
	input[j] = temp;
}

template <class T>
int partition(std::vector <T> &input, int left, int right) {
/*  T pivot = input[left];
	int i = left;

	for (int j = left + 1; j <= right; j++)
		if (input[j] <= pivot) {
			i++;
			swap(input, i, j);
		}

	swap(input, i, left);

	return i; */
	T pivot = input[right];
	int i = left - 1;

	for (int j = left; j <= right - 1; j++)
		if (input[j] <= pivot) {
			i++;
			swap(input, i, j);
		}

	swap(input, i + 1, right);

	return i + 1;
}

template <class T>
void quick_sort(std::vector <T> &input, int left, int right) {
	if (left < right) {
		int pivot = partition(input, left, right);

		quick_sort(input, left, pivot - 1);
		quick_sort(input, pivot + 1, right);
	}
}
```
