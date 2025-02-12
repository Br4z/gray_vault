---
reviewed_on: "2024-11-03"
---

# Fundamental rules of propositional logic

- Identity:

    - $p \land T \equiv p$.

    - $p \lor T \equiv p$.

- Domination:

    - $p \lor T \equiv T$.

    - $p \land F \equiv F$.

- Idempotent:

    - $p \land p \equiv p$.

    - $p \lor p \equiv p$.

- Double negation:

    - $\neg (\neg p) \equiv p$.

- Commutative:

    - $p \lor q \equiv q \lor p$.

    - $p \land q \equiv q \land p$.

- Associative:

    - $(p \land q) \land r \equiv p \land (q \land r)$.

    - $(p \lor q) \lor r \equiv p \lor (q \lor r)$.

- Distributive:

    - $p \lor (q \land r) \equiv (p \lor q) \land (p \lor r)$.

    - $p \land (q \lor r) \equiv (p \land q) \lor (p \land r)$.

- Absorption:

    - $p \lor (p \land q) \equiv p$.

    - $p \land (p \lor q) \equiv p$.

- Morgan's:

    - $\neg(p \land q) \equiv \neg p \lor \neg q$.

    - $\neg(p \lor q) \equiv \neg p \land \neg q$.

- Biconditional definition:

    - $p \leftrightarrow q \equiv (p \implies q) \land (q \implies p)$.

- Biconditional negation:

    - $\neg(p \leftrightarrow q) \equiv (p \land \neg q) \lor (\neg p \land q)$.

- Inverse conditional:

    - $p \lor q \equiv \neg p \implies q$.
