## update and install some things we should probably have
apt-get update
apt-get install -y \
  gdb-multiarch \
  openocd \
  qemu-system-arm \
  curl \
  git \
  gcc \
  pkg-config \
  libssl-dev

## Install rustup and common components
curl https://sh.rustup.rs -sSf | sh -s -- -y 
source "$HOME/.cargo/env"
rustup component add rustfmt
rustup component add clippy
cargo install cargo-binutils
cargo install cargo-generate
rustup component add llvm-tools-preview
rustup target add thumbv8m.main-none-eabi
