---
reviewed_on: 2026-06-02
---

# Messaging and queues

Messaging and queues help application components communicate without needing every component to be directly connected at the same time.

In AWS, the main services for this topic are [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/eventbridge|Amazon EventBridge]], [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/sqs|Amazon SQS]] and [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/sns|Amazon SNS]].

Amazon EventBridge is used to route events from sources to targets based on rules.

Amazon SQS is used to store messages in a queue until a consumer is ready to process them.

Amazon SNS is used to publish messages to multiple subscribers.

These services can also work together. For example, an event can be routed by Amazon EventBridge to an Amazon SQS queue, or an Amazon SNS topic can send the same message to several Amazon SQS queues.

The main idea is that EventBridge routes events, SQS stores messages for later processing and SNS broadcasts messages to subscribers.
