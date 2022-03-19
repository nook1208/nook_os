# Setup Development Environment

### Install system requirements
1. [Install Docker](https://docs.docker.com/engine/install/ubuntu/)
1. Prepare the `Rust` toolchain. Most of it will be handled on first use through the
	1. Intall Rust
      ```bash
      curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

      source $HOME/.cargo/env
      ```
	2. Install Rust Toolchain
      ```bash
      cargo install cargo-binutils rustfilt
	  ```
