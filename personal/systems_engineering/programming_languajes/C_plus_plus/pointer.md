---
reviewed_on: "2025-01-12"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/cpp-pointers
    language: English
---

# Pointer

A pointer is a type of variable for storing a memory address. It enables programs to simulate call-by-reference as well as to create and manipulate dynamic data structures. Iterating over elements in arrays or other data structures is one of the main uses of pointers.

## Syntax

```c++
datatype* var_name;
```

## Advanced pointer notation

Consider a two-dimensional array `A[i][j]`. A pointer notation can be used to access the element in row `i` and column `j` with `*(*(*(A + i) + j)`.

### Usage example (advanced pointer notation)

```c++
int A[2][3]  =  {
	{ 16, 18, 20 },
	{ 25, 26, 27 }
};

for (int i = 0; i < 2; i++) {
	for (int j = 0; j < 3; j++)
		std::cout << &A[i][j] << " ";
	std::cout << "\n";
}

std::cout << "\n--------------------\n";

int A_1[3] = { 16, 18, 20 }; // *(A + 0)
int A_2[3] = { 25, 26, 27 }; // *(A + 1)

int* ptr = A_1;

for (int i = 0; i < 3; i++)
	std::cout << *(ptr + i) << " "; // *(*(A + 0) + i)

std::cout << "\n";

ptr = A_2;

for (int i = 0; i < 3; i++)
	std::cout << *(ptr + i) << " "; // *(*(A + 1) + i)

std::cout << "\n--------------------\n";

int (*ptr_2D)[3] = A;

for (int i = 0; i < 2; i++) {
	for (int j = 0; j < 3; j++)
		std::cout << *(*(ptr_2D + i) + j) << " ";
	std::cout << "\n";
}
```

## Pointers to pointers

### Usage example (pointers to pointers)

Because a pointer is a variable, you can create a pointer to a pointer, forming a chain of pointers.

```c++
char a;
char* b;
char** c;
a = 'g';
b = &a;
c = &b;
```

## Void pointers

Void pointers are pointers that point to a value that has no type (and thus also an undetermined length and undetermined dereferencing properties). This means that void pointers have great flexibility, as they can point to any data type. There is a payoff for this flexibility. These pointers cannot be directly dereferenced. They have to first be transformed into some other pointer type that points to a concrete data type before being dereferenced.

### Usage example (Void pointers)

```c++
void increase(void* data, int ptr_size) {
	if (ptr_size == sizeof(char)) {
		char* ptr_char;
		ptr_char = (char*) data;
		(*ptr_char)++;
		std::cout << "*data points to a char" << "\n";
	} else if (ptr_size == sizeof(int)) {
		int* ptr_int;
		ptr_int = (int*) data;
		(*ptr_int)++;
		std::cout << "*data points to an int" << "\n";
	}
}

void main() {
	char c = 'x';
	int i = 10;

	increase(&c, sizeof(c));
	std::cout << "The new value of c is: " << c << "\n";

	increase(&i, sizeof(i));
	std::cout << "The new value of i is: " << i << "\n";
}
```
