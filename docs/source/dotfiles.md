# Dotfiles

Dotfiles are used to customize your system’s environment. This repository serves as a central hub to
store, manage, and share my configurations for applications such as the shell (bash, zsh), editors
(Vim/Neovim), and many others.

Utilizing the dotfiles from this repository necessitates the installation of certain packages.
While it's possible to install the dotfiles without these packages, attempting to source your
`.bashrc` afterwards will result in multiple warnings. Therefore, it is advisable to follow all
other guides provided in this documentation before proceeding with the dotfiles installation.

## Install the Dotfiles

To install the fotfiles from this repository just run the following command:

```
user:~$ stow -t ~ .
```

If you get an error saying that the `stow` command is missing, complete the [GNU Stow](stow)
installation guide.
