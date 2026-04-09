---
reviewed_on: "2025-01-07"
---

# Multidimensional model

## Modelo dimensional

- Una técnica para **diseñar el modelo lógico** de la bodega de datos.

- Permite un **alto rendimiento** en el momento de acceder a los datos (orientado a consultas).

El modelo multidimensional está orientado al negocio porque está estructurado para responder directamente a las preguntas y necesidades analíticas que son más relevantes para los usuarios de negocio.

### Tabla de hechos

Contienen **medidas** de los procesos del negocio. Los mejores hechos son **aditivos**, **numéricos** y **evaluados continuamente**.

- Aditivo: es una medida que puede sumarse a lo largo de una o más dimensiones.

- Evaluado continuamente: es una medida que se pueden calcular en cualquier punto del tiempo o a lo largo de cualquier otra dimensión relevante.

Todas las mediciones en una tabla de hechos deben estar en el mismo nivel de **granularidad** y contener dos o más llaves foráneas.

### Tabla de dimensiones

Contienen **atributos descriptivos** que proveen contexto para las mediciones almacenadas en los hechos. Estos servirán como **restricciones** en las consultas.

> Los mejores atributos de las dimensiones son **textuales** y **discretos**.

---

- Un **hecho** toma muchos valores y cambia frecuentemente, un **atributo de dimensión**, en cambio, tiene valores más o menos constantes.

- Un **hecho** participa en cálculos, en cambio, un **atributo de dimensión** es una **restricción** para una consulta.

### Operacional vs. dimensional

|    característica     |      operacional       | business intelligence (dimensional) |
|:---------------------:|:----------------------:|:------------------------------------:|
|       enfoque.        |     actualización.     |              consulta.               |
|     redundancia.      |         baja.          |                alta.                 |
|   actualizaciones.    |     gran cantidad.     |            baja cantidad.            |
|      estructura.      | altamente normalizada. |      altamente desnormalizada.       |
| tiempos de respuesta. |  segundos o inferior.  |      segundos, minutos, horas.       |
|   datos agregados.    |     baja cantidad.     |            gran cantidad.            |
|   datos derivados.    |     baja cantidad.     |            gran cantidad.            |

### Surrogate keys (claves suplentes)

Es una clave usada como un sustituto de una clave natural. Las claves artificiales por lo general toman valores numéricos enteros. La razón de esto es que la claves naturales que vienen de los sistemas OLTP pueden utilizar claves distintas para la misma entidad.

### Dimensión degenerada

Es una dimensión a la cual no le corresponde **ninguna** tabla de dimensión.

> Se presenta solo como clave.

### Enfoques para organizar datos en un data warehouse

Existen dos arquitecturas de acuerdo con la normalización de sus dimensiones.

#### Estrella (desnormalizado)

Organiza los datos en una tabla de hechos central rodeada de tablas de dimensiones.

#### Copo de nieve (normalizado)

Es una variación del modelo estrella donde las tablas de dimensiones están normalizadas. Esto significa que las tablas de dimensiones se dividen en sub-tablas que representan jerarquías o agrupaciones.
