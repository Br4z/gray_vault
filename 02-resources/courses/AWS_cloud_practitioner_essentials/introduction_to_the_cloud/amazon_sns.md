---
reviewed_on: 2026-06-02
---

# Amazon SNS

Amazon SNS, or **Amazon simple notification service**, is a publish-subscribe messaging service.

A publisher sends a message to a topic. A topic acts as a communication channel. Subscribers receive messages from the topic.

Subscribers can include Amazon SQS queues, AWS Lambda functions, HTTP or HTTPS endpoints, email addresses and mobile push endpoints.

SNS is useful when the same message needs to be sent to multiple destinations. This pattern is called fanout when a message is published once and delivered to several subscribers.

The main idea is that Amazon SNS broadcasts messages from one publisher to one or more subscribers.

