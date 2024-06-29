# GNU Stow

[GNU Stow](https://www.gnu.org/software/stow/) is a symlink farm manager which takes distinct
packages of software and/or data located in separate directories on the filesystem, and makes them
appear to be installed in the same place. Its the centerpiece of the dotfiles repository, the key
component that makes everything work.

## Install

To install `stow` on a Debian-based system run the following command:

```console
root:~# apt install stow
```

## Usage

You can use `stow` to create a symlink of a file to a target directory like this:

```console
user:~$ stow -t ~ file
```

The `-t` flag specifies the target directory (in this case the home directory) and `file` specifies
the file you want to mirror via a symlink.

Finally, you can `stow` all the files in a directory, like the ones in this repository, by simply
running:

```console
user:~$ stow .
```

This command will establish symbolic links for all files in the current directory
within the parent directory, maintaining the original directory's structure.

## Ignore Files and Directories

Using `stow` for bulk symlink creation presents a challenge: What about the files that you don't
want to `stow`, like the files in the `.git` directory? By default, `stow` ignores common files and
directories, like `.git`. You can view the whole list of the files and directories `stow` ignores by
default [here](https://www.gnu.org/software/stow/manual/html_node/Types-And-Syntax-Of-Ignore-Lists.html).

If you want to add your own files or directories to this list you should create a file with the name
`.stow-local-ignore`, which works just like a `.gitignore` file but for `stow`.
