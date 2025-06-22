---
reviewed_on: "2025-05-18"
---

# Roboflow

Roboflow es una plataforma de software como servicio que agiliza el flujo de trabajo completo de visión por computadora, desde la creación y anotación de conjuntos de datos hasta el entrenamiento y despliegue de modelos, potenciando aplicaciones en industrias como salud, logística y comercio minorista. Ofrece productos modulares (Annotate, Train, Deploy, Universe), amplia automatización y opciones de despliegue flexibles (API en la nube).

## Servicios

### Annotate

Crear y gestionar anotaciones de tus datasets.

### Train

Es el motor AutoML para llevar tu dataset a un modelo listo para producción.

> AutoML (Automated Machine Learning) es el conjunto de técnicas y herramientas que automatizan las tareas repetitivas y complejas del ciclo de vida del aprendizaje automático, desde la preparación de datos hasta la optimización de hiperparámetros y la selección de modelos.

- Entrenamiento con un clic.

- Visualización de métricas.

- Gestión de versiones.

### Deploy

Integra inferencia en nube y edge.

- Edge SDKs.

- Workflows: orquesta pipelines combinando modelos y lógica en un entorno low-code; ideal para procesar lotes de imágenes o video en streaming.

### Universe

Es el repositorio comunitario de datos y modelos.

## Modelos

- Detección de objetos: identificar objetos y sus posiciones con cuadros delimitadores.

- Clasificación: asignar etiquetas a toda la imagen.

- Segmentación de instancias: detectar múltiples objetos y su forma real.

- Detección de puntos clave: identificar puntos clave ("esqueletos") en los objetos.

- Multimodal: describir imágenes mediante pares de texto.

## Entrenando un modelo

1. Cargue las imágenes.

2. Anotar las imágenes.

3. Generar una versión del conjunto de datos: esto crea una instantánea puntual de sus imágenes procesadas de una manera determinada.

4. Inicie el entrenamiento en la interfaz web.
