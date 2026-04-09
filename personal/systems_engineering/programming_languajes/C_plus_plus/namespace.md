---
reviewed_on: "2025-01-12"
sources:
  - author: NA
    url: https://www.geeksforgeeks.org/namespace-in-c
    language: English
---

# `namespace`

It provides the space where we can define or declare an identifier, in other words, we can define the space or context in which identifiers are defined.

## Why use it?

A namespace is designed to overcome the name collision error and is used as additional information to differentiate functions, classes, similar variables, etc.

> Different libraries with the same bindings.

## Declaring a namespace

A namespace definition begins with the namespace keyword followed by the namespace name as follows:

```c++
namespace  namespace_name {
	// Code declarations
}
```

> You can nest namespaces.

## `using`

This directive tells the compiler that the subsequent code is making use of names in the specified namespace.

```c++
using namespace <namespace>;

// Follwing code
```

## Usage example

```c++
#include <iostream>
#include <string>

namespace first_namespace {
	void func() {
		std::cout << "Inside first_namespace" << std::endl;
	}

	namespace second_space {
		void func() {
			std::cout << "Inside second_namespace" << std::endl;
		}
	}

	void cout(std::string text) {
		std::cout << text << std::endl;
	}
}

using namespace first_namespace::second_space;
int main () {
	func();
	first_namespace::cout("text");

	return 0;
}
```
