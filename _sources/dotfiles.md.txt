# <i class="fa-solid fa-gear fa-spin"></i> Dotfiles

Dotfiles are used to customize your system’s environment. This repository serves as a central hub to
store, manage, and share my configurations for applications such as the shell (bash, zsh), editors
(Vim/Neovim), and many others.

Utilizing the dotfiles from this repository necessitates the installation of certain packages.
While it's possible to install the dotfiles without these packages, attempting to source your
`.bashrc` afterwards will result in multiple warnings. Therefore, I recommend the following
procedure:

1. Stow (i.e., create symlinks) the dotfiles in your home directory—look at the next section.
1. Source your `.bashrc` file.
1. Install the necessary packages to eliminate the warnings.

## Install the Dotfiles

To install the fotfiles from this repository just run the following commands:

1. Clone the repository and its submodules:

    ```console
    user:~$ git clone --recurse-submodules git@github.com:dpoulopoulos/dotfiles.git
    ```

1. Change to the repository directory:

    ```console
    user:~$ cd dotfiles
    ```

1. Stow the dotfiles in your home directory:

    ```console
    user:~$ stow -t ~ .
    ```

    This command will create symlinks in your home directory for all the dotfiles in this repository.
    The `-t` flag specifies the target directory where the symlinks will be created, and the `.` at
    the end of the command indicates that the current directory should be used as the source.

    Thus, it will create the same file structure in your home directory as in this repository,
    ingoring everything that is in the [`.stow-local-ignore`](https://github.com/dpoulopoulos/dotfiles/blob/main/.stow-local-ignore)
    file.

    ```{note}
    If you get an error saying that the `stow` command is missing, complete the [GNU Stow](stow)
    installation guide.
    ```
