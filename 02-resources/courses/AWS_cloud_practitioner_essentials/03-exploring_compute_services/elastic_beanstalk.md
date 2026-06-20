---
reviewed_on: 2026-06-19
---

# Elastic Beanstalk

AWS elastic Beanstalk is a service used to deploy and manage web applications in the AWS cloud without managing all infrastructure details manually.

Application code is uploaded to elastic Beanstalk. Then the service automatically creates and configures the AWS resources needed to run the application, such as [[02-resources/courses/AWS_cloud_practitioner_essentials/02-compute_in_the_cloud/ec2|Amazon EC2]] instances, load balancing, scaling and health monitoring.

An elastic Beanstalk application is a logical container for the resources related to the application. It can include application versions, environments and environment configurations.

An **environment** is the running version of the application. It includes the AWS resources created by elastic Beanstalk to host and run the application.

Elastic Beanstalk still allows control over configuration. For example, instance types, scaling settings, environment variables and deployment options can be adjusted when needed.
