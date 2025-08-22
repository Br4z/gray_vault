---
reviewed_on: "2025-08-21"
---

# Initial proposal

Markdown fue concebido por John Gruber con un objetivo de diseño principal y primordial: ser lo más legible posible en su forma de texto plano. La intención era que un documento con formato Markdown pudiera publicarse tal cual, sin que pareciera que ha sido marcado con etiquetas u otras instrucciones de formato. Esta filosofía prioriza la ergonomía humana sobre la gramática formal e inequívoca necesaria para un análisis automático sencillo. A diferencia de lenguajes como XML o HTML, que están explícitamente diseñados para la interpretación por máquinas con reglas estrictas de sintaxis, Markdown fue creado para capturar las convenciones de formato que la gente usa naturalmente en el correo electrónico y el texto plano. Este enfoque centrado en el usuario, aunque responsable de la inmensa popularidad de Markdown, es la causa raíz de la ambigüedad que ha definido el panorama de sus implementaciones. Las primeras descripciones del lenguaje se definieron más por el ejemplo que por una especificación formal, dejando muchos casos límite e interacciones entre elementos de sintaxis abiertos a la interpretación.

## La proliferación de "flavors" y el problema de la interoperabilidad

La ausencia de una especificación formal e inequívoca condujo directamente a un ecosistema fracturado. A medida que diferentes plataformas adoptaron Markdown, invariablemente encontraron ambigüedades en la definición original. Para abordarlas y añadir nuevas características, los implementadores hicieron sus propias interpretaciones y extensiones. Esto resultó en la proliferación de numerosos "flavors" de Markdown, cada uno con diferencias sutiles pero significativas en la sintaxis y el comportamiento de renderizado.

## Problema

La mayoría de los formateadores, incluido Prettier, tienen reglas codificadas con muy pocas opciones de configuración. Esta postura "dogmática" es una elección de diseño deliberada para eliminar el debate, pero carece de flexibilidad.  Otros sistemas, como el ecosistema de plugins de remark, permiten la extensibilidad, pero esto requiere escribir código imperativo (p. ej., JavaScript) para recorrer y manipular el AST. Este enfoque es potente pero tiene una curva de aprendizaje pronunciada y desdibuja la línea entre una regla simple y un programa complejo. Existe un vacío para un sistema que sea a la vez extensible y fácil de usar.

## Un análisis comparativo de las arquitecturas de análisis sintáctico

### Expresiones regulares

### Máquinas de estado

### Flujos de tokens basados en reglas

### Síntesis y recomendación arquitectónica

## Solución

La solución propuesta es diseñar e implementar una arquitectura basada en plugins donde las reglas de formato y linter no se escriben en un lenguaje de programación de propósito general, sino que se definen en un formato simple y declarativo, como YAML o un Lenguaje Específico de Dominio (DSL) personalizado. El núcleo de la tesis sería el diseño de este lenguaje declarativo y el motor que lo interpreta.
