---
reviewed_on: 2026-06-19
---

# Batch

AWS Batch is a fully managed AWS service used to run batch computing workloads in the cloud.

Batch computing is used when work can be processed as jobs instead of continuous, always-running applications. This is useful for tasks such as data processing, simulations, machine learning jobs, image processing and report generation.

With AWS Batch, jobs are submitted to a queue. AWS batch then schedules the jobs and runs them using available compute resources. The required infrastructure can be provisioned and scaled automatically based on the amount of work waiting to be processed.

## Main components

### Job

A job is a unit of work submitted to AWS Batch. It represents the task that needs to run.

### Job definition

A job definition works like a blueprint for a job. It can define the container image, CPU, memory, command, environment variables and retry settings.

### Job queue

A job queue stores jobs until they can be scheduled. Jobs wait in the queue until compute resources are available.

### Compute environment

A compute environment defines where jobs run. AWS batch can use compute options such as [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/ec2|Amazon EC2]], [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/fargate|Fargate]], [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/ec2_pricing#Spot instances|spot instances]] or [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/ec2_pricing#On-demand instances|on-demand instances]].

