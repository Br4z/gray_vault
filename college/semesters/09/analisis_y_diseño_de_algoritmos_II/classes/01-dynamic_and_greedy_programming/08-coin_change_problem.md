---
reviewed_on: "2025-04-07"
---

# Coin change problem

![[personal/systems_engineering/problems/coin_change|Problema de cambio de monedas]]

## Estrategia voraz

Utilizar para el cambio la moneda de la más alta denominación posible y repetir el proceso hasta que no haya más dinero que cambiar.

### Condiciones para optimalidad

La estrategia voraz es óptima si las denominaciones cumplen propiedades específicas:

- Subestructura óptima: una solución óptima para $P$ incluye soluciones óptimas para $M - d_i$.
​
- Propiedad de elección voraz: existe al menos una solución óptima que incluye la moneda de mayor denominación posible.

Es decir, la optimalidad depende de la estructura de las denominaciones. Este algoritmo funciona para secuencias donde cada denominación es múltiplo de la anterior o cumple relaciones aditivas específicas.