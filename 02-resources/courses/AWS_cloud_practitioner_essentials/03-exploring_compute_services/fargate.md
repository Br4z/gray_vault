---
reviewed_on: 2026-06-18
---

# Fargate

AWS Fargate is a serverless compute engine for containers. It allows containers to run without managing the underlying servers or[[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/ec2|Amazon EC2]] instances.

Fargate is not a container registry and it is not the orchestrator itself. Instead, it provides the compute capacity used by container orchestration services such as [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/ecs|Amazon ECS]] and [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/eks|Amazon EKS]].

With Fargate, the application is packaged as a container image. Then CPU, memory, networking and permissions are defined. AWS runs the container using managed infrastructure.

Fargate reduces operational work because server provisioning, patching, capacity management and cluster scaling are handled by AWS.

In Amazon ECS, Fargate runs containers as **tasks**. In Amazon EKS, Fargate runs Kubernetes **pods**.

Fargate is useful when containers need to run without directly managing EC2 instances.

The main idea is that AWS Fargate provides serverless compute capacity for containers, while Amazon [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/ecs|Amazon ECS]] or [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/eks|Amazon EKS]] manages how those containers are deployed and orchestrated.
