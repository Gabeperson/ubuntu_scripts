# Helix editor
sudo add-apt-repository ppa:maveonair/helix-editor -y
sudo apt update
sudo apt install helix
printf "theme = \"nightfox\"\n\n[editor]\nlsp.display-inlay-hints = true\ntrue-color = true" > ~/.config/helix/config.toml

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"
rustup component install rust-analyzer


source ~/.bashrc

# Go
# from https://github.com/kerolloz/go-installer
bash <(curl -sL https://git.io/go-installer)

# Utils
cargo install du-dust
cargo install just
cargo install rewrk --git https://github.com/ChillFish8/rewrk.git
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

echo "export PATH=\"~/.local/bin:$PATH\"" >> ~/.bashrc
source ~/.bashrc

echo "alias cd=z" >> ~/.bashrc
