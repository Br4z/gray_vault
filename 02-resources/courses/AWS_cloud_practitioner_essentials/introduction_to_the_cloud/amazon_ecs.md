---
reviewed_on: 2026-06-17
---

# Amazon ECS

Amazon ECS stands for **Amazon elastic container service**, is an AWS service used to run, manage and scale containers.

ECS is a container orchestration service. Orchestration means that AWS helps manage where containers run, how many containers should run and how containers are restarted when something fails.

In Amazon ECS, an application is described using a **task definition**. A task definition works like a blueprint for running containers. It defines information such as the container image, CPU, memory, ports and environment variables.

A **task** is a running copy of a task definition. A service is used when a task needs to keep running over time.

Amazon ECS can run containers using [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_fargate|Amazon Fargate]] or [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_ec2|Amazon EC2]]

Amazon ECS commonly works with [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/amazon_ecr|Amazon ECR]]. It can also work with [[02-resources/courses/AWS_cloud_practitioner_essentials/introduction_to_the_cloud/elastic_load_balancing_routing|elastic load balancing]] to distribute traffic across running tasks.

The main idea is that Amazon ECS manages containerized applications by running containers as tasks and keeping them available through services.
