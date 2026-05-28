---
reviewed_on: 2026-05-26
---

# AWS regions and availability zones

AWS infrastructure is organized into regions and availability zones. This structure helps applications run closer to users, improve reliability and support disaster recovery.

An AWS Region is a physical location around the world where AWS groups data centers. Each region is separate from other regions. This separation helps with data isolation, compliance requirements and fault tolerance.

An availability zone is one or more data centers inside a region. Availability zones are designed to be independent from each other, with separate power and networking. At the same time, they are connected with low-latency network links.

Applications can be deployed across multiple availability zones to reduce the impact of failures. If one availability zone has a problem, another availability zone in the same region can continue supporting the application.

The main idea is that regions provide geographic separation, while availability zones provide isolated locations inside a region for building reliable and highly available applications.
