---
reviewed_on: 2026-05-31
---

# Elastic load balancing routing

Elastic Load Balancing routing can be understood in two layers: the routing structure and the load balancing method. The routing structure decides which group of targets should receive the request. The load balancing method decides which specific target inside that group should receive it.

## Routing structure in ELB

The routing structure explains how a load balancer receives traffic, evaluates the request and forwards it to the correct target group.

### Listeners

A listener checks for incoming requests using a specific protocol and port.

### Listener rules

Listener rules define how requests should be handled. Rules can evaluate conditions such as the host name, URL path, HTTP headers, query strings or source IP address.

### Target groups

A target group contains the resources that receive traffic, such as Amazon EC2 instances, containers or IP addresses. When a request matches a listener rule, it is forwarded to the selected target group.

## Load balancing methods

Load balancing methods explain how traffic is distributed across available servers or targets after the target group has been selected.

### Round robin

Round robin distributes traffic evenly across all available servers in a repeated cycle. Each server receives requests in turn.

### Least connections

Least connections sends traffic to the server with the fewest active connections. This helps keep the workload balanced when some requests take longer to complete than others.

### IP hash

IP hash uses the client IP address to decide which server should receive the request. This can help send the same client to the same server consistently.

### Least response time

Least response time sends traffic to the server that responds the fastest. This helps reduce latency by choosing the target with the best current performance.

The main idea is that ELB first decides where traffic should be routed, then applies a load balancing method to distribute requests across healthy targets.
