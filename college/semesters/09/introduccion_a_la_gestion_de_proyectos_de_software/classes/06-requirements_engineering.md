---
reviewed_on: "2025-04-07"
---

# Requirements engineering

## Validación de requerimientos

### Principios (validación de requerimientos)

1. Involucrar stakeholders correctos.

2. Separar identificación y corrección de errores.

3. Validar desde múltiples perspectivas.

4. Adaptar tipos de documentación.

5. Construir artefactos de desarrollo.

6. Repetir la validación.

### Técnicas (validación)

#### Inspecciones

Proceso formal para detectar defectos en artefactos. Consta de las siguientes fases:

1. Planificación: informar al equipo de inspección.

2. Visión general: presentación de los artefactos que se van a inspeccionar.

3. Detección de defectos.

4. Recopilación y consolidación de los defectos.

5. Corrección de defectos.

6. Seguimiento.

7. Reflexión.

#### Desk checks (prueba de escritorio)

Se distribuye el artefacto a un conjunto de interesados, que lo comprueban individualmente.

La recogida de defectos se lleva a cabo informando de los defectos identificados al autor o en una sesión de grupo.

#### Walkthroughs

No tienen un procedimiento formalmente definido y no requieren una diferenciación de los roles y los procedimientos.

El autor presenta algunos artefactos que él mismo ha seleccionado a un grupo de interesados de su elección. La motivación para realizar un walkthrough suele ser una mezcla de los siguientes aspectos:

- Comprobar con antelación si una idea o un concepto es factible o no.

- Obtener la opinión y las sugerencias de otras personas.

- Comprobar la aprobación de los demás y llegar a un acuerdo.

#### Prototipos

Las inspecciones, desk checks y walkthroughs apoyan la validación de los requerimientos documentados en lenguaje natural así como con modelos conceptuales. Sin embargo, tanto los requerimientos en lenguaje natural como los basados en modelos son relativamente abstractos en comparación con un sistema real en uso.

Los defectos de los requisitos que son difíciles de detectar en los artefactos de los requerimientos pueden ser bastante fáciles de detectar cuando se experimenta y se utiliza un prototipo.

La validación de los requerimientos mediante prototipos es incluso el método más eficaz para detectar los defectos de los requerimientos.

## Negociación y gestión de requerimientos

### Requisitos de calidad

- Contenido: completitud, trazabilidad, exactitud, consistencia.

- documentación: estructura clara, no ambigua.

- Acuerdo: resolución de conflictos entre stakeholders.

### Sub-actividades

#### Analizar los conflictos

Tipos de conflictos:

- datos: interpretaciones de los requisitos.

- intereses: objetivos; comparar los objetivos propuestos para detectar conflictos.

- valor: diferencias en criterios de evaluación de requisitos.

- relaciones: conflictos entre stakeholders.

- estructura: falta de claridad sobre los usuarios finales del sistema o sus roles.

#### Documentar resolución de conflictos

Documentar

- soluciones alcanzadas.

- principales argumentos.

- revisiones y aprobaciones.

## Gestión de requisitos

Es la forma en que los equipos de ingeniería planifican, realizan seguimiento, comunican cambios y validan ideas. Estas actividades deben tener el fin de satisfacer la necesidad del cliente.

## Priorización

### ¿Qué Debemos saber para priorizar?

Durante cada actividad de IR la priorización se puede utilizar para determinar el orden de

- Elicitación: considerar las fuentes de requisitos más críticas o estratégicas para el proyecto.

- Documentación.

- Negociación: resolver los conflictos para garantizar el éxito del proyecto.

- Validación: resolver defectos en orden de criticidad.

- Gestión: analizar y procesar solicitudes de cambio según su impacto, urgencia o alineación con objetivos.

### Criterios

- Importancia: impacto en la aceptación del sistema, su influencia en el diseño técnico, el valor estratégico para la organización (como ventajas competitivas) y la urgencia (ej: requisitos legales).

- Costo: recursos necesarios para implementar el requisito, incluyendo complejidad técnica, grado de reutilización de componentes existentes, documentación detallada y esfuerzo en pruebas de calidad.

- Daño: consecuencias de omitir el requisito, como pérdida de ventas, daño reputacional o penalizaciones legales.

- Riesgo: probabilidad de que surjan problemas si el requisito no se aborda adecuadamente.

- Duración: tiempo requerido para su desarrollo y la posibilidad de paralelizar tareas.

- Volatilidad: probabilidad de que el requisito cambie en el futuro, lo que afecta su estabilidad en el plan del proyecto.

### Técnicas (priorización)

#### Ranking

Se asigna un orden numérico único a cada requisito; el requisito más importante se posiciona en 1, el segundo en 2, y así sucesivamente. Generalmente, es aplicado por un **único** stakeholder o un **pequeño grupo**.

Requiere un esfuerzo **bajo**, es ideal tanto para escenarios con **muchos** o **pocos** requisitos con complejidad de priorización **baja**.

#### Top ten

Se selecciona un subconjunto de un grupo mayor de requisitos. Funciona de forma similar al Ranking, pero se concentra en identificar y acordar cuáles son los "top" requisitos sin asignarles un orden interno tan estricto.

Requiere un esfuerzo **muy bajo**, es ideal tanto para escenarios con **muchos** o **pocos** requisitos con complejidad de priorización **baja**.

#### Un criterio de clasificación

Se agrupan los requisitos en categorías basadas en su importancia y necesidad. Por ejemplo:

- Esenciales: requisitos que deben cumplirse para que el sistema funcione.

- Condicionales: mejoran el sistema, pero su ausencia no lo hace inaceptable.

- Opcionales: aquellos que pueden añadirse si los recursos y el tiempo lo permiten.

Requiere un esfuerzo **bajo** y es ideal cuando el número de requisitos y la complejidad de priorización es **baja**.

#### Clasificación KANO

La metodología Kano clasifica los requisitos en tres categorías principales:

- Básicos (must-be): esenciales para la satisfacción; su ausencia causa insatisfacción.

- De desempeño: la satisfacción aumenta de manera proporcional a su nivel de cumplimiento.

- Deleite: elementos que sorprenden y deleitan a los usuarios, aunque no se esperan.

Requiere un esfuerzo **bajo** y es ideal cuando el número de requisitos es **bajo** y la complejidad de priorización es **alta**.

#### Matriz de priorización de Wiegers

Se utiliza una matriz que asigna pesos a diferentes factores como beneficios, penalidades, costo y riesgo para cada requisito. Ofrece una manera cuantitativa de comparar requisitos, permitiendo calcular una "puntuación" final para cada uno.

Requiere un esfuerzo **medio** y es ideal cuando el número de requisitos es **bajo** y la complejidad de priorización es **alta**.

#### Costo beneficio

Se evalúa cada requisito en términos de su valor (beneficio) en relación con el costo para implementarlo. Permite determinar cuáles requisitos aportan mayor valor por el menor costo, ayudando a optimizar la inversión de recursos.

Requiere un esfuerzo **alto** y es ideal cuando el número de requisitos es **bajo** y la complejidad de priorización es **alta**.
