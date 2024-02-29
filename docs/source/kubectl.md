# kubectl

kubectl (pronounced as "kube control") is a command-line tool for interacting with a Kubernetes
cluster. Kubernetes is an open-source platform designed to automate the deployment, scaling, and
management of containerized applications. kubectl provides the primary CLI interface to Kubernetes
and allows users to deploy applications, inspect and manage cluster resources, and view logs.

## Install kubectl

1. Download the latest release:

    ```console
    user:~$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    ```

1. Install `kubectl`:

    ```console
    user:~$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    ```

1. Verify:

    ```console
    user:~$ kubectl version --client
    ```
