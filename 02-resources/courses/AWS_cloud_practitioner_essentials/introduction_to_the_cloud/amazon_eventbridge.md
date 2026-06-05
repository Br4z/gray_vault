---
reviewed_on: 2026-06-02
---

# Amazon EventBridge

Amazon EventBridge is a serverless event bus service used to connect applications with events from AWS services, custom applications and supported third-party services.

**An event represents something that happened in a system**, such as a change in an application, a scheduled task or an action from an AWS service.

An event bus receives events and routes them to targets. Rules evaluate incoming events and decide which targets should receive them.

A target is the resource that receives the event. Common targets include AWS Lambda functions, Amazon SQS queues, Amazon SNS topics and other AWS services.

EventBridge is useful for event-driven architectures because services can react to events without being tightly connected.

The main idea is that Amazon EventBridge routes events from different sources to the correct targets.
