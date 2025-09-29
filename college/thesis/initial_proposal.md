---
reviewed_on: "2025-08-28"
---

# Initial proposal

Markdown fue concebido por John Gruber con un objetivo de diseño principal y primordial: ser lo más legible posible en su forma de texto plano. La intención era que un documento con formato Markdown pudiera publicarse tal cual, sin que pareciera que ha sido marcado con etiquetas u otras instrucciones de formato. Esta filosofía prioriza la ergonomía humana sobre la gramática formal e inequívoca necesaria para un análisis automático sencillo. A diferencia de lenguajes como XML o HTML, que están explícitamente diseñados para la interpretación por máquinas con reglas estrictas de sintaxis, Markdown fue creado para capturar las convenciones de formato que la gente usa naturalmente en el correo electrónico y el texto plano. Este enfoque centrado en el usuario, aunque responsable de la inmensa popularidad de Markdown, es la causa raíz de la ambigüedad que ha definido el panorama de sus implementaciones. Las primeras descripciones del lenguaje se definieron más por el ejemplo que por una especificación formal, dejando muchos casos límite e interacciones entre elementos de sintaxis abiertos a la interpretación.

## La proliferación de "flavors" y el problema de la interoperabilidad

La ausencia de una especificación formal e inequívoca condujo directamente a un ecosistema fracturado. A medida que diferentes plataformas adoptaron Markdown, invariablemente encontraron ambigüedades en la definición original. Para abordarlas y añadir nuevas características, los implementadores hicieron sus propias interpretaciones y extensiones. Esto resultó en la proliferación de numerosos "flavors" de Markdown, cada uno con diferencias sutiles pero significativas en la sintaxis y el comportamiento de renderizado.

## Problema

En la ingeniería de software, la documentación es un pilar fundamental. Sin embargo, su calidad y consistencia a menudo se ven comprometidas, especialmente en proyectos donde se le asigna una prioridad secundaria durante las fases iniciales de desarrollo. El formato Markdown, aunque omnipresente por su simplicidad, agrava este problema debido a su falta de estandarización, lo que resulta en inconsistencias en el renderizado del contenido entre distintas plataformas y herramientas.

Para mitigar esto, los equipos de desarrollo recurren a soluciones existentes, las cuales presentan limitaciones significativas:

1. Formateadores dogmáticos: Herramientas como Prettier imponen un conjunto de reglas de estilo rígidamente codificadas con opciones de configuración mínimas. Si bien esta filosofía de diseño es deliberada —busca eliminar el debate sobre el estilo—, su inflexibilidad impide que los equipos adapten las reglas a las necesidades específicas de su proyecto o a sus guías de estilo internas.

2. Sistemas extensibles complejos: ecosistemas como los plugins de remark ofrecen una potente capacidad de extensión. No obstante, esta flexibilidad tiene un costo elevado: requiere que los desarrolladores escriban código imperativo (generalmente en JavaScript) para recorrer y manipular el Árbol de Sintaxis Abstracta (AST). Este enfoque no solo posee una curva de aprendizaje pronunciada, sino que también desdibuja la frontera entre una simple regla de formato y un programa complejo, introduciendo una carga de mantenimiento adicional.

Actualmente, **existe un vacío para una herramienta que ofrezca un equilibrio entre extensibilidad y facilidad de uso**. Se necesita un sistema que permita a los desarrolladores definir reglas de formato y estilo de manera declarativa, sin requerir conocimientos avanzados de programación ni verse limitados por un conjunto de reglas predefinidas e inalterables.

## Solución

La solución propuesta es el diseño y desarrollo de una aplicación de escritorio con una Interfaz Gráfica de Usuario (GUI) que permita a los usuarios configurar un linter de Markdown de manera completamente visual e intuitiva. El enfoque central abandona la complejidad de los lenguajes de scripting o los archivos de configuración manual, presentando en su lugar un sistema de reglas predefinidas y contextuales.

El funcionamiento se basará en una interacción simple: el usuario seleccionará un elemento estructural de Markdown de un menú (p. ej., "encabezados", "listas", "bloques de código"). A continuación, la interfaz presentará un catálogo de reglas comunes y aplicables para ese elemento específico, que el usuario podrá activar y configurar con simples controles gráficos (como casillas de verificación o menús desplegables). De esta forma, se abstrae por completo la lógica de programación, permitiendo que cualquier usuario pueda ensamblar un perfil de validación robusto y a medida, simplemente tomando decisiones sobre el estilo de formato deseado.
