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

> This guide has been tested on a Debian 12 (Bookworm) machine.

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

1. Download the Appimage:

    ```console
    root:/opt# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    ```

1. Make it executable:

    ```console
    root:/opt# chmod 754 nvim.appimage
    ```

1. Extract the Appimage:

    ```console
    root:/opt# ./nvim.appimage --appimage-extract
    ```

1. Delete the Appimage file:

    ```console
    root:/opt# rm nvim.appimage
    ```

1. Rename the image folder to `nvim`:

    ```console
    root:/opt# mv squashfs-root/ nvim
    ```

1. Change owner and group:

    ```console
    root:/opt# chown -R user:user nvim
    ```

1. Navigate to `/usr/local/bin`:

    ```console
    root:/opt# cd /usr/local/bin
    ```

1. Create a symlink:

    ```console
    root:/usr/local/bin# ln -s /opt/nvim/AppRun nvim
    ```

## Configure Neovim with NvChad

We are using [NvChad](https://nvchad.com/) to enhance our Neovim installation. NvChad offers a
blazing fast Neovim config providing solid defaults and a beautiful UI. To install it run the
commands below. Choose `no` when it asks you to create an example custom configuration:

1. Change back to your user:

    ```console
    root:/usr/local/bin# exit
    user:~$
    ```

1. Install NvChad and run Neovim:

    ```console
    user:~$ git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
    ```

1. (optional) Remove the default `chadrc.lua` file if you want to use the custom NvChad
   configuration provided in this dotfiles repo:

    ```console
    user:~$ rm .config/nvim/lua/custom/chadrc.lua
    ```
