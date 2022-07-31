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
### Trouble Shooting
#### Problem 1.
GNU MAKE version is order than 4.2:  
```bash
$ make qemu
Makefile:120: *** Invalid file operation: < target/aarch64-unknown-none-softfloat/release/kernel.d.  Stop.
```
#### Solution:
[Compile and Install GNU 4.2](https://askubuntu.com/questions/1079470/finding-ppas-getting-a-modern-gnu-make-on-18-04) :  
Compile from source. For that you need to get the source files and of course too stuff for compiling it.
```bash
wget http://ftp.gnu.org/gnu/make/make-4.2.tar.gz
sudo apt install build-essential
```
Now unpack the source tarball:
```bash
tar -xf make-4.2.tar.gz
```
Then you need to do a patch for making it work on Ubuntu:
```bash
wget https://raw.githubusercontent.com/osresearch/heads/make-4.2.1/patches/make-4.2.1.patch
patch < make-4.2.1.patch
```
When asked give the patch the right file path make-4.2/glob/glob.c. Afterwards you can create the build directory and traverse into it:

```bash
mkdir make-4.2/build
cd make-4.2/build
```

Now configure and make the compilation:

```bash
../configure prefix=/usr
make -j4
```
At this point you can install it by
```bash
make install
```
