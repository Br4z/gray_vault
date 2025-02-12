---
reviewed_on: "2024-11-03"
---

# Discrete math exercise

Determine usando inferencia si la conclusión de la siguiente fórmula proposicional es válida:

> Restricción: para este ejercicio **no** puede hacer uso de las reglas de adición, ni silogismo disyuntivo y **solo** puede usar una vez la regla de resolución.

$$
[(p \implies q) \land (p \implies (q \implies r)) \land (q \implies (r \implies s))] \implies (p \implies s)
$$

## Negación de la fórmula

Queremos demostrar la validez por contradicción. Negamos la fórmula original.

$$
\neg \left( [(p \implies q) \land (p \implies (q \implies r)) \land (q \implies (r \implies s))] \implies (p \implies s) \right)
$$

Aplicamos la negación al condicional.

$$
[(p \implies q) \land (p \implies (q \implies r)) \land (q \implies (r \implies s))] \land \neg(p \implies s)
$$

## Simplificación de la negación del condicional

$$
\neg(p \implies s) \equiv p \land \neg s
$$

La fórmula resultante es

$$ [(p \implies q) \land (p \implies (q \implies r)) \land (q \implies (r \implies s))] \land p \land \neg s
$$

## Descomponiendo los condicionales

Usamos las equivalencias para los condicionales:

- $p \implies q \equiv \neg p \lor q$.

- $p \implies (q \implies r) \equiv \neg p \lor (\neg q \lor r) \equiv \neg p \lor \neg q \lor r$.

- $q \implies (r \implies s) \equiv \neg q \lor (\neg r \lor s) \equiv \neg q \lor \neg r \lor s$.

La fórmula se transforma en

$$
(\neg p \lor q) \land (\neg p \lor \neg q \lor r) \land (\neg q \lor \neg r \lor s) \land p \land \neg s
$$

## Listar las cláusulas y aplicar resolución

Las cláusulas obtenidas son:

1. $\neg p \lor q$.

2. $\neg p \lor \neg q \lor r$.

3. $\neg q \lor \neg r \lor s$.

4. $p$.

5. $\neg s$.

6. $\neg q \lor \neg r$: resolvente $(3,5)$.

7. $\neg p \lor \neg q$: resolvente $(2,6)$.

8. $\neg q$: resolvente $(4,7)$.

9. $\neg p$: resolvente $(1,8)$.

10. $\blacksquare$: resolvente $(4,9)$.

Es **insatisfactible**, por lo tanto, la fórmula original es **válida**.

---

1. $p \implies q$.

2. $q \implies (r \implies s)$.

3. $p \implies (r \implies s)$.

4. $\neg p \lor \neg r \lor s$.

5. $p \implies (q \implies r)$.

6. $\neg p \lor \neg q \lor r$.

7. $\neg p \lor \neg q \lor s$: resolvente $(4,6)$.

8. $\neg q \lor (\neg p \lor s)$.

9. $q \implies (p \lor s)$.

10. $p \implies (\neg p \lor s)$.

11. $\neg p \lor \neg p \lor s$.

12. $\neg p \lor s$.

13. $p \implies s$.
