# GCC
sudo apt install gcc-multilib -y

# pkg-config
sudo apt install pkg-config -y

# libssl dev
sudo apt install libssl-dev -y

# fzf
sudo apt install fzf -y

# Helix editor
sudo add-apt-repository ppa:maveonair/helix-editor -y
sudo apt update
sudo apt install helix -y
printf "theme = \"nightfox\"\n\n[editor]\nlsp.display-inlay-hints = true\ntrue-color = true" > ~/.config/helix/config.toml

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
rustup component add rust-analyzer


. ~/.bashrc

# Go
# from https://github.com/kerolloz/go-installer
curl https://git.io/go-installer | bash

# Utils
cargo install du-dust
cargo install just
cargo install rewrk --git https://github.com/ChillFish8/rewrk.git
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

echo "export PATH=\"~/.local/bin:${PATH@Q}\"" >> ~/.bashrc
. ~/.bashrc

echo "alias cd=z" >> ~/.bashrc
echo "eval \"\$(zoxide init bash)\"" >> ~/.bashrc
