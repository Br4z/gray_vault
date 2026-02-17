---
reviewed_on: "2025-05-05"
---

# Insertion

1. Start with a single element, which is already in order.

2. When $k$ elements are sorted, take the ($k + 1$)-th element.

3. Compare this new element to each sorted element in descending order, shifting larger elements one position to the right.

4. Stop comparing when a smaller element is found or when there are no more elements to compare.

5. Insert the ($k + 1$)-th element in its correct position.

> Repeat step 1 if the number of elements is less equal to $k + 1$.

## Complexity

- Best case: $O(n)$.

- Worst case: $O(n^2)$.

- Average case: $O(n^2)$.

## C++ Implementation

```c++
#include <vector>


template <class T>
void insertion_sort(std::vector <T> &input, int input_length) {
	for (int i = 1; i < input_length; i++) {
		T element = input[i];
		int j = i - 1;

		while (j >= 0 && input[j] > element) {
			input[j + 1] = input[j];
			j--;
		}

		input[j + 1] = element;
	}
}
```
