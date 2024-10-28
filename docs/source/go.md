# <i class="fa-brands fa-golang fa-lg"></i> Golang

Go, also known as Golang, is an open-source programming language developed by Google. It is designed
for simplicity, efficiency, and reliability, making it ideal for building scalable and
high-performance applications. Go's syntax is clean and easy to read, and it comes with a powerful
standard library. Key features of Go include strong concurrency support, garbage collection, and a
robust type system.

Go is widely used in cloud services, distributed systems, and other performance-critical
applications. Its growing ecosystem and active community make it a popular choice for modern
software development.

## Install Go

To install Go on your system, follow the instructions below:

1. Download the latest version of Go from the [official website](https://go.dev/doc/install):

    ```bash
    user:~$ wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
    ```

1. Untar and install Go under `/usr/local`:

    ```bash
    user:~$ sudo tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
    ```

1. Add `/usr/local/go/bin` to the PATH environment variable:

    ```bash
    user:~$ echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    user:~$ . ~/.bashrc
    ```

    ```{note}
    The `.bashrc` file in this repository automates this step for you, so you can skip it.
    ```

## Verify

Verify the installation by checking the Go version:

```bash
user:~$ go version
go version go1.23.2 linux/amd64
```
