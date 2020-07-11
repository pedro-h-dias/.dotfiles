#!/bin/bash

yay --needed --noconfirm -S \
	alacritty-git \
	tmux

# create link to alacritty configs
ln -sf ~/.dotfiles/alacritty.yml ~/.config/alacritty/

# create link to tmux configs
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

gsettings set org.gnome.desktop.default-applications.terminal \
	exec alacritty
