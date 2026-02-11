---
reviewed_on: "2025-02-01"
---

# Object oriented programming midterm

1. Determine cuál de las afirmaciones es correcta:

	1. El tipo de dato de un puntero no debe coincidir (ser equivalente) con el de la variable cuya posición en memoria apunta.

	2. **El tipo de dato de un puntero debe coincidir (ser equivalente) con el de la variable cuya posición en memoria apunta.**

	3. El tipo de dato de un puntero debe coincidir con la posición en memoria a la que apunta la variable.

	4. Ninguna de las anteriores es correcta.

	5. Todas las anteriores son correctas.

2. Para usar un puntero es necesario:

	1. Poner antes del nombre del puntero un ampersand (`&`) para indicar que usaremos el valor en la posición de memoria apuntada.

	2. Poner después del nombre del puntero un ampersand (`&`) para indicar que usaremos el valor en la posición de memoria apuntada.

	3. Poner después del nombre del puntero un asterisco (`*`) para indicar que usaremos el valor en la posición de memoria apuntada.

	4. **Poner antes del nombre del puntero un asterisco (`*`) para indicar que usaremos el valor en la posición de memoria apuntada.**

	5. Ninguna de las anteriores es correcta.

	6. Todas las anteriores son correctas.

3. Al usar un objeto dinámico debemos liberar memoria, para ello usamos:

	1. El ampersand (`&`).

	2. El asterisco (`*`).

	3. El `new`.

	4. El `clear`.

	5. El `delete[]`.

	6. **El `delete`.**

	7. Ninguna de las anteriores.

	8. Todas las anteriores.

4. `virtual` sirve para:

	1. Crear objetos dinámicos de cualquier tipo.

	2. Liberar memoria.

	3. **Hacer polimorfismo en un método.**

	4. Hacer una relación de herencia.

	5. Ninguna de las anteriores.

	6. Todas las anteriores.

5. Con este extracto de código:

	- `Class.h`.

		```CPP
		class Class {
			public:
				virtual void a_method(int number) = 0;
		};
		```

	- `AnotherClass.h`.

		```CPP
		#include "Class.h"


		class AnotherClass : public Class {
			public:
				AnotherClass();
				virtual void a_method(int);
				virtual void another_method();
		}
		```

	- `AnotherClass.cpp`.

		```CPP
		#include <iostream>

		#include "AnotherClass.h"


		AnotherClass::AnotherClass() {

		}


		void AnotherClass::another_method() {
			std::cout << "another_method's body\n";
		}
		```

	- `main.cpp`.

		```CPP
		#include "AnotherClass.h"


		int main() {
			AnotherClass object = AnotherClass(); // 1
			object.another_method(); // 2
			return 0;
		}
		```

	seleccione la afirmación que sea correcta.

	1. En $1$ se crea un objeto estático de la clase `AnotherClass`, porque `AnotherClass` no es una clase abstracta.

	2. En $1$ se crea un objeto dinámico de la clase `AnotherClass`, porque `AnotherClass` no es una clase abstracta.

	3. En $1$ no se puede crear un objeto estático de la clase `AnotherClass` porque `AnotherClass` es una clase abstracta.

	4. En $1$ no se puede crear un objeto dinámico de la clase `AnotherClass` porque `AnotherClass` es una clase abstracta.

	5. **Ninguna de las anteriores.**

6. Con este extracto de código:

	```CPP
	bool* pointer = nullptr; // 1
	bool w; // 2
	bool p = 4; // 3
	pointer = &w; // 4
	*pointer = p; // 5
	std::cout << *pointer; // 6
	```

	seleccione las afirmaciones que son correctas.

	1. En $1$ se declara una dirección de memoria y en $2$ se le asigna al puntero la dirección de memoria de la variable.

	2. **En $1$ se declara un puntero y en $2$ se declara una variable.**

	3. En $4$ se le asigna al puntero la dirección de memoria de `p`.

	4. En $4$ se le asigna al puntero el valor de `w`.

	5. **En $4$ se le asigna al puntero la dirección de memoria de `w`.**

	6. En $5$ cambia el valor de `*pointer` por la dirección a la que está apuntando `p`.

	7. En $5$ se lanza un error porque no se puede hacer esa asignación.

	8. **En $5$ se cambia el valor de `w` por el valor que tiene `p`.**

	9. **En $3$ a `p` se le asigna el valor de `1`.**

	10. En $3$ sale error porque no se puede asignar ese valor a `p`.

	11. En $1$ se lanza un error porque `pointer` no puede tener de valor `nullptr`.

7. Con este extracto de código:

	```CPP
	int v = 100; // 1
	int &w = v; // 2
	int x = w * 30; // 3
	std::cout << &w; // 4
	```

	seleccione las afirmaciones que son correctas.

	1. En $2$ se declara una dirección de memoria y se le asigna el valor de `v`.

	2. En $2$ se crea un puntero de `v`.

	3. **En $2$ se crea una referencia de `v`.**

	4. En $4$ se imprime la dirección de memoria de `w` que es diferente a la dirección de `v`.

	5. **En $4$ se imprime la dirección de memoria de `v`.**

	6. En $4$ se imprime el valor que tiene asignado `w`.

	7. En $4$ se imprime el valor de `100`.

	8. El programa no ejecuta, sale error de compilación.

	9. Ninguna de las anteriores.

8. Con este extracto de código:

	```CPP
	#include <iostream>


	void function_1(int &data) {
		data = data * 2;
	}

	void function_1(const int* data) {
		data = data * 4;
	}

	void funcion_2(int data) {
		data = data * 3;
	}

	int main(){
		int v = 100; // 1
		int &w = v; // 2
		int x = w * 30; // 3

		function_1(v); // 4
		funcion_2(v); // 5
		std::cout << v << '\n'; // 6

		function_1(w); // 7
		function_1(&w); // 8
		std::cout << w << '\n'; // 9

		function_1(x); // 10
		funcion_2(x); // 11
		std::cout << x << '\n'; // 12

		return 0;
	}
	```

	seleccione las afirmaciones que son correctas.

	1. En $6$ se imprime `200`.

	2. En $6$ se imprime `600`.

	3. El programa si ejecuta, pero no se modifica `v` del main, porque se pasa parámetro por valor, entonces imprime `100` en $6$.

	4. **El programa no ejecuta, se genera un error de compilación porque no se puede hacer la instrucción `data = data * 4;` dentro de `function_1`.**

	5. Ninguna de las anteriores.

9. Con este extracto de código:

	```CPP
	#include <iostream>


	double cast_to_double(std::string string) {
		double output = 0;

		try {
			if (string =="0.0")
				throw -1;
			output = std::stod(string);
		} catch(std::invalid_argument &error) {
			std::cout << "Error: string is not a number\n";
			output = 1;
		} catch(int number) {
			std::cout << "I do not want to convert \"0.0\"\n";
			output -= 1;
		} catch(...) {
			std::cout << "Generic error\n";
			output = 1;
		}
			return output;
	}

	int main() {
		std::cout << cast_to_double("0.0") << '\n';
		return 0;
	}
	```

	seleccione las afirmaciones que son correctas.

	1. Cuando se lanza la excepción en `cast_to_double` entra al `catch(...)`.

	2. Cuando se lanza la excepción en `cast_to_double` entra al `catch(std::invalid_argument &error)`.

	3. **Cuando se lanza la excepción en `cast_to_double` entra al `catch(int number)`.**

	4. El `cast_to_double` retorna `1`.

	5. **El `cast_to_double` retorna `-1`.**

	6. El `cast_to_double` retorna `-2`.

	7. El `cast_to_double` retorna `0`.
