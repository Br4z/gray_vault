---
reviewed_on: "2025-02-01"
---

# Linux applications installation

## Docker

1. `sudo apt-get update`: updates the package lists from the repositories. It ensures that you have the most recent information about available packages and their versions.

2. `sudo apt-get install ca-certificates curl`.

	This installs two important tools:

	- `ca-certificates`: provides trusted Certificate Authorities (CA) for SSL/TLS connections.

	- `curl`: a tool to transfer data from or to a server, commonly used for downloading files from the web.

3. `sudo install -m 0755 -d /etc/apt/keyrings`: creates the `/etc/apt/keyrings` directory with the specified permissions (`0755` allows the owner to read, write, and execute, and others to only read and execute).

4. `sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc`: downloads the GPG (GNU Privacy Guard) key for Docker from the official Docker website and saves it to `/etc/apt/keyrings/docker.asc`. This key will later be used to verify the authenticity of the Docker packages.

5. `sudo chmod a+r /etc/apt/keyrings/docker.asc`: adjusts the permissions of the `docker.asc` file, allowing all users to read it. This is necessary so that `apt` can use this key to verify Docker packages during installation.

6. .

	```BASH
	echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
	$(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | \
	sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	```

	> Be sure to replace `<Ubuntu package base>` with the Ubuntu package base on which your Linux Mint is based.

	- It creates a new repository entry for Docker in your system's APT configuration.

	- It dynamically gets the system's architecture (`dpkg --print-architecture`) and codename of the OS release (`$(. /etc/os-release && echo "$VERSION_CODENAME")`).

	- It writes this information into `/etc/apt/sources.list.d/docker.list`, specifying that `apt` should use the `docker.asc` key to verify packages from this repository.

7. `sudo apt update`: updates the package lists again to include the Docker repository you have just added, making Docker packages available for installation.

8. `sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`.

	- `docker-ce`: Docker Community Edition (CE), which is the main Docker software, allowing you to run containers.

	-`docker-ce-cli`: Docker Command-Line Interface (CLI). This is the command-line tool (docker) that lets you interact with the Docker engine, manage containers, images, volumes, etc.

	- `containerd.io`: containerd, a container runtime that is used by Docker to manage container lifecycle (starting, stopping, etc.). It is a core component of Docker's architecture.

	- `docker-buildx-plugin`: Buildx plugin, an extended Docker CLI for advanced builds. It provides features like multi-platform builds, creating build contexts, and more efficient cache management.

	- `docker-compose-plugin`: Compose plugin, which allows you to use Docker Compose. Docker Compose helps you define and manage multi-container Docker applications using a YAML configuration file (`docker-compose.yml`).

### Why are we installing Docker from the official repository (and not `docker.io` from Linux Mint repositories)?

- Up-to-date version: Docker CE from the official repository provides the latest stable version of Docker, ensuring you have access to all the newest features and improvements.

- Faster updates: the official repository receives more frequent updates, including security patches and bug fixes, ensuring better performance and safety.

- Feature set: Docker CE includes advanced features like BuildKit, docker-buildx, and improved Docker Compose integration, which might not be available in docker.io.

- Long-term support: Docker from the official repository is maintained directly by Docker, meaning it has better support and access to the latest tools, making it more reliable for modern projects.

In contrast, docker.io from Linux Mint repositories often provides an older version, with fewer updates and fewer features, which may be sufficient for basic container usage but lacks the enhancements provided by Docker CE.

## Microsoft Edge

1. `sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https curl`.

	- `dirmngr`: a tool that helps manage and retrieve GPG keys for secure software installations.

	- `ca-certificates`: provides trusted Certificate Authorities (CA) for SSL/TLS connections.

	- `software-properties-common`: adds support for managing repositories via add-apt-repository.

	- `apt-transport-https`: allows `apt` to download packages over HTTPS.

	- `curl`: a tool to transfer data from or to a server, commonly used for downloading files from the web.

2. `curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg > /dev/null`.

	This command downloads the Microsoft GPG key using `curl` and then:

	1. Converts the key from the ASCII format to binary using `gpg --dearmor`.

	2. Stores it in `/usr/share/keyrings/microsoft-edge.gpg` for later use in verifying the integrity of Microsoft Edge packages.

3. `echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/microsoft-edge.list`.

	This command adds the Microsoft Edge repository to your system:

	1. It specifies the repository URL, architecture (`amd64` for 64-bit systems), and uses the previously downloaded GPG key to sign the repository.

	2. The repository is saved in `/etc/apt/sources.list.d/microsoft-edge.list`, enabling apt to retrieve Microsoft Edge packages.

4. `sudo apt update`: updates the package lists again to include the Microsoft Edge repository you have just added, making Microsoft Edge packages available for installation.

5. `sudo apt install microsoft-edge-stable`: installs the stable version of Microsoft Edge from the official repository. The stable version is the recommended release for everyday use, providing a well-tested, reliable browsing experience.
