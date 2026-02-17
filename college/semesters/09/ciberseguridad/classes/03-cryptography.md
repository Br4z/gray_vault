---
reviewed_on: "2025-04-16"
sources:
  - author: NA
    url: http://ibm.com/mx-es/topics/cryptography
    language: Spanish
  - author: NA
    url: https://es.wikipedia.org/wiki/Cifrado_por_sustituci%C3%B3n
    language: Spanish
  - author: NA
    url: https://es.wikipedia.org/wiki/Cifrado_de_Vigen%C3%A8re
    language: Spanish
---

# Cryptography

## Introducción

La criptografía es la práctica de desarrollar y utilizar algoritmos codificados para proteger y ocultar la información transmitida para que solo puedan ser leídas por aquellos con permiso y capacidad de descifrarla.

Puede emplearse para ocultar cualquier forma de comunicación digital, incluidos texto, imágenes, video o audio. En la práctica, la criptografía se emplea principalmente para transformar mensajes en un formato ilegible (conocido como texto cifrado) que solo el destinatario autorizado puede descifrar en un formato legible (conocido como texto sin formato) empleando una clave secreta específica.

## Principios básicos de la criptografía moderna

1. Confidencialidad: solo puede acceder a la información cifrada la persona a la que está destinada y nadie más.

2. Integridad: la información cifrada no se puede modificar en el almacenamiento ni en tránsito entre el remitente y el receptor previsto sin que se detecten alteraciones.

3. No repudio: el creador/remitente de la información cifrada no puede negar su intención de enviar la información.

4. Autenticación: se confirman las identidades del remitente y del destinatario, así como el origen y el destino de la información.

## Tipos de criptografía

### Criptografía simétrica

La criptografía de clave simétrica utiliza una única clave compartida tanto para el cifrado como para el descifrado. En criptografía simétrica, tanto el remitente como el receptor de un mensaje cifrado tendrán acceso a la misma clave secreta.

Algunos de los principales atributos del cifrado simétrico incluyen:

- Velocidad: el proceso de cifrado es comparativamente rápido.

- Eficiencia: el cifrado de clave única es adecuado para grandes cantidades de datos y requiere menos recursos.

- Confidencial: el cifrado simétrico protege eficazmente los datos y evita que cualquier persona que no tenga la clave descifre la información.

#### Sustitución simple

En los cifrados de sustitución simple un carácter en el texto original es reemplazado por un carácter determinado del alfabeto de sustitución. Es decir, se establecen parejas de caracteres donde el segundo elemento de la pareja establece el carácter que sustituye al primer elemento de la pareja.

##### Monoalfabético

Se dice que un sistema de cifrado de sustitución simple es monoalfabético cuando cada carácter se sustituye siempre por un determinado carácter del alfabeto del texto cifrado. En este tipo de cifrados al alfabeto usado para el texto cifrado se le llama alfabeto de sustitución.

###### Cifrado César

El cifrado César, también conocido como cifrado por desplazamiento, código de César o desplazamiento de César, es una de las técnicas de cifrado más simples y más usadas. Es un tipo de cifrado por sustitución en el que una letra en el texto original es reemplazada por otra letra que se encuentra un número fijo de posiciones más adelante en el alfabeto.

La codificación también se puede representar usando aritmética modular, transformando las letras en números, de acuerdo al esquema $\text{A} = 0,\text{B} = 1,\dots,\text{Z} = 26$. La codificación de la letra $x$ con un desplazamiento $n$ puede ser descrita matemáticamente como

$$
E_n(x) = (x + n) \mod L
$$

> $L$ es el tamaño del alfabeto.

La decodificación se hace de manera similar

$$
D_n(x) = (x - n) \mod L
$$

> $L$ es el tamaño del alfabeto.

##### Polialfabético

Se dice que un sistema de cifrado de sustitución simple es polialfabético cuando cada carácter **NO** se sustituye siempre por el mismo carácter. Es decir, en el sistema hay implicados varios alfabetos y dependiendo de las circunstancias se aplicará uno u otro. Los distintos métodos se diferencian entre sí por la forma en que se definen los distintos alfabetos y por el método que se usa para saber en qué momento hay que usar cada uno.

###### Cifrado de Vigenère

1. Asignamos valores numéricos a las letras.

	$$
	\text{A} = 0,\text{B} = 1,\dots,\text{Z} = 26
	$$

2. Escoge una "clave" y repetirla hasta igualar la longitud del texto plano a cifrar.

3. Cifrar cada letra.

	$$
	E(X_i) = (X_i + K_i) \mod L
	$$

	Donde $X_i$ es la letra en la posición $i$ del texto a cifrar, $K_i$ es el carácter de la clave correspondiente a $X_i$, pues se encuentran en la misma posición, y $L$ es el tamaño del alfabeto.

Para descifrar realizamos la operación inversa:

- Cuando $(C_i - K_i) \geq 0$.

	$$
	D(C_i) = (C_i - K_i) \mod L
	$$

- Cuando $(C_i - K_i) < 0$.

	$$
	D(C_i) = (C_i - K_i + L) \mod L
	$$

Donde $C_i$ es el carácter en la posición $i$ del texto cifrado, $K_i$ viene siendo el carácter de la clave correspondiente a $C_i$ y $L$ el tamaño del alfabeto.

### Criptografía asimétrica

La criptografía asimétrica (también conocida como criptografía de clave pública) utiliza una clave privada y una clave pública. Los datos cifrados con una clave pública y privada requieren que se descifren tanto la clave pública como la clave privada del destinatario.

Algunos de los principales atributos del cifrado simétrico incluyen:

- Seguridad: el cifrado asimétrico se considera más seguro.

- Robusta: la criptografía de clave pública ofrece más beneficios, ya que proporciona confidencialidad, autenticidad y no repudio.

- Intensivo en recursos: a diferencia del cifrado de clave única, el cifrado asimétrico es lento y requiere mayores recursos, lo que puede resultar prohibitivo en algunos casos.

#### Algoritmo RSA

RSA, llamado así por sus progenitores Rivest, Shamir y Adleman, es uno de los algoritmos de cifrado de clave pública más comunes. Este se desarrolló en 1977.

La seguridad de este algoritmo radica en el problema de la factorización de números enteros. Los mensajes enviados se representan mediante números, y el funcionamiento se basa en el producto, conocido, de dos números primos grandes elegidos al azar y mantenidos en secreto.

## Funciones hash

Las funciones hash, como el algoritmo de hash seguro 1 (SHA-1), pueden transformar una entrada en una cadena de caracteres de una longitud fija, que es exclusiva de los datos originales. Este valor hash ayuda a verificar la integridad de los datos al hacer que sea computacionalmente inviable encontrar dos entradas diferentes que puedan producir el mismo hash de salida.
