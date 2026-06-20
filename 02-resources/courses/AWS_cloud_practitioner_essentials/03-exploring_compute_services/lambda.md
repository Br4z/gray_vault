---
reviewed_on: 2026-06-18
---

# lambda

AWS lambda is a serverless compute service It allows code to run without provisioning or managing servers.

In lambda, code is organized into functions. A function runs when it is triggered by an event. This event can come from another AWS service, an API request, a file upload, a message in a queue or a scheduled task.

Lambda automatically manages the infrastructure needed to run the function. This includes capacity, scaling, availability and server maintenance. The function only runs when needed, which makes it useful for event-driven workloads.

A lambda function is usually designed to perform a specific task. For example, it can process an uploaded file, respond to an API request, read messages from Amazon SQS or react to changes in a database.

Lambda is commonly used with services such as Amazon API Gateway, Amazon S3, Amazon[[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/eventbridge|amazon EventBridge]], [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/sqs|Amazon SQS]] and Amazon DynamoDB.

The main idea is that AWS Lambda runs code in response to events without requiring direct server management.
