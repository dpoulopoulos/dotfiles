# <i class="fa-solid fa-terminal"></i> Starship Shell

The next step of the terminal customization journey is to install a custom shell prompt. The default
shell prompt is quite boring and does not provide much information. A custom shell prompt can
provide you with a lot of useful information, such as the current directory, the git branch you are
on, the exit code of the last command, and much more.

[Starship](https://starship.rs/) is a minimal, blazing fast, and infinitely customizable prompt for
any shell. Starship brings the best-in-class speed and safety of Rust, to make your prompt as quick
and reliable as possible, while giving you the tools and options to fully customize it to your
liking.

## Install a Nerdfont
 
To experience Starship in its full glory, you first need to install a [Nerdfont](https://www.nerdfonts.com/)
for your terminal. For example, download the `CaskaydiaMono Nerd Font`, which is like Cascadia Code
but without any ligatures:

1. Download the `zip` package:

    ```console
    user:~$ cd /tmp && wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaMono.zip
    ```

1. Create a new directory:

    ```console
    user:/tmp$ mkdir cascadia-mono
    ```

1. Unzip the package into the `cascadia-mono` directory:

    ```console
    user:/tmp$ unzip CascadiaMono.zip -d cascadia-mono
    ```

1. Move the `cascadia-mono` directory to the right location:

    ```console
    user:/tmp$ mv cascadia-mono ~/.local/share/fonts
    ```

1. Run fc-cache to update the font cache:

    ```console
    user:/tmp$ fc-cache -v
    ```

1. Launch your terminal application and set the `CaskaydiaMono Nerd Font` as your default terminal
   font.

## Install Starship Shell

Now that you have set a Nerdfont as your default terminal font, installing Starship Shell is a piece
of cake. All you need to do is run the following command:

```console
user:/tmp$ curl -sS https://starship.rs/install.sh | sh
```

To activate it you should add the following line in your `.bashrc` file:

```console
echo 'eval "$(starship init bash)"' >> ~/.bashrc
```

```{note}
The dotfiles in this repository automate this step for you, so you can skip this it.
```

## Configure Starhsip Shell

To configure Starship Shell to your liking you need to create a `starship.toml` file inside the
`.config` directory:

```console
user:/tmp$ mkdir -p ~/.config && touch ~/.config/starship.toml
```

Then, you can follow the Starship Shell [docs](https://starship.rs/config/#prompt) to configure your
prompt. This repository offers a `starship.toml` file that can serve as a starting point.

```{note}
The dotfiles in this repository automate this step for you, so you can skip this it. You can view
the `starship.toml` file [here](https://github.com/dpoulopoulos/dotfiles/blob/main/.config/starship.toml).
```
