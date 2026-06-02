---
reviewed_on: 2026-05-29
---

# What is an AMI?

An AMI, or **Amazon machine image**, is a template used to launch Amazon EC2 instances.

An AMI contains the information needed to create a virtual server, such as the operating system, application software and configuration settings. When an EC2 instance is launched, an AMI is selected first. Then the instance type, storage, networking and security settings are configured.

AWS provides prebuilt AMIs, including options for Linux and Windows. Custom AMIs can also be created from existing instances. This makes it easier to reuse the same setup, launch multiple identical instances or recover an environment faster.

AMIs are specific to an AWS Region. This means an AMI created in one region must be copied before it can be used in another region.

The main idea is that an AMI works like a blueprint for creating EC2 instances.
