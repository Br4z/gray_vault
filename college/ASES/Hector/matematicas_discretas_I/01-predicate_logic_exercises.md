---
reviewed_on: "2025-08-08"
---

# Discrete math exercises

1. Represente en lógica de predicados.

	1. Un estudiante de tu escuela ha vivido en Palmira.

	2. Todos los estudiantes de tu facultad saben programar en Java, Juan sabe programar en Java. Por lo tanto, Juan es un estudiante de tu facultad.

	3. A todos los estudiantes les gusta la comida italiana. A los estudiantes de tu facultad les gusta la comida china. Por lo tanto, a algunos estudiantes les gusta la comida italiana y la china.

2. Formalice en lógica de predicados y determine si la conclusión es válida usando deducción natural.

	1. Algunas personas comen frutas y verduras, todos los que comen frutas se alimentan bien. Pedro come verduras y frutas. Por lo tanto, Pedro se alimenta bien.

	2. Todo ejecutivo que sea poeta es un hombre imaginativo. Todo hombre imaginativo es amante del riesgo. Si todo amante del riesgo no es poeta, entonces, ningún poeta es amante del riesgo. Por consiguiente, si todo hombre imaginativo no es poeta, entonces, ningún ejecutivo es poeta.

	3. Ningún chico rubio quiere cantar. No hay ningún chico alto que no quiere cantar. Todos mis profesores son rubios. Por lo tanto, todos los profesores míos no son altos.

	4. Si Dios fuera capaz de evitar el mal y quisiera hacerlo, lo haría. Si Dios fuera incapaz de evitar el mal, no sería omnipotente; si no quisiera evitar el mal sería malévolo. Dios no evita el mal. Si Dios existe, es omnipotente y no es malévolo. Luego, Dios no existe.

		- Argumentos a variables preposicionales.

			- $C$: Dios es capaz de evitar el mal.

			- $Q$: Dios quiere evitar el mal.

			- $O$: Dios es omnipotente.

			- $M$: Dios es malévolo.

			- $P$: Dios evita el mal.

			- $E$: Dios existe.

		- Razonamiento.

			- $p_1$.

				$$
				\begin{array}{lr}
					(C \land Q) \implies P \\
					\lnot (C \land Q) \lor P    & \text{definición condicional} \\
					\lnot C \lor \lnot Q \lor P & \text{ley de Morgan}
				\end{array}
				$$

			- $p_2$.

				$$
				\begin{array}{lr}
					(\lnot Q \implies \lnot O) \land (\lnot Q \implies M) & \\
					(Q \lor \lnot O) \land (Q \lor M)                     & \text{definición condicional} \\
				\end{array}
				$$

			- $p_3$: $\lnot P$.

			- $p_4$.

				$$
					\begin{array}{lr}
						E \implies (O \land \lnot M) \\
						\lnot E \lor (O \land \lnot M)                &\text{definición condicional} \\
						(\lnot E \lor O) \land (\lnot E \lor \lnot M) & \text{ley distributiva}
					\end{array}
				$$

		$$
		\begin{align}
			& (p_1 \land p_2 \land p_3 \land p_4) \implies \lnot E \\
			& \lnot[(p_1 \land p_2 \land p_3 \land p_4) \implies \lnot E] \\
			& (p_1 \land p_2 \land p_3 \land p_4) \land E \quad S = \{p_1,p_2,p_3,p_4,E\}
		\end{align}
		$$

		> Se dividió el $p_2$ y $p_4$ en dos premisas.

		1. $\lnot C \lor \lnot Q \lor P$.

		2. $Q \lor \lnot O$.

		3. $Q \lor M$.

		4. $\lnot P$.

		5. $\lnot E \lor O$.

		6. $\lnot E \lor \lnot M$

		7. $E$.

		8. $O$: resolvente $(5,7)$.

		9. $M$: resolvente $(6,7)$.

		10. $\lnot O \lor M$: resolvente $(2,3)$.

		11. $O$: resolvente $(9,10)$.

		12. $\blacksquare$: resolvente $(8,11)$.

		Es **insatisfactible**, por lo tanto la fórmula original es **válida**.

3. Indique el valor de verdad de la expresión.

	1. $\exists x \; \exists y \quad (x + y = 6 \land x - y = 5)$.

	2. $\forall x \; \exists y \quad (x^2 < y)$.

	3. $\exists x \; \forall y \quad (x + y = 0)$.

4. Simboliza la siguiente expresión en lógica de predicados.

	Los números con el mismo sucesor son idénticos.

	> Simbolice usando $S(x,y):$ $x$ es el sucesor de $y$.
