---
reviewed_on: "2025-05-01"
---

# Digital signature

## Hash

​Una función hash es un algoritmo criptográfico que transforma una entrada de datos de cualquier tamaño en una salida de longitud fija, conocida como "valor hash" o "resumen del mensaje". Este valor actúa como una huella digital única del contenido original. Una característica clave de las funciones hash es que son unidireccionales: es computacionalmente inviable reconstruir la entrada original a partir del valor hash. Además, cualquier cambio en la entrada produce un valor hash completamente diferente, lo que permite detectar alteraciones en los datos.

## Certificado digital

Es un archivo electrónico emitido por una autoridad de certificación que vincula la identidad de una persona o entidad con una clave pública. Este certificado permite realizar operaciones seguras en entornos digitales, como firmar documentos electrónicamente o acceder a servicios en línea de forma autenticada.​

## Entidad certificadora

También conocida como autoridad de certificación, es una organización que emite y gestiona certificados digitales. Su función principal es verificar la identidad de personas, empresas o sitios web, y garantizar la autenticidad de las transacciones electrónicas mediante la emisión de certificados que vinculan identidades con claves criptográficas.

## PKI

Una Infraestructura de Clave Pública es un conjunto de tecnologías, políticas y procedimientos que permiten la creación, gestión, distribución y revocación de certificados digitales. Estos certificados vinculan claves criptográficas con identidades, asegurando comunicaciones seguras y autenticadas en entornos digitales.

## Firma digital

Es un conjunto de datos o resumen cifrado asociado a un mensaje que permite garantizar con total seguridad la identidad del firmante y la integridad del documento enviado.

### Usos (firma digital)

- Validación de identidad: la firma digital permite verificar de manera inequívoca la identidad del firmante de un documento electrónico. Esto se logra mediante certificados digitales emitidos por autoridades de certificación confiables, que vinculan la identidad del usuario con su clave pública. De esta forma, se garantiza que el documento ha sido firmado por la persona que dice ser, reduciendo el riesgo de suplantación de identidad.

- Evitar falsificaciones: al utilizar técnicas criptográficas, la firma digital asegura la integridad del documento, es decir, que no ha sido alterado desde su firma. Cualquier modificación posterior al documento invalida la firma, lo que permite detectar intentos de falsificación o manipulación del contenido.

- Asegurar datos confidenciales: la firma digital puede combinarse con mecanismos de cifrado para proteger la confidencialidad de la información contenida en un documento. Esto garantiza que solo las personas autorizadas puedan acceder al contenido, protegiendo datos sensibles frente a accesos no autorizados.

- Gestiones más eficientes ante administraciones públicas: la implementación de la firma digital en trámites con entidades gubernamentales permite realizar gestiones de forma electrónica, reduciendo tiempos y costos asociados a procesos presenciales. Además, proporciona una mayor seguridad y validez legal a los documentos intercambiados digitalmente.

## Cómo se encadenan Hash, PKI y firma digital

Para asegurar la integridad, autenticidad y no repudio de un documento electrónico, estos tres componentes trabajan de la siguiente manera:

1. Generación del resumen (Hash).

	Cuando se desea firmar un documento, primero se aplica una función hash al contenido completo. Esto produce un valor de longitud fija que representa de forma única el documento.

2. Certificado de clave pública (PKI).

	El firmante posee un par de claves: privada y pública. Su clave pública está incluida en un certificado digital emitido por una autoridad de certificación (CA). Este certificado, parte de la infraestructura de clave pública (PKI), vincula la identidad del firmante con su clave pública y garantiza que quien recibe el documento pueda confiar en dicha asociación.

3. Creación de la firma digital.

	El resumen obtenido en el paso 1 se cifra utilizando la **clave privada** del firmante. El resultado cifrado es la firma digital. Al adjuntar esta firma al documento junto con el certificado digital del firmante, se proporciona tanto la prueba de integridad (gracias al hash) como la garantía de identidad (gracias al certificado PKI).

4. Verificación por el receptor.

	1. El receptor aplica la misma función hash al documento recibido para obtener su propio resumen.

	2. Con la clave pública extraída del certificado digital del firmante, descifra la firma digital y recupera el resumen original cifrado.

	3. Compara ambos resúmenes, si coinciden, el documento no ha sido alterado y la identidad del firmante queda verificada; si difieren, se detecta manipulación o un certificado no válido.

## Metadato

Un metadato es información invisible para el usuario, incrustada en archivos como imágenes, documentos o vídeos, que describe detalles sobre el archivo, como quién lo creó o dónde fue tomado.

### Tipos

Existen diferentes tipos de metadatos, como los técnicos (información del dispositivo o software utilizado), descriptivos (detalles sobre el contenido, como título o autor), administrativos (datos de gestión como fechas de creación o modificación) y de geolocalización (ubicación donde fue generado un archivo).

### Uso (metadato)

Los metadatos ayudan a organizar grandes volúmenes de información, facilitando la búsqueda de archivos, la gestión de documentos en empresas y el rastreo de cambios. También permiten realizar análisis forenses en investigaciones y verificar la autenticidad de documentos o imágenes.

El uso consciente de los metadatos es crucial porque, aunque permiten una mejor organización y trazabilidad de la información, también representan un riesgo si caen en manos equivocadas. Pueden revelar datos sensibles de personas u organizaciones, ser usados para planear ataques cibernéticos o incluso para cometer delitos como el espionaje o el secuestro.
