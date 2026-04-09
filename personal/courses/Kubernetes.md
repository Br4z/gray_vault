# Kubernetes

## What is Kubernetes?

Also known as **k8**, is a container orchestration system.

### Functions (What is Kubernetes?)

- **Automatic deployment** of the containerized applications across different servers.

- **Distribution of the load** across multiple servers.

- **Auto-scaling** of the deployed applications.

- **Monitoring** and **health check** of the containers.

- **Replacement** of the failed containers.

### Supported container runtimes

- Docker.

- CRI-O.

- containerd.

## What is a pod?

It is the smallest unit in the Kubernetes world. Inside of it, there are:

- Containers.

- Shared volumes.

- Share IP addresses.

> One container per pod is the most common use case.

## Kubernetes Cluster and Nodes

### Nodes

It consists of a series of pods.

### Cluster

It consists of a series of nodes (servers). There are a **master** node and **workers** nodes. The job of the master is to manage the other nodes (workers).

> The master node is actually a control panel; it does not run the client applications.

## Kubernetes Services

There are such services as kubelet, kube-proxy and container runtime that are present on each node in the Kubernetes cluster.

### Kube-proxy

It is responsible for network communication inside each node and between nodes.

---

In the master node, there are services such:

- API server: main point of communication between different nodes in the Kubernetes world.

- etcd: stores all logs related to the operation of the entire Kubernetes cluster.

## What is kubectl

It is a separate command-line tool that allows you to connect to a specific Kubernetes cluster and manage it remotely.

## Exploring the Kubernetes node

- `minikube ip`: shows the Kubernetes node IP.

-  `ssh docker@<Kubernetes node IP>`: logs into the Kubernetes node.

	> This only works if a driver other than `docker` is selected.

	> The default password is `tcuser`.

- `kubectl cluster-info`: shows cluster info.

- `kubectl get nodes`: shows information about nodes.

- `kubectl get namespaces`: shows information about namespaces.

- `kubectl get pods`: shows running pods.

	> `-A` we can list all podes (independetly of their namesapce).

	> `--namespace=<namespace>` we can list the pods in the specified namespace.

	> `-o wide` we can list more information about the pods.

## Creating just a single Pod

- `kubectl run <pod name> --image=<docker image>`: runs a specified image in a pod called `<pod name>`.

## Exploring Kubernetes Pod

- `kubectl describe <resource name>`: shows detailed information about a specific resource.

- `kubectl delete <resource> <resource name`: deletes a specific resource within the Kubernetes cluster.

## Creating and exploring Deployment

The replicas of a Deployment are managed by a Replica set, and the name of the pods created will contain the ID of the Replica set and an ID of its own.

- `kubectl create deployment <deployment name> --image=<Docker image>`: creates a new deployment in the Kubernetes cluster with the specified name and using the specified Docker image.

- `kubectl get deployments`: shows information about all deployments in the Kubernetes cluster.

- `kubectl scale deployment <deployment name> --replicas=<number of replicas>`: scales the specified deployment by adjusting the number of replicas to the desired count.

## Creating and exploring ClusterIP Service

The exposed IP using a Cluster IP is only available to all Kubernetes nodes.

- `kubectl expose deployment <deployment name> --port=<port> --target-port=<port>`: exposes the specified deployment to the inside of the Kubernetes node by creating a Cluster IP service.

A ClusterIP service facilitates internal communication within the Kubernetes cluster by providing a standardized and reliable way to access Pods running specific applications or services.

## Creating NodePort Service

- `kubectl expose <deployment name> --type=NodePort --port=<port> --target-port=<port>`: creates a service in Kubernetes that allows external access to the deployment using a specific port on each node (NodePort), forwarding traffic to the target port on the pods belonging to the deployment.

- `minikube service <deployment name>`: exposes a Kubernetes deployment as a service and opens the service in a web browser or outputs the service URL.

	> `--url` to prevent Minikube from opening the URL.

## Creating LoadBalancer service

- `kubectl expose <deployment name> --type=LoadBalancer --port=<port> --target-port=<port>`: creates a new service in Kubernetes and exposes it to the outside world using a cloud provider's load balancer.

## Rolling update of the deployment

A rolling update allows a Deployment update to take place with zero downtime. It does this by incrementally replacing the current Pods with new ones. The new Pods are scheduled on Nodes with available resources, and Kubernetes waits for those new Pods to start before removing the old Pods.

> This is the default strategy to update Pods images.

- `kubectl set image deployment <deployment name> <containers name>:<image>`: updates the image of a container(s) within a deployment in Kubernetes.

- `kubectl rollup status <deployment name>`: checks the status of a rollout for a deployment in Kubernetes.

## Creating YAML deployment specification file

- `kubectl delete all --all`: deletes all resources of all types within the current namespace.

## Resolving Service name to IP address

- `kubectl exec <pod name> -- <command>`: executes a command directly inside a running container within a pod.