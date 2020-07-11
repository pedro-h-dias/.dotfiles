#!/bin/bash

# install zsh
yay --needed --noconfirm -S \
	zsh \
	zsh-autosuggestions \
	zsh-completions \
	zsh-history-substring-search \
	zsh-syntax-highlighting

# install go powerline
go get -u github.com/justjanne/powerline-go

# link zsh config files
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
