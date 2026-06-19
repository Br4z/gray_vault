---
reviewed_on: 2026-06-18
---

# Containers and orchestration in AWS

In AWS, [[01-areas/systems_engineering/fundamentals/containers/definition|containers]] can be stored, deployed, managed and scaled through container-related services.

[[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_ecr|Amazon ECR]] stores container images. [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_ecs|Amazon ECS]] and [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_eks|Amazon EKS]] orchestrate containers. [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_fargate|Amazon Fargate]] provides serverless compute capacity for containers.

## How the services fit together

A container image is built from application code and stored in Amazon ECR. Then Amazon ECS or Amazon EKS can use that image to run containers. The containers need compute capacity to run, which can be provided by AWS Fargate or by [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_ec2|Amazon EC2]] instances.
