#!/bin/bash

# install git
if ! which git; then
	sudo apt install git -y
fi

# create link to git config
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
