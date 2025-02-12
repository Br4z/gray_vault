---
reviewed_on: "2025-01-09"
---

# Counting

1. Create an array of integers sized by the maximum value in the range (from $0$ up to max). Initialize every element to $0$.

2. Traverse all elements to count how many times each value appears.

3. Calculate the relative frequency for each value.

4. Place each value into the output array according to its frequency, decrementing its count after each placement.

## Complexity

- All cases: $O(N + M)$.

	where $N$ and $M$ are the size of the input and frequencies arrays respectively.

## C++ Implementation

```c++
template <class T>
int get_number_representation(T element) {
	if constexpr (std::is_integral <T>::value || std::is_floating_point <T>::value)
		return element;
	else
		throw std::runtime_error("Error: unsupported type");
}

template <class T>
T* counting_sort(T* input, int input_length) {
	int max = 0;

	for (int i = 0; i < input_length; i++) {
		int number_representation = get_number_representation(input[i]);
		if (number_representation > max)
			max = number_representation;
	}

	int* relative_frequencies = new int[max + 1]();

	for (int i = 0; i < input_length; i++)
		relative_frequencies[input[i]]++;

	for (int i = 1; i <= max; i++)
		relative_frequencies[i] += relative_frequencies[i - 1];

	T* output = new T[input_length];
	for (int i = input_length - 1; i >= 0; i--) {
		int number_representation = get_number_representation(input[i])
		output[relative_frequencies[number_representation] - 1] = input[i];
		relative_frequencies[number_representation]--;
	}

	delete[] relative_frequencies;
	return output;
}
```
