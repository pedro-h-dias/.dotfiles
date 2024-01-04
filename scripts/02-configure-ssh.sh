#!/bin/bash

yay --needed --noconfirm -S openssh

# generate new rsa keys
if [ ! -f ~/.ssh/github ]; then
        echo no github ssh-keys found, creating new ones
        mkdir -p ~/.ssh
        cd ~/.ssh
        ssh-keygen -t ed25519 -f "github" -C "pdcmpa@gmail.com"
        cd
fi

# create link to host config file
ln -sf ~/.dotfiles/ssh/config ~/.ssh/config

# configure ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github