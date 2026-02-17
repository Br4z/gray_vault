---
reviewed_on: "2025-07-31"
---

# Classification of computational problems

La complejidad computacional es el estudio de los algoritmos y los recursos que estos requieren para resolver un problema.

## ¿Qué es un algoritmo?

Es un procedimiento computacional bien definido que transforma un conjunto de valores de **entrada** en un conjunto de valores de **salida**.

## Medición de la complejidad

La complejidad de un algoritmo se mide en función del tamaño de entrada ($n$). Las dos clases principales de complejidad son:

- Temporal.

- Espacial: memoria.

> Un buen algoritmo es más valioso que una máquina potente.

La complejidad de un problema se define por la complejidad del **mejor** algoritmo que puede resolverlo. Generalmente, se expresa usando **notación asintótica**.

> $1 < \log_2 n < \sqrt{ n } < n < n \log_2 n < n^2 < n^3 < \dots < 2^n < 3^n < \dots < n! < n^n$.

## Tipos de problemas computacionales

### Decidibles

Son aquellos para los cuales existe un algoritmo que siempre se detiene y da una respuesta correcta (si o no).

> si o no, se refiere a un tipo especifico de problema llamado **problema de decision**.

### Clasificación (decidibles)

#### Tratables

Son problemas que pueden ser solucionados por algoritmos en tiempo **polinomial**.

> En el peor de los casos su complejidad temporal es $O(n^k)$ para alguna constante $k$.

#### Intratable

Son problemas para los que no se conocen algoritmos eficientes (polinomiales).

> Los algoritmos existentes los resuelven en tiempo **no polinomial**, como $\Omega(a^n)$.

### Indecidibles

Son aquellos que no pueden resolverse mediante un algoritmo; no existe una máquina  de Turing (MT) que los pueda resolver. Un ejemplo famoso es el **problema de la parada (halting problem)**.

## Problemas de decisión

Son problemas donde se simplifica un problema mayor para dar una respuesta binaria. En lugar de pedir un valor o solución completa, se pregunta si una solución con ciertas características existe.

## Clases de complejidad

Para clasificar formalmente los problemas, especialmente los intratables, se utilizan las siguientes clases de complejidad. El estudio se centra en los **problemas de decisión**.

### Clase $P$ (polinomial)

Contiene todos los problemas de decisión que pueden ser **resueltos** en tiempo polinomial por una máquina de Turing **determinista** (el modelo computacional estándar). Estos problemas son considerados **tratables**.

## Clase $\mathrm{NP}$ (polinomial no determinista)

Contiene los problemas que pueden ser **resueltos** en tiempo polinomial por una máquina de Turing **no determinista**.

Un problema está en $\mathrm{NP}$ si, dada una posible solución (un **certificado**), podemos **verificar** si es correcta en tiempo **polinomial**.

> Un certificado es una asignación de valores de verdad (verdadero/falso) a las variables.

Es claro que $\mathrm{P} \subseteq \mathrm{NP}$, ya que si un problema se puede resolver rápidamente, también se puede verificar rápidamente.

## ¿$\mathrm{P} = \mathrm{NP}$?

La pregunta de si la clase $P$ es igual a la clase $\mathrm{NP}$ es uno de los problemas abiertos más importantes de las ciencias de la computación.

Si $\mathrm{P} = \mathrm{NP}$, significaría que muchos problemas considerados intratables podrían resolverse eficientemente.

> La creencia general es que $\mathrm{P} \neq \mathrm{NP}$.

### Clase $\mathrm{P} = \mathrm{NP}\text{-hard}$

Es un problema que es al menos tan difícil como cualquier problema en la clase $\mathrm{NP}$. Formalmente, esto significa que todo problema $A$ en $\mathrm{NP}$ puede ser **reducido** en tiempo polinomial a un problema $\mathrm{NP}\text{-hard}$ $B$ ($A \preceq_p B$).

La característica principal que diferencia un problema $\mathrm{NP}\text{-hard}$ de uno $\mathrm{NP}\text{-complete}$ es que un problema $\mathrm{NP}\text{-hard}$ **no necesita pertenecer a la clase $\mathrm{NP}$**. Es decir, puede que no sea posible verificar una solución para él en tiempo polinomial

### Clase $\mathrm{NP}\text{-complete}$ ($NPC$)

Estos problemas son, informalmente, los problemas **más difíciles** dentro de la clase $\mathrm{NP}$.

Un problema $B$ es $\mathrm{NP}$-completo si cumple dos condiciones:

1. $B \in NP$: el problema puede ser verificado en tiempo polinomial.

2. $B$ es $\mathrm{NP}\text{-hard}$: todo problema $A$ en la clase $\mathrm{NP}$ puede ser reducido a $B$ en tiempo polinomial ($A \preceq_p B$), esto significa que $B$ es "al menos tan difícil" como cualquier otro problema en NP.

## Reducción polinomial ($A \preceq_p B$)

La reducción es una herramienta fundamental para probar la $\mathrm{NP}\text{-complete}$ness. Una reducción transforma una instancia $\alpha$ de un problema $A$ en una instancia $\beta$ de un problema $B$ en tiempo polinomial.

La transformación debe ser tal que la respuesta para $\alpha$ sea "sí" si y solo si la respuesta para $\beta$ es "sí".

Si podemos reducir un problema $C$ que ya sabemos que es $\mathrm{NP}\text{-complete}$ a un nuevo problema $B$ (y $B$ está en $\mathrm{NP}$), entonces hemos demostrado que **$B$ también es $\mathrm{NP}\text{-complete}$**.

## El problema de satisfactibilidad (SAT)

También conocido como el problema de satisfactibilidad booleana, fue el **primer problema que se demostró ser $\mathrm{NP}\text{-complete}$**. Esta demostración fue realizada por Stephen Cook en 1971.

![[personal/systems_engineering/problems/SAT|SAT]]