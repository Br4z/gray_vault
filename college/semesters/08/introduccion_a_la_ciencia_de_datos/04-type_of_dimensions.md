---
reviewed_on: "2025-01-08"
---

# Type of dimensions

## Dimensiones que cambian lentamente

Las dimensiones pueden cambiar con el tiempo (son no estáticas). Si el valor de un atributo cambia en el sistema operacional, ¿como responder a ese cambio en la bodega de datos?

1. Sobreescribir el valor.

	El dato reflejará el nuevo valor.

	> Es fácil de implementar, pero no mantiene la historia de los cambios en los datos.

2. Adicionar una nueva fila a la dimensión.

	Esta opción es poderosa porque la nueva fila divide automáticamente la historia en la tabla de hechos, sin embargo, no permite asociar el nuevo valor del atributo con la historia de los hechos y viceversa.

	> Representa la historia correctamente.

3. Adicionar una columna o atributo a la dimensión.

	Es apropiado cuando se necesita soportar dos vistas del mundo al mismo tiempo, pero es inapropiado si se desea hacer seguimiento de valores intermedios de los atributos.

## Dimensiones que cambian rápidamente

Son dimensiones que se actualizan mensualmente, para implementarlas se separan los atributos que cambian en una o más dimensiones separadas.

> La tabla de hechos tendrá dos llaves foráneas.

Un ejemplo de una dimensión que cambia rápidamente es la dimensión **cliente**.

```mermaid
erDiagram
	FACT_TABLE {
		int fact_key PK
		int customer_key FK
		int product_key FK
		int quantity
		int sales
		int rapidly_changing_key FK
	}

	CUSTOMER_DIMENSION {
		int customer_key PK
		string name
		string address
	}

	RAPIDLY_CHANGING_DIMENSION {
		int rapidly_changing_key PK
		string email
		string phoneNumber
		date valid_from
		date valid_to
	}

	FACT_TABLE ||--o{ CUSTOMER_DIMENSION : has
	FACT_TABLE ||--o{ RAPIDLY_CHANGING_DIMENSION : tracks
```

## Dimensiones Junk

Se utilizan para representar banderas o indicadores. Teniendo esos elementos aquí, evitamos tenerlos en la tabla de hechos. En la tabla se van a crear tantos atributos como banderas haya y va a contener un número de registros $n$, donde $n$, es el número total de combinaciones posibles de valores para las $k$ banderas que haya.

> Estas dimensiones no tiene una clave natural.

## Relación muchos a muchos

Para implementar este tipo de relaciones se hace uso se una **tabla puente**.

### Tabla puente

Se utiliza para resolver relaciones complejas de **muchos a muchos**, agrupando valores de una dimensión y conectándolos a la tabla de hechos a través de llaves foráneas. La dimensión no tiene una clave natural.
