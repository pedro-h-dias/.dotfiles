#!/bin/bash

if ! which alacritty; then
  yay --needed --noconfirm -S alacritty-git
fi

if ! which tmux; then
	yay --needed --noconfirm -S tmux-git
fi

# create link to alacritty configs
if [ ! -f ~/.config/alacritty/alacritty.yml ]; then
  mkdir -p ~/.config/alacritty
fi
ln -sf ~/.dotfiles/alacritty.toml ~/.config/alacritty/

# create link to tmux configs
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

gsettings set org.gnome.desktop.default-applications.terminal \
	exec alacritty
