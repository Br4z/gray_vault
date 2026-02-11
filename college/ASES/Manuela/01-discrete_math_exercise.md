---
reviewed_on: "2024-11-03"
---

# Discrete math exercise

Determine usando inferencia si la conclusión de la siguiente fórmula proposicional es válida:

> Restricción: para este ejercicio **no** puede hacer uso de las reglas de adición, ni silogismo disyuntivo y **solo** puede usar una vez la regla de resolución.

$$
[(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \implies (p \implies s)
$$

## Negación de la fórmula

Queremos demostrar la validez por contradicción. Negamos la fórmula original.

$$
\neg \left( [(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \implies (p \implies s) \right)
$$

Aplicamos la negación al condicional.

$$
[(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \pand \neg(p \implies s)
$$

## Simplificación de la negación del condicional

$$
\neg(p \implies s) \equiv p \pand \neg s
$$

La fórmula resultante es

$$ [(p \implies q) \pand (p \implies (q \implies r)) \pand (q \implies (r \implies s))] \pand p \pand \neg s
$$

## Descomponiendo los condicionales

Usamos las equivalencias para los condicionales:

- $p \implies q \equiv \neg p \por q$.

- $p \implies (q \implies r) \equiv \neg p \por (\neg q \por r) \equiv \neg p \por \neg q \por r$.

- $q \implies (r \implies s) \equiv \neg q \por (\neg r \por s) \equiv \neg q \por \neg r \por s$.

La fórmula se transforma en

$$
(\neg p \por q) \pand (\neg p \por \neg q \por r) \pand (\neg q \por \neg r \por s) \pand p \pand \neg s
$$

## Listar las cláusulas y aplicar resolución

Las cláusulas obtenidas son:

1. $\neg p \por q$.

2. $\neg p \por \neg q \por r$.

3. $\neg q \por \neg r \por s$.

4. $p$.

5. $\neg s$.

6. $\neg q \por \neg r$: resolvente $(3,5)$.

7. $\neg p \por \neg q$: resolvente $(2,6)$.

8. $\neg q$: resolvente $(4,7)$.

9. $\neg p$: resolvente $(1,8)$.

10. $\blacksquare$: resolvente $(4,9)$.

Es **insatisfactible**, por lo tanto, la fórmula original es **válida**.

---

1. $p \implies q$.

2. $q \implies (r \implies s)$.

3. $p \implies (r \implies s)$.

4. $\neg p \por \neg r \por s$.

5. $p \implies (q \implies r)$.

6. $\neg p \por \neg q \por r$.

7. $\neg p \por \neg q \por s$: resolvente $(4,6)$.

8. $\neg q \por (\neg p \por s)$.

9. $q \implies (p \por s)$.

10. $p \implies (\neg p \por s)$.

11. $\neg p \por \neg p \por s$.

12. $\neg p \por s$.

13. $p \implies s$.
