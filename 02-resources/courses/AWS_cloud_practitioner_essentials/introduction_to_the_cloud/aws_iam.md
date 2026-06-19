---
reviewed_on: 2026-06-17
---

# AWS IAM

AWS IAM stands for **AWS identity and access management**, is a service used to control access to AWS resources.

IAM helps answer two main questions. Authentication checks who is making a request. Authorization checks what that identity is allowed to do.

An IAM identity represents a person, application or service that needs access to AWS. The main IAM identities are users, groups and roles.

## Users

An IAM user is an identity for a person or workload. It can have credentials such as a password or access keys. For human access, temporary credentials and federation are generally preferred over long-term credentials.

## Groups

An IAM group is a collection of IAM users. Permissions can be attached to a group so the users in that group receive the same access.

## Roles

An IAM role is an identity with permissions that can be assumed when access is needed. Roles use temporary credentials instead of permanent passwords or access keys. They are commonly used by AWS services, applications or users from another account.

## Policies

An IAM policy defines permissions. A policy describes which actions are allowed or denied, which resources are affected and which conditions must be met.

---

IAM follows the principle of least privilege. This means only the permissions required for a task should be granted.

The AWS account root user has full access to the account and should not be used for everyday tasks. Multi-factor authentication should be enabled to help protect important identities and credentials.

The main idea is that AWS IAM controls who can access AWS resources and what actions are allowed.
