#!/bin/bash

yay --needed --noconfirm -S openssh

# generate new rsa keys
# TODO: automate different keynames based on branch
if [ ! -f ~/.ssh/github ]; then
        echo no github ssh-keys found, creating new ones
        mkdir -p ~/.ssh
        cd ~/.ssh
        ssh-keygen -t rsa -b 4096 -f "github" -C "phdias@protonmail.com"
        cd
fi

# create link to host config file
ln -sf ~/.dotfiles/ssh/config ~/.ssh/config

# TODO: configure ssh-agent
