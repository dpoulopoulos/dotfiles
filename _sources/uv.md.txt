# <i class="fa-brands fa-python"></i> uv

Next, let's start installing the tools we need to build and run our Python applications. We'll start
with [uv](https://docs.astral.sh/`uv`/), an extremely fast Python package and project manager,
written in Rust. uv offers:

- 🚀 A single tool to replace pip, pip-tools, pipx, poetry, pyenv, twine, virtualenv, and more.
- 🐍 An easy way to install and manage Python versions.
- 🗂️ Comprehensive project management, with a universal lockfile.
- 💾 Disk-space efficiency, with a global cache for dependency deduplication.
- 🖥️ Support for Linux, macOS, and Windows.

## Install uv

To install and enable uv, run the following commands:

1. Install uv via the official install script:

    ```console
    user:~$ curl -LsSf https://astral.sh/`uv`/install.sh | sh
    ```

1. Add the following line to `.bashrc` to enable it gloabally:

    ```console
    user:~$ echo '. "$HOME/.cargo/env"' >> ~/.bashrc
    ```

    ```{note}
    The `.bashrc` file in this repository includes the line above, so you can skip this step if
    you're using it.
    ```

## Usage

To create a new virtual environment using uv, run the following command:

```console
user:~$ uv venv
```

If you want to give a specific name to the virtual environment, you can do so by running:

```console
user:~$ uv venv myenv
```

To use a specific Python version, you can specify it with the `--python` flag:

```console
user:~$ uv venv --python 3.12
```

To install a package, you can use the `uv pip install` command:

```console
user:~$ uv pip install mypackage
```

For more information on how to use uv and its features, you can check the [official documentation](https://docs.astral.sh/uv/).
