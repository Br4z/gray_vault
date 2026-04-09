---
reviewed_on: "2025-02-28"
---

# Entity-relationship problems

1. El gerente de la empresa Uber, una empresa proveedora de movilidad como servicio, le ha pedido que cree un diagrama usando el Modelo ER. Quieren gestionar los incidentes y siniestros de tránsito. Para esta empresa los conductores son propietarios de uno o más vehículos. Cada vehículo está asociado con cero (0) o más accidentes de tránsito del cual se obtiene un porcentaje de daño.

	```mermaid
	erDiagram
	DRIVER {
		int ID_driver PK
		string name
	}

	VEHICLE {
		int ID_vehicle PK
		string brand
		string model
		int year
		int ID_driver FK
	}

	ACCIDENT {
		int ID_accident PK
		int ID_vehicle FK
		date date
		string location
		float damage_percentage
	}

	DRIVER ||--o{ VEHICLE : owns
	VEHICLE ||--o{ ACCIDENT : involved_in
	```

	> Sugerencia de mejora: crear una tabla `INCIDENT` que relacione vehículos con accidentes.

	```mermaid
	erDiagram
	DRIVER {
		int ID_driver PK
		string name
	}

	VEHICLE {
		int ID_vehicle PK
		string brand
		string model
		int year
		int ID_driver FK
	}

	ACCIDENT {
		int ID_accident PK
		date date
		string location
	}

	INCIDENT {
		int ID_incident PK
		int ID_vehicle FK
		int ID_accident FK
		float damage_percentage
	}

	DRIVER ||--o{ VEHICLE : owns
	VEHICLE ||--o{ INCIDENT : involved_in
	ACCIDENT ||--o{ INCIDENT : recorded_in
	```

	- Un **conductor** puede tener muchos vehículos, pero cada **vehículo** tiene un solo dueño.

	- Un **vehículo** puede estar en múltiples incidentes, pero cada **incidente** se asocia con un solo **vehículo**.

	- Un **accidente** puede involucrar múltiples incidentes, pero cada **incidente** pertenece a un solo accidente.

2. En el colegio Libranos Señor todos los estudiantes tienen un asiento, en alguna posición del salón, estos ven a lo largo del año lectivo varios cursos que son creados por un instructor. Los cursos pueden tener varias clases que pueden o no tener varias secciones de acuerdo a diferentes libros guías elegidos por el profesor.

	```mermaid
	erDiagram
	STUDENT {
		int ID_student PK
		string name
	}

	SEAT {
		int ID_seat PK
		int Position
	}

	INSTRUCTOR {
		int ID_instructor PK
		string Name
	}

	COURSE {
		int ID_course PK
		string course_name
		int ID_instructor FK
	}

	CLASS {
		int ID_class PK
		string class_name
		int ID_course FK
	}

	SECTION {
		int ID_section PK
		string section_name
		int ID_class FK
	}

	GUIDE_BOOK {
		int ID_guide_book PK
		string title
		string author
	}

	STUDENT ||--|| SEAT : has
	STUDENT }|..|{ COURSE : enrolls_in
	INSTRUCTOR ||--o{ COURSE : creates
	COURSE ||--o{ CLASS : includes
	CLASS ||--o{ SECTION : has
	CLASS }|..|{ GUIDE_BOOK : uses
	```

- Un **estudiante** tiene un **asiento** en el **salón**: $1:1$.

- Un **estudiante** cursa varios cursos durante el año: $N:M$.

- Un **curso** es creado por un **instructor**: $1:N$.

- Un **curso** tiene varias clases: $1:N$.

- Una **clase** puede tener varias secciones: $1:N$.

- Una **clase** puede usar diferentes libros guías: $M:N$.

---

1. La empresa JAPE-SHOES tiene varias tiendas a nivel nacional cada una tiene un número único de tienda, una dirección, un nombre asociado a la ubicación y un teléfono de contacto. De los miembros de la tienda, se conoce su número de cédula, dirección, su nombre completo, teléfono personal y un número telefónico para urgencias. En cada tienda hay una serie de productos que tienen código de barras, nombre, precio y descripción. Todas las tiendas tienen una hora de apertura y una hora de cierre. Durante un día se venden alrededor de mil unidades y cada transacción posee un número único, información de la tienda en que realiza la venta, el vendedor, la fecha y la hora de la transacción y el producto vendido.

	```mermaid
	erDiagram
	STORE {
		int ID_store PK
		string address
		string store_name
		string contact_phone
		time opening_hour
		time closing_hour
	}

	EMPLOYEE {
		int ID_employee PK
		string full_name
		string address
		string personal_phone
		string emergency_phone
	}

	PRODUCT {
		int barcode PK
		string product_name
		float price
		string description
	}

	TRANSACTION {
		int ID_transaction PK
		int ID_store FK
		int ID_employee FK
		date date
		time time
		int barcode FK
	}

	STORE ||--|{ EMPLOYEE : employs
	STORE }o--o{ PRODUCT : stocks
	STORE ||--o{ TRANSACTION : records
	EMPLOYEE ||--o{ TRANSACTION : processes
	PRODUCT ||--o{ TRANSACTION : sold_in
	```

	- Una **tienda** emplea muchos empleados (al menos 1) y cada **empleado** trabaja en una sola **tienda**: $1:1 \dots N$.

	- Una **tienda** tiene muchos productos en stock y un **producto** puede estar en varias tiendas: $M:N$.

	- Una **tienda** puede registrar muchas transacciones y cada **transacción** ocurre en una sola **tienda**: $1:N$.

	- Un **empleado** puede procesar varias transacciones y cada **transacción** es procesada por un solo **empleado**: $1:N$.

	- Un **producto** puede aparecer en muchas transacciones y cada **transacción** involucra un solo **producto**: $1:N$.

2. En las tiendas de la empresa JAPE-SHOES algunos miembros viven en un código postal distinto al de la tienda, en provincias cercanas e incluso en otras ciudades por esta razón ahora la dirección de un miembro considera. código postal, provincia, ciudad y calle. Considere el diseño inicial para la empresa y haga las modificaciones pertinentes en un nuevo diagrama.

	```mermaid
	erDiagram
	STORE {
		int ID_store PK
		string address
		string store_name
		string contact_phone
		time opening_hour
		time closing_hour
	}

	ADDRESS {
		int ID_address PK
		string street
		string city
		string province
		string postal_code
	}

	EMPLOYEE {
		int ID_employee PK
		string full_name
		int ID_address FK
		string personal_phone
		string emergency_phone
	}

	PRODUCT {
		int barcode PK
		string product_name
		float price
		string description
	}

	TRANSACTION {
		int ID_transaction PK
		int ID_store FK
		int ID_employee FK
		date date
		time time
		int barcode
	}

	STORE ||--|{ EMPLOYEE : employs
	STORE ||--o{ PRODUCT : stocks
	STORE ||--o{ TRANSACTION : records
	EMPLOYEE ||--o{ TRANSACTION : processes
	PRODUCT ||--o{ TRANSACTION : sold_in
	ADDRESS ||--o{ EMPLOYEE : located_at
	```

	- Un **empleado** tiene asociada una sola **dirección** y cada **dirección** pertenece a un solo **empleado**: $1:1$.

3. En las tiendas de la empresa JAPE-SHOES se permiten las devoluciones si no se ha vencido el tiempo de devolución. Una devolución tiene un identificador único, un comentario u observación, un empleado y una relación con la transacción-producto. Considere el diseño inicial para la empresa y haga las modificaciones pertinentes en un nuevo diagrama.

	```mermaid
	erDiagram
	STORE {
		int ID_store PK
		string address
		string store_name
		string contact_phone
		time opening_hour
		time closing_hour
	}

	ADDRESS {
		int ID_address PK
		string street
		string city
		string province
		string postal_code
	}

	EMPLOYEE {
		int ID_employee PK
		string full_name
		int ID_address FK
		string personal_phone
		string emergency_phone
	}

	PRODUCT {
		int barcode PK
		string product_name
		float price
		string description
	}

	TRANSACTION {
		int ID_transaction PK
		int ID_store FK
		int ID_employee FK
		date date
		time time
		int barcode
	}

	RETURN {
		int ID_return PK
		int ID_transaction FK
		int ID_employee FK
		string comment
		date return_date
	}

	STORE ||--|{ EMPLOYEE : employs
	STORE ||--o{ PRODUCT : stocks
	STORE ||--o{ TRANSACTION : records
	EMPLOYEE ||--o{ TRANSACTION : processes
	PRODUCT ||--o{ TRANSACTION : sold_in
	ADDRESS ||--o{ EMPLOYEE : located_at
	TRANSACTION ||--o{ RETURN : has
	```

	- Una **transacción** puede tener cero o una **devolución** y cada **devolución** está asociada a una única transacción: $1:0 \dots 1$.

	- Un **empleado** puede procesar muchas devoluciones y cada devolución es procesada por un único **empleado**: $1:N$.

4. En la empresa JAPE-SHOES hay existencia de algunos productos que han sido discontinuados en producción a nivel mundial, también hay productos que no tienen existencia en algunas tiendas. Considere el diseño inicial para la empresa y haga las modificaciones pertinentes en un nuevo diagrama.

	```mermaid
	erDiagram
	STORE {
		int ID_store PK
		string address
		string store_name
		string contact_phone
		time opening_hour
		time closing_hour
	}

	ADDRESS {
		int ID_address PK
		string street
		string city
		string province
		string postal_code
	}

	EMPLOYEE {
		int ID_employee PK
		string full_name
		int ID_address FK
		string personal_phone
		string emergency_phone
	}

	PRODUCT {
		int barcode PK
		string product_name
		float price
		string description
		boolean discontinued
	}

	STOCK {
		int ID_store FK
		int barcode FK
		int quantity
	}

	TRANSACTION {
		int ID_transaction PK
		int ID_store FK
		int ID_employee FK
		date date
		time time
		int barcode
	}

	RETURN {
		int ID_return PK
		int ID_transaction FK
		int ID_employee FK
		string comment
		date return_date
	}

	STORE ||--|{ EMPLOYEE : employs
	STORE ||--o{ TRANSACTION : records
	EMPLOYEE ||--o{ TRANSACTION : processes
	PRODUCT ||--o{ TRANSACTION : sold_in
	ADDRESS ||--o{ EMPLOYEE : located_at
	TRANSACTION ||--o{ RETURN : has
	STORE ||--o{ STOCK : holds
	PRODUCT ||--o{ STOCK : stored_in
	```

	- Una **tienda** puede manejar muchos registros de stock y cada registro de **stock** pertenece a una sola tienda: $1:N$.

	- Un **producto** puede estar en varios registros de stock y cada registro de **stock** se asocia a un solo producto: $1:N$.
