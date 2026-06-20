---
reviewed_on: 2026-06-18
---

# EKS

Amazon EKS stands for **Amazon elastic Kubernetes service**, is an AWS service used to run Kubernetes clusters.

Amazon EKS provides a managed Kubernetes environment, so less operational work is required to run the Kubernetes control plane.

An EKS cluster includes a control plane and worker nodes. The control plane manages the cluster, schedules workloads and keeps the desired state of the system. Worker nodes provide the compute capacity where containers run.

Amazon EKS can use different compute options for running workloads. Containers can run on [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/fargate|Amazon Fargate]], managed node groups or self-managed [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/ec2|Amazon EC2]] instances.

Amazon EKS commonly works with [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/ecr|Amazon ECR]]. It can also work with [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/elastic_load_balancing_routing|elastic load balancing]] to distribute traffic to applications running in Kubernetes.

The main idea is that Amazon EKS runs Kubernetes on AWS, while AWS manages the Kubernetes control plane and the customer manages the applications, workloads and cluster configuration.
