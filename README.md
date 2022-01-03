# dotfiles

Configuration files for various Ubuntu applications.

# Installation

To link the dotfiles you first need to install `stow`:

```
sudo apt install stow -y
```

Then, run the following command to link the `git` folder:

```
stow -t ~ git
```

Follow the same procedure to link any other folder you need.
