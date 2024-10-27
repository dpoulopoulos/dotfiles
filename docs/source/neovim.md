# Neovim

[Neovim](https://neovim.io/) is a Vim-based text editor, focusing on usability and extensibility.
It enhances [Vim](https://www.vim.org/) by adding asynchronous processing, a powerful plugin
architecture, and a robust API for better integration with modern development tools. Developed with
community input, Neovim aims to modernize Vim's user experience without sacrificing its core
efficiency and flexibility, making it a favored choice for developers seeking a versatile text
editor.

## Install Dependencies

To install and configure Neovim you need the following packages:

```console
user:~$ sudo apt install curl nodejs npm exuberant-ctags build-essential python3.11-venv zip
```

> This guide has been tested on a Debian 12 (Bookworm), Ubuntu 22.04 (Jammy Jellyfish), and macOS
> Sequoia machines.

## Install Neovim

To install Neovim follow the procedure below:

1. Change to root user:

    ```console
    user:~$ sudo su -
    root:~#
    ```

1. Navigate to `/opt`. This is the location were we will install the Neovim Appimage:

    ```console
    root:~# cd /opt
    ```

1. Download the [latest release](https://github.com/neovim/neovim/releases/). For example, we're
   using the `0.10.2` release here:

    ```console
    root:/opt# wget https://github.com/neovim/neovim/releases/download/v0.10.2/nvim-linux64.tar.gz
    ```

1. Untar the package you downloaded:

    ```console
    root:/opt# tar xzf nvim-linux64.tar.gz && rm nvim-linux64.tar.gz
    ```

1. Press `ctrl + D` to return to your user.

1. Add `nvim` binary to PATH:

    ```console
    user:~$ echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
    ```

## Configure Neovim with NvChad

We are using [NvChad](https://nvchad.com/) to enhance our Neovim installation. NvChad offers a
blazing fast Neovim config providing solid defaults and a beautiful UI. To install it run the
command below:

```console
user:~$ git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
```

> This repository offers a ready Neovim configuration in `.config/nvim`. If you want to use it
> first run `git submodule update --init --recursive` to fetch the `nvim` submodule and then
> move or stow this directory in `~/.config`.
