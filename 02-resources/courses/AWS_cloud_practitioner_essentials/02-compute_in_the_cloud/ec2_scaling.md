---
reviewed_on: 2026-05-29
---

# EC2 scaling

Amazon EC2 scaling means adjusting compute capacity based on application demand. Scaling helps keep applications available when traffic increases and helps reduce cost when demand decreases.

## Vertical scaling

It means changing the size of an instance. For example, a smaller instance can be replaced with a larger instance that has more CPU, memory or network capacity.

## Horizontal scaling

It means adding or removing EC2 instances. Instead of making one instance larger, more instances are added to share the workload.

## Amazon EC2 auto scaling

It is used to automatically add or remove instances based on demand. It helps maintain application performance and availability without manually changing the number of instances.

An **auto scaling group** defines how many EC2 instances should run. It usually includes a minimum capacity, desired capacity and maximum capacity.

**Scaling policies** define when capacity should change. For example, more instances can be added when CPU usage is high and removed when usage goes down.

The main idea is that EC2 scaling allows compute capacity to grow or shrink based on demand, which helps improve availability, performance and cost efficiency.
