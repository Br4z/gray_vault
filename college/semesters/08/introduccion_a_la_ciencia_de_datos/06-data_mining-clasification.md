---
reviewed_on: "2025-02-03"
---

# Data mining - classification

## Requisitos (clasificación)

- Suministrar el atributo de **decisión** o clase (**label**).

- Suministrar los atributos de **condición**, estos atributos son usados para describir por medio del proceso de inducción las **clases**.

## Matriz de confusión

![[personal/computer_science/machine_learning/confusion_matrix|definition]]

[[personal/computer_science/machine_learning/metrics|useful metrics of a confusion matrix]]

## Técnicas (clasificación)

### Árboles de decisión

![[personal/computer_science/machine_learning/algorithms/supervised_learning/decision_trees|árboles de decisión]]

### Clasificación Naïve Bayes

Este modelo hace la suposición de que los atributos son condicionalmente independientes. La probabilidad de que un ejemplo pertenezca a una clase $C_j$ dado un conjunto de valores de características $V = \{v_1,v_2,\dots,v_n\}$ se calcula como:

$$
P(C_j|V) = P(C_j) \prod_{ i = 1 }^n P(v_i|C_j)
$$

- $P(C_j|V)$: la probabilidad de que el ejemplo pertenezca a la clase $C_j$ dado las características $V$ (esto se llama probabilidad **a posteriori**).

- $P(C_j)$: la probabilidad previa de la clase $C_j$ (sin observar ningún dato).

- $P(v_i|C_j)$: la probabilidad de observar el valor de la característica $v_i$ dado que la clase es $C_j$. Este valor se estima generalmente a partir de los datos de entrenamiento.

- $\prod_{ i = 1 }^n$: Esto representa el producto de las probabilidades individuales de cada característica $v_i$, suponiendo independencia condicional entre ellas.

#### Teorema de Bayes

![[personal/statistics/Bayes_theorem|teorema de Bayes]]
