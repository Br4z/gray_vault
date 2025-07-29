---
reviewed_on: "2025-07-29"
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

## Clase $NP$ (polinomial no determinista)

Contiene los problemas que pueden ser **resueltos** en tiempo polinomial por una máquina de Turing **no determinista**.

Un problema está en $NP$ si, dada una posible solución (un **certificado**), podemos **verificar** si es correcta en tiempo **polinomial**.

Es claro que $P \subseteq NP$, ya que si un problema se puede resolver rápidamente, también se puede verificar rápidamente.

## ¿$P = NP$?

La pregunta de si la clase $P$ es igual a la clase $NP$ es uno de los problemas abiertos más importantes de las ciencias de la computación.

Si $P = NP$, significaría que muchos problemas considerados intratables podrían resolverse eficientemente.

> La creencia general es que $P \neq NP$.

### Clase $NP$-hard

Es un problema que es al menos tan difícil como cualquier problema en la clase $NP$. Formalmente, esto significa que todo problema $A$ en $NP$ puede ser **reducido** en tiempo polinomial a un problema $NP$-hard $B$ ($A \preceq_p B$).

La característica principal que diferencia un problema $NP$-hard de uno $NP$-complete es que un problema $NP$-hard **no necesita pertenecer a la clase $NP$**. Es decir, puede que no sea posible verificar una solución para él en tiempo polinomial

### Clase $NP$-complete ($NPC$)

Estos problemas son, informalmente, los problemas **más difíciles** dentro de la clase $NP$.

Un problema $B$ es $NP$-completo si cumple dos condiciones:

1. $B \in NP$: el problema puede ser verificado en tiempo polinomial.

2. $B$ es $NP$-hard: todo problema $A$ en la clase $NP$ puede ser reducido a $B$ en tiempo polinomial ($A \preceq_p B$), esto significa que $B$ es "al menos tan difícil" como cualquier otro problema en NP.

## Reducción polinomial ($A \preceq_p B$)

La reducción es una herramienta fundamental para probar la $NP$-completeness. Una reducción transforma una instancia $\alpha$ de un problema $A$ en una instancia $\beta$ de un problema $B$ en tiempo polinomial.

La transformación debe ser tal que la respuesta para $\alpha$ sea "sí" si y solo si la respuesta para $\beta$ es "sí".

Si podemos reducir un problema $C$ que ya sabemos que es $NP$-complete a un nuevo problema $B$ (y $B$ está en $NP$), entonces hemos demostrado que **$B$ también es $NP$-complete**.

## El problema de satisfactibilidad (SAT)

También conocido como el problema de satisfactibilidad booleana, fue el **primer problema que se demostró ser $NP$-complete**. Esta demostración fue realizada por Stephen Cook en $1971$.

### Definición

El problema consiste en un conjunto $V$ de $n$ variables booleanas $v_1,v_2,\dots,v_n$ y un conjunto $C$ de $m$ cláusulas $c_1,c_2,\dots,c_m$ en **forma normal conjuntiva (FNC)**. Se busca si existen valores de las variables que hagan que la expresión sea verdadera.

Gracias a la demostración de Cook, podemos usarlo como "semilla" para probar otros problemas que también son $NP$-complete, usando la técnica de reducción.
