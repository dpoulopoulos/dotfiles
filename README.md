# Dotfiles

Welcome to my personal dotfiles repository! Here, you'll find my collection of configuration files
for various tools and applications that I use on a daily basis. These dotfiles are tailored to
streamline my development environment and enhance productivity across Unix-based systems.

## Overview

Dotfiles are used to customize your system's environment. This repository serves as a central hub
to store, manage, and share my configurations for applications such as the shell (bash), editors
(Vim/Neovim), and many others. Whether you're looking to adopt some of my configurations or just
curious about different ways to optimize your development environment, feel free to explore and
borrow whatever you find useful.

## Installation

> Warning: If you decide to use my dotfiles, please review the code and remove things you don’t
> want or need. Don’t blindly use my settings unless you know what that entails. Use at your own
> risk!

1. Install dependencies:

```
apt install stow keychain curl nodejs npm exuberant-ctags build-essential python3.11-venv zip
```

1. Install [Starship Shell](https://starship.rs/)

    a. Navigate to `/tmp`:

        ```
        cd /tmp
        ```

    b. Download and run the Starship Shell installation script:

        ```
        curl -sS https://starship.rs/install.sh | sh
        ```

1. Install [Neovim](https://neovim.io/):

    a. Navigate to `/opt`:

        ```
        cd /opt
        ```

    b. Download the Appimage:

        ```
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        ```

    c. Make it executable:

        ```
        chmod 754 nvim.appimage
        ```

    d. Extract the Appimage:

        ```
        ./nvim.appimage --appimage-extract
        ```

    e. Delete the Appimage file:

        ```
        rm nvim.appimage
        ```

    f. Rename the image folder to `nvim`:

        ```
        mv squashfs-root/ nvim
        ```

    g. Change owner and group:

        ```
        chown -R user:user nvim
        ```

    h. Create a symlink in `/usr/local/bin`:

        ```
        ln -s /opt/nvim/AppRun nvim
        ```

1. Configure Neovim:

    a. Install [NvChad](https://nvchad.com/):

        ```
        git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
        ```

    b. Remove the default `chadrc.lua` file:

        ```
        rm .config/nvim/lua/custom/chadrc.lua
        ```

1. Clone the dotfiles repository:

    ```
    git clone https://github.com/dpoulopoulos/dotfiles.git ~/dotfiles
    ```

1. Stow your dotfiles:

    ```
    stow -t ~ .
    ```

Follow the same procedure to link any other folder you need.
