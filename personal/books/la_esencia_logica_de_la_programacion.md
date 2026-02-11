---
reviewed_on: "2024-12-27"
---

# La esencia lógica de la programación

## Capítulo 1 (la lógica)

Finalmente, y luego de tantas definiciones, busqué a mi padre. Un hombre del campo para quien los avances tecnológicos le corrían por la espalda porque no eran su afán. Me miraba sin parpadear cada que yo iniciaba algunas de mis disertaciones sobre la tecnología y su relación con el mundo moderno. Para él el mundo moderno no era sino un cúmulo de problemas en vez de soluciones. Yo pensaba lo contrario. Sin embargo, me arriesgué a preguntarle Papá, para usted qué es la lógica...  y él mirándome con la extrañeza de la pregunta me dijo Pues es la forma más **obvia** y más **fácil** de hacer algo. Y vi que todas las definiciones que hasta el momento había recibido, unas provenientes de la vida cotidiana y otras extractadas de libros especializados en el tema, se resumían en esta última. Eso es la **lógica**.

### Conceptos básicos de informática

Un **atributo** es una característica identificativa de un ente informático.

Por esta razón es que se ha hecho necesario a través de la historia de la humanidad que los atributos sean tasados a través de una escala, porque esto los hace manejables y no relativos (por lo menos no del todo, sin decir con esto que se vuelvan absolutos). Es por ello que surge un concepto que a la postre se ha de convertir en la gran vedette de la informática: el **dato**. Nuestra frase inicial Juana es alta, podríamos cambiarla a decir Juana mide $1.73 \text{m}$. En este caso, a pesar de que los razonamientos y las conclusiones son las mismas, podemos dejarlas al libre concepto del observador. ¿Qué es un dato? Sencillamente, es un atributo "codificado" en términos entendibles a un sistema de información, en condiciones manejables y comparables y de manera casi absoluta (no totalmente, pero sí en gran medida).

Un **campo** es el nombre que se le coloca a un dato para identificar el atributo que está describiendo.

Un **registro** es un conjunto de campos en donde en cada campo está consignado un dato y en donde todos los datos pertenecen o describen a un mismo ente informático.

Un **archivo** es un conjunto de registros que tienen la misma estructura y que puede ser manejado como una sola unidad.

Una **base de datos** es un conjunto de archivos que están interrelacionados.

La **informática**  es la ciencia que estudia, aplica y optimiza el tratamiento eficiente de la información. Con tratamiento eficiente de la información a la ciencia que se ocupa de que la información, cualquiera que sea su procedencia o su destinación, cumpla con dos objetivos:

- Veracidad: "toda información debe ser verdad (es decir, veraz)".

- Oportunidad: "toda información debe llegar en el momento indicado (o sea oportunamente)".

¿Por qué cada que se habla de informática se relaciona inmediatamente el concepto con computadores? Pues sencillamente porque en la actualidad los computadores son los dispositivos que mejor pueden cumplir con el objetivo de la **oportunidad** porque trabajan a velocidades impresionantemente altas (millonésimas de segundo). ¿Y quién es el encargado de cumplir con la veracidad? Pues el ser humano que es quien planea, organiza, programa y ejecuta todo lo que el computador va a entregar como información.

## Capítulo 2 (metodología para solucionar un problema)

Tener claro el objetivo nos va a permitir obtener dos beneficios que a la postre serán más grandes de lo que podemos pensar:

- Saber hacia donde vamos.

- Saber hasta donde debemos llegar.

> El primero se refiere a la meta, mientras que el segundo a los pasos que debemos seguir para alcanzarla.

...Cuando el objetivo está suficientemente claro, podemos vislumbrar un camino lógico para llegar hasta él. Ese camino lógico va a tener un nombre dado la orientación de este libro y ese nombre es **algoritmo**.

Un **algoritmo** es un conjunto de pasos secuenciales y ordenados que permiten lograr un objetivo.

...Cuando el objetivo está realmente claro. Siempre que usted, en el desarrollo de la solución de un problema, vea que en algún momento no sabe por donde coger, no sabe qué hacer o se siente perdido, no busque más, **simplemente quiere decir que realmente usted no tenía tan claro el objetivo como había pensado**.

Una **prueba de escritorio** es una simulación de la puesta en marcha de un algoritmo.

...Un algoritmo debe tener el nivel de detalle suficiente como para que no exista ninguna duda en su puesta en marcha, es decir, como para que cada línea pueda ser realizada sin el más mínimo asomo de inquietud...

### Algoritmos informales

Son todos aquellos algoritmos que no son realizables a través de un computador o al menos no fácilmente.

### Algoritmos computacionales

Son todos aquellos algoritmos que deben ser preferiblemente implementados en un computador para aprovechar su velocidad de procesamiento.

#### Transcripción

Este es el proceso a través del cual "convertimos" un algoritmo, escrito en términos muy coloquiales e informales, en un listado de instrucciones entendibles a un computador y que se ajustan a las reglas sintácticas de determinado lenguaje de programación.

Un **programa** es un algoritmo escrito con las instrucciones, las restricciones y las reglas de un lenguaje de programación.

## Capítulo 3 (variables, constantes y operadores)

### Operadores

La jerarquía de los operadores se puede "manipular" haciendo uso de paréntesis. En tal caso, la evaluación de una expresión le dará prioridad a los paréntesis, esto garantiza que cuando el computador vaya a realizar una operación entre dos operandos, siempre va a tener definidos los operandos.

## Capítulo 4 (estructuras básicas y técnicas para representar algoritmos)

Una estructura se define como un esquema que nos permite representar de manera simplificada alguna idea y que bajo condiciones normales es constante.

A nivel informal la variabilidad de ópticas en cuanto a la concepción del mundo es lo que le ha permitido a este avanzar y es de allí que se ha podido extractar tecnologías, modas, teorías y muchos avances del mundo moderno, pero a nivel técnico si resulta ser muy importante que la lógica para desarrollar un algoritmo computacional sea tan clara que y tan estándar que un programa desarrollado por una persona sea fácilmente entendible por cualquier otra, dado que haciendo uso de la lógica propia de cada uno podemos llegar a encontrarnos con programas tan confusos que solo llegarían a ser entendibles por su creador.

### Consideraciones Algorítmicas sobre el pensamiento humano

...cualquier acción o conjunto de acciones que usted haga siempre estarán enmarcadas en estas tres estructuras.

1. Secuencia de acciones.

2. Decisión de acción.

3. Ciclos de acciones.

### Técnicas para representar algoritmos

#### Diagramas de flujo

|                                  símbolo                                  |                                        significado                                        |
|:-------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------:|
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_01-flow_diagram_figure.svg) | proceso que no es más que una acción o una orden a ejecutarse de manera clara y concreta. |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_02-flow_diagram_figure.svg) |                                         decisión.                                         |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_03-flow_diagram_figure.svg) |                               proceso de entrada o salida.                                |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_04-flow_diagram_figure.svg) |        escritura de un resultado o lo que técnicamente se conoce como una salida.         |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_05-flow_diagram_figure.svg) |                             inicio o el fin de un algoritmo.                              |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_06-flow_diagram_figure.svg) |                             parámetros de inicio de un ciclo.                             |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_07-flow_diagram_figure.svg) |                  entrada de datos utilizando el teclado del computador.                   |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_08-flow_diagram_figure.svg) |                           continuación de un diagrama de flujo.                           |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_09-flow_diagram_figure.svg) |                                     lectura de datos.                                     |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_10-flow_diagram_figure.svg) |                                     salida de datos.                                      |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_11-flow_diagram_figure.svg) |                salida de datos pero escrita en la pantalla del computador.                |
| ![flow diagram figure](./assets/la_esencia_logica_de_la_programacion/01_12-flow_diagram_figure.svg) |                            conexión entre los demás símbolos.                             |

#### Diagramas rectangulares estructurados

Nos permite tener unas herramientas gráficas para representar la solución a un problema con la ventaja de que no brinda la posibilidad de que seamos desordenados en nuestra concepción (respecto a las flechas de flujo). Gráficamente, se basa en representar todo el algoritmo dentro del marco de un rectángulo y a diferencia de la técnica anterior, un DRE se mueve básicamente con la utilización de tres símbolos que corresponden a cada una de las estructuras básicas de la lógica de programación. Estas representaciones son las siguientes:

![structured rectangular diagram figure](./assets/la_esencia_logica_de_la_programacion/01_13-structured_rectangular_diagram_figure.svg)

![structured rectangular diagram figure](./assets/la_esencia_logica_de_la_programacion/01_14-structured_rectangular_diagram_figure.svg)

![structured rectangular diagram figure](./assets/la_esencia_logica_de_la_programacion/01_15-structured_rectangular_diagram_figure.svg)

#### Cuadro comparativo

| técnica                               |                                                                                                                         ventajas                                                                                                                         |                                                                                                                                                                            desventajas                                                                                                                                                                             |
|:--------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| diagramas de flujo                    |                 1. Permite visualizar gráficamente el camino que sigue la solución a un problema. <br> 2. Por ser tan simplificado es muy entendible. <br> 3. No se necesitan muchos conocimientos técnicos para utilizar esta técnica.                  | 1. Dado que los flujos (representados con flechas) pueden ir de cualquier lugar a cualquier lugar, el diagrama puede llegar a ser casi inentendible. <br> 2. Deben conocerse bien los símbolos que se van a utilizar. <br> 3. No todos los símbolos están estandarizados. <br> 4. Los ciclos deben ser reinterpretados para poder ser diagramados en esta técnica. |
| diagramas rectangulares estructurados | 1. Permite tener un marco referencial concreto y definido para la representación de los algoritmos. <br> 2. Solo tiene tres esquemas que le permiten representar las tres estructuras básicas. <br> 3. Exige orden en la representación de un algoritmo. |                                                                                                                                                               1. No es una técnica muy popularizada.                                                                                                                                                               |

## Capítulo 5 (la tecnología)

### Lenguajes de alto nivel

#### Lengujes interpretados

Son aquellos lenguajes de programación en donde existe un programa interpretador que no es más que un programa que "coge" nuestro programa y lo convierte línea a línea a Lenguaje de Bajo Nivel y así mismo lo va ejecutando (o sea línea a línea).

---

Son aquellos lenguajes en donde un programa llamado compilador toma TODO el programa que hemos escrito (que normalmente se denomina Programa Fuente), lo revisa y solo hasta cuando esté completamente bien, solo hasta allí lo convierte a su equivalente en Lenguaje de Bajo Nivel para ser ejecutado por el computador...

> La revisión se hace respecto a la gramática del lenguaje de programación.

### Errores en un programa

#### Errores humanos

##### Errores de concepción

Este es el tipo de error que se presenta cuando el programador cree que tiene el objetivo claramente identificado y entendido y resulta que no es así (pero él no lo sabe) con lo cual es evidente que finalizado el programa seguramente habrá logrado algo totalmente diferente a lo que inicialmente necesitaba lograr...

##### Errores lógicos

Son los errores que se presentan cuando no se ha comprobado apropiadamente a través de la "prueba de escritorio" la efectividad de un algoritmo...

##### Errores de procedimiento

Son los errores que se presentan cuando se tiene claro el objetivo y se ha desarrollado un algoritmo aproximadamente bien, pero no se realiza bien la "prueba de Escritorio", es decir, se hace la prueba de Escritorio, pero se hace mal y no nos damos cuenta y además de ello quedamos convencidos que el algoritmo quedó bien...

## Capítulo 8 (ciclos)

Un ciclo puede definirse como una estructura que nos permite repetir o iterar un conjunto de instrucciones y que tiene las siguientes características:

1. El conjunto de instrucciones debe ser finito.

2. La cantidad de veces que se repita dicho conjunto de instrucciones también debe ser finita.

    - Una condición es explícita cuando depende solamente de la misma ejecución del programa.

    - Una condición es implícita cuando depende de la interacción con el usuario.

3. Deben estar claramente demarcados el inicio y el fin del ciclo. En los casos en los cuales solo exista una instrucción a iterar, no serán necesarias dichas marcas.

4. Dentro de un ciclo podrá ir cualquiera de las otras estructuras que se han estudiado, incluyendo otros ciclos.

## Capítulo 9 (arreglos)

### Concepto general

Es un conjunto de variables en donde cada una de ellas puede ser referenciada utilizando su posición relativa, es decir, su ubicación en relación con el primer elemento de dicho conjunto.

### Vectores

Es un arreglo en donde la ubicación **exacta** de cada uno de sus elementos necesita solamente la utilización de un subíndice.

## Capítulo 11 (funciones)

Una función es un conjunto de órdenes que:

1. Permite lograr un objetivo.

2. Tiene un nombre único identificativo.

3. Puede necesitar parámetros para lograr dicho objetivo.

4. Nos debe retornar un resultado que deberá concordar con el objetivo propuesto.

5. Puede ser manejado como una sola unidad.

## Problemas reales de la programación

1. Necesidad de simplificar la idea general para lograr un objetivo.

2. Simplificación de la prueba de escritorio y, por lo tanto, detección muy sencilla de errores.

3. Reutilización del código fuente.

## Macro algoritmo

Es un algoritmo dividido en unidades funcionales en donde cada una de ellas logra un pequeño objetivo dentro de toda la solución y en conjunto dichas unidades logran el objetivo general.

## Capítulo 12 (consejos y reflexiones sobre programación)

### Acerca de la metodología para solucionar un problema

No dé ni un solo paso hasta tanto no tenga una absoluta certeza de lo que usted quiere lograr. No avance porque es posible que llegue a avanzar por el camino equivocado y termine logrando algo muy distinto a lo que había sido su objetivo original. Primero que nada, un objetivo claro y ahí sí podrá usted pensar en todos los demás elementos que conforman esta metodología.

### Acerca de las técnicas de representación de algoritmos

...Las técnicas lo que van a permitir, cada una en su estilo, es colocar a su disposición herramientas para que la representación se haga mucho más sencilla, porque si usted  se detiene a pensar un momento, no es tan fácil representar una idea por su misma naturaleza etérea e intangible. Por este motivo, la explicación de estas técnicas busca que usted pueda tener unos elementos conceptuales que le permitan de una manera sencilla y simplificada representar sus ideas.
