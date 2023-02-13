# update system apps
sudo apt update && sudo apt upgrade -y
sudo snap refresh

# update python
poetry self update
pyenv update

# update rust
rustup update

# update apps installed with cargo
cargo install alacritty exa procs bat