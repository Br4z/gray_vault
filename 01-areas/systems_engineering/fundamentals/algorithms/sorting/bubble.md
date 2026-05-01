---
reviewed_on: "2025-05-05"
---

# Bubble

1. Compare adjacent elements from the start of the list.

2. If a pair is out of order, swap them.

3. Move to the next pair and repeat until the end of the list.

4. On each pass, the largest element "bubbles" to the end of the list.

5. Keep repeating passes until no swaps are needed.

## Complexity

- All cases: $O(n^2)$.

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
void bubble_sort(std::vector <T> &input) {
	bool swapped;
	int input_length = input.size();

	for (int i = 0; i < input_length - 1; i++) { // n - 1 passes
		swapped = false;
		for (int j = 0; j < input_length - i - 1; j++) // Ensures that j + 1 is in bounds
			if (input[j] > input[j + 1]) {
				swap(input, j, j + 1);
				swapped = true;
			}

		if (!swapped)
			break;
	}
}
```
