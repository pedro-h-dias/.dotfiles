#!/bin/bash

# install alacritty
sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
if ! which alacritty; then
  cargo install alacritty
fi

# install tmux
if ! which tmux; then
  sudo apt install -y tmux
fi

# create link to alacritty configs
if [ ! -f ~/.config/alacritty/alacritty.yml ]; then
  mkdir -p ~/.config/alacritty
fi
ln -sf ~/.dotfiles/alacritty.yml ~/.config/alacritty/

# create link to tmux configs
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
