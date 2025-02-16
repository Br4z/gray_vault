---
reviewed_on: "2025-02-14"
---

# Motivation

Considere el [[personal/computer_science/problems/coin_change|problema del cambio de monedas]] y las siguientes dos soluciones propuestas:

1. `fun approach_1(A, P)`.

	$$
	\begin{align}
		& \mathrm{ fun } \; \mathrm{ approach\_1 }(A, P) \\
		& \quad i = A.\text{size} \\
		& \quad \textbf{while} ~ i > 0 \\
		& \quad \quad m_i = \frac{ p }{ a_i } \\
		& \quad \quad p = p - m_i * a_i \\
		& \quad \quad i = i - 1 \\
		& \quad \textbf{return} ~ (m_1,\dots,m_n)
	\end{align}
	$$

	```cpp
	int* approach_1(int denominations[], int n, int amount) {
		int* solution = new int[n]();

		for (int i = n - 1; i >= 0; i--) {
			solution[i] = amount / denominations[i];
			amount -= solution[i] * denominations[i];
		}

		return solution;
	}
	```

2. `fun approach_2(A, P)`.

	$$
	\begin{align}
		& \mathrm{ fun } \; \mathrm{ approach\_2 }(A, P) \\
		& \quad \text{sum} = \infty, \quad M = \left( \frac{ P }{ a_1 }, \frac{ P }{ a_2 }, \dots, \frac{ P }{ a_n } \right) \\
		& \quad \textbf{for each} ~ (m_1, m_2, \dots, m_n) ~ \textbf{such that} \\
		& \quad \quad 0 \leq m_i \leq M_i ~ \wedge ~ \sum_{ i = 1 }^n  m_i a_i = P ~ \textbf{do} \\
		& \quad \quad \quad \textbf{if} ~ \text{sum} > \sum_{ i = 1 }^n m_i ~ \textbf{then} \\
		& \quad \quad \quad \quad \text{sum} = \sum_{ i = 1 }^n m_i, \quad m^* = m \\
		& \quad \textbf{return} ~ (m_1^*, \dots, m_n^*)
	\end{align}
	$$

	```cpp
	int best_count = std::numeric_limits <int>::max();
	int* best_combination = nullptr;

	void coin_change_exhaustive(int denominations[], int n, int index, int remaining, int count, int* current) {
			if (remaining == 0) {
				if (count < best_count) {
					best_count = count;
					for (int j = 0; j < n; j++)
						best_combination[j] = current[j];
				} else {
					return;
				}
			}

		if (index >= n || count >= best_count)
			return;

		int coin_value = denominations[index];
		int max_coins = remaining / coin_value;

		for (int i = max_coins; i >= 0; i--) {
			current[index] = i;
			int new_remaining = remaining - coin_value * i;
			int new_count = count + i;

			coin_change_exhaustive(denominations, n, index + 1, new_remaining, new_count, current);
		}

		current[index] = 0;
	}

	int* approach_2(int denominations[], int n, int amount) {
		best_combination = new int[n]();
		int* current = new int[n]();

		coin_change_exhaustive(denominations, n, 0, amount, 0, current);

		return best_combination;
	}
	```

	> La complejidad de esta implementación del algoritmo es $O((P + 1)^n)$

Como se enuncia el problema, la única solución para el problema propuesto es aquella en la que se minimiza el número de monedas utilizadas. El primer enfoque `approach_1` puede llegar a "atascarse" si no hay una moneda de denominación $1$ y además no garantiza la solución óptima, en cambio, el segundo `approach_2` enfoque sí lo hace.

La complejidad del primer enfoque es $O(n)$ y la del segundo enfoque depende de su implementación, pero estaremos seguros de que es exponencial.
