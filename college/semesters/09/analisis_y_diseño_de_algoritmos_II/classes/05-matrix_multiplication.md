---
reviewed_on: "2025-03-02"
---

# Matrix multiplication

![[personal/computer_science/problems/matrix_chain_multiplication|matrix_chain_multiplication]]

Sea $A$ de dimensiones $p \times q$ y $B$ de dimensiones $q \times r$, la cantidad total de multiplicaciones es $p q r$

## Paso $1$

Sea $A_{ i:j }$ la matriz que resulta de evaluar $A_i \dots A_j$. Una solución óptima para calcular $A_{ 1:n }$ se divide en una solución óptima para calcular $A_{ 1:k }$ y una solución optimará para calcular $A_{ k + 1:n }$.

## Paso $2$