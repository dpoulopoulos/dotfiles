# uv

[`uv`](https://docs.astral.sh/`uv`/) is an extremely fast Python package and project manager, written in
Rust. `uv` offers:

- 🚀 A single tool to replace pip, pip-tools, pipx, poetry, pyenv, twine, virtualenv, and more.
- 🐍 An easy way to install and manage Python versions.
- 🗂️ Comprehensive project management, with a universal lockfile.
- 💾 Disk-space efficiency, with a global cache for dependency deduplication.
- 🖥️ Support for Linux, macOS, and Windows.

## Install uv

To install and enable `uv`, run the following commands:

1. Install `uv` via the official install script:

    ```console
    user:~$ curl -LsSf https://astral.sh/`uv`/install.sh | sh
    ```

1. Add the following line to `.bashrc` to enable it gloabally:

    ```console
    user:~$ echo '. "$HOME/.cargo/env"' >> ~/.bashrc
    ```
