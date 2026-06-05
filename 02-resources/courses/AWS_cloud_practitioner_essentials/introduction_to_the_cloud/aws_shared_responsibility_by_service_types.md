---
reviewed_on: 2026-06-04
---

# AWS shared responsibility by service types

The AWS shared responsibility model changes depending on the type of service being used. As a service becomes more managed by AWS, more infrastructure and operational responsibility is handled by AWS. At the same time, the customer remains responsible for important areas such as data, access control and secure configuration.

## Service responsibility levels

|                 responsibility area                  | unmanaged services | managed services | fully managed services |
|:----------------------------------------------------:|:------------------:|:----------------:|:----------------------:|
|                    Customer data                     |      Customer      |     Customer     |        Customer        |
|               Customer data encryption               |      Customer      |     Customer     |        Customer        |
|                Server-side encryption                |      Customer      |     Customer     |          AWS           |
|              Network traffic protection              |      Customer      |     Customer     |          AWS           |
|         Platform and application management          |      Customer      |       AWS        |          AWS           |
| Operating system, network and firewall configuration |      Customer      |       AWS        |          AWS           |
|  Compute, storage, database and networking software  |        AWS         |       AWS        |          AWS           |
|        Hardware and AWS global infrastructure        |        AWS         |       AWS        |          AWS           |
