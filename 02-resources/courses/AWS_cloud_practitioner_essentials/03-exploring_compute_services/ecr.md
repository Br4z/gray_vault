---
reviewed_on: 2026-06-17
---

# ECR

Amazon ECR stands for **Amazon elastic container registry**, is a managed AWS service used to store, manage and share container images, so they can be pulled later by services that run containers, such as [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/ecs|Amazon ECS]], [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/eks|Amazon EKS]] or [[02-resources/courses/AWS_cloud_practitioner_essentials/03-exploring_compute_services/fargate|Amazon Fargate]].

Amazon ECR supports private repositories and public repositories. Private repositories are used when image access should be controlled.

Access to private repositories can be controlled with AWS IAM permissions. This helps define who or what can push images, pull images and manage repositories.

Amazon ECR is commonly used in a container workflow. First, a container image is built from application code. Then the image is pushed to Amazon ECR. After that, a container service pulls the image from Amazon ECR and runs it as a container.

The main idea is that Amazon ECR is the place where container images are stored before they are deployed and run in AWS.
