# Entity Relation Diagram with Mermaid

## Entity definitions

Each entity is defined by its name, typically in uppercase. It can have attributes listed within `{}` in the format type name.

> You can include data types in the attributes.

## Relationships between entities

Relationships are defined using the following structure:

```
<first-entity> [<relationship> <second entity> : <relationship label>]
```

Relationships can have the following types of cardinality:

- `|` one.

- `o`: zero or one.

- `{`: one or more.

- `}`: zero or more.

Solid lines indicate identifying relationships (`|--|`), while dashed lines indicate non-identifying relationships (`|..|`).

## Example

```MERMAID
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
    CUSTOMER }|..|{ DELIVERY-ADDRESS : uses

    CUSTOMER {
        string name
        string customer_number
        string sector
    }

    ORDER {
        int order_number
        string delivery_address
    }

    LINE_ITEM {
        string product_code
        int quantity
        float price_per_unit
    }
```
