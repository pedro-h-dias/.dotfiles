#!/bin/bash

# install alacritty
sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
if ! which alacritty; then
  cargo install alacritty
fi

# create link to alacritty configs
if [ ! -f ~/.config/alacritty/alacritty.yml ]; then
  mkdir -p ~/.config/alacritty
fi
ln -sf ~/.dotfiles/alacritty.toml ~/.config/alacritty/

# set alacritty as default terminal
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $HOME/.cargo/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator

# create desktop entry for alacritty
git clone ttps://github.com/alacritty/alacritty.git
pushd alacritty
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
popd
rm -rf alacritty

# install tmux
if ! which tmux; then
  sudo apt install -y tmux
fi

# create link to tmux configs
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
