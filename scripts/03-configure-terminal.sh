#!/bin/bash

# TODO: setup windows terminal programmatically

# install tmux
if ! which tmux; then
	yay --needed --noconfirm -S tmux-git
fi

# link tmux config files
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

# install zsh
yay --needed --noconfirm -S zsh

# install oh-my-zsh
sh -c "$(wget -O- https://install.ohmyz.sh/)"

# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# link zsh config files
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
