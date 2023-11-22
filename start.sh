
#!/bin/bash

# Update system packages
sudo apt-get update

# Install Docker
# Visit https://www.docker.com/ for more details
sudo apt-get install docker.io

# Install docker-compose
# Visit https://github.com/docker/compose for more details
sudo apt-get install docker-compose

# Install Node.js v16 and npm
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install npm

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup default stable
rustup target add wasm32-unknown-unknown
cargo install cargo-generate --features vendored-openssl
cargo install cargo-run-script

# Install Terrain
npm install -g @terra-money/terrain

echo "Installation completed!"
