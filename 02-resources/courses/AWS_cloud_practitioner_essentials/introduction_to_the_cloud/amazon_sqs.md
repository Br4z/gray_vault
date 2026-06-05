---
reviewed_on: 2026-06-02
---

# Amazon SQS

Amazon SQS, or **Amazon simple queue service**, is a managed message queue service used to store messages between application components.

A producer sends messages to a queue. A consumer reads messages from the queue and processes them. The producer and consumer do not need to run at the same time.

SQS helps decouple systems, absorb traffic spikes and process work asynchronously.

There are two main queue types:

1. Standard queues: they provide high throughput and at-least-once delivery. Messages may be delivered more than once or occasionally out of order.

2. FIFO queues: they preserve message order and support exactly-once processing. They are useful when the order of operations matters.

The main idea is that Amazon SQS stores messages safely until another part of the application is ready to process them.
