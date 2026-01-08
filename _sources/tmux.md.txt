# <i class="fa-solid fa-window-maximize"></i> tmux

Next, let's make the terminal more powerful with tmux. tmux is a command-line tool that allows users
to create and manage multiple terminal sessions within a single window. It enables the detachment of
sessions to run in the background and reattachment to them later, making it invaluable for remote
work and long-running processes. Sessions are persistent, offering seamless work continuation even
after disconnection.

## Install tmux

To install `tmux` run the following command on any Debian-based system:

```console
user:~$ sudo install tmux
```

## Configure tmux

To configure tmux, create a configuration file in your home directory:

```console
user:~$ touch ~/.tmux.conf
```

```{note}
The configuration file is optional, but it allows you to customize tmux to your liking. This
repository provides a sample configuration file that you can use.
```
