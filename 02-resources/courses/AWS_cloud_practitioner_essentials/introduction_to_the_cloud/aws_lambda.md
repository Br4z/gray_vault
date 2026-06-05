---
reviewed_on: 2026-06-04
---

# AWS lambda

AWS Lambda is a serverless compute service It allows code to run without provisioning or managing servers.

In Lambda, code is organized into functions. A function runs when it is triggered by an event. This event can come from another AWS service, an API request, a file upload, a message in a queue or a scheduled task.

Lambda automatically manages the infrastructure needed to run the function. This includes capacity, scaling, availability and server maintenance. The function only runs when needed, which makes it useful for event-driven workloads.

A Lambda function is usually designed to perform a specific task. For example, it can process an uploaded file, respond to an API request, read messages from Amazon SQS or react to changes in a database.

Lambda is commonly used with services such as Amazon API Gateway, Amazon S3, Amazon EventBridge, Amazon SQS and Amazon DynamoDB.

The main idea is that AWS Lambda runs code in response to events without requiring direct server management.
