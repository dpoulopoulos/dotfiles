# <i class="fa-brands fa-github"></i> Copilot in the CLI

Next, let's get a little help using AI. For this, we will install the [GitHub CLI](https://cli.github.com/)
(`gh`) and the Copilot in the CLI extension.

Copilot in the CLI allows users to access the power of GitHub Copilot to get command suggestions and
explanations without leaving the terminal.

## Install GitHub CLI (gh)

To install the GitHub CLI (gh) follow the steps below:

1. Add the official Debian and RPM repositories:

    ```console
    user:~$ (type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
    ```

1. Update and install:

    ```console
    user:~$ sudo apt update && sudo apt install gh
    ```

1. Authenticate:

    ```console
    user:~$ gh auth login
    ```

    Follow the instructions to authenticate with GitHub.

## Install Copilot in the CLI

To install the Copilot in the CLI extension, run the following command:

```console
user:~$ gh extension install github/gh-copilot
```
