#!/bin/bash

# install ssh
if ! dpkg -s openssh-client >/dev/null 2>&1; then
    sudo apt install openssh-client -y
fi

# generate new rsa keys
if [ ! -f ~/.ssh/github ]; then
        echo no github ssh-keys found, creating new ones
        mkdir -p ~/.ssh
        cd ~/.ssh
        ssh-keygen -t ed25519 -f "github" -C "phdias@protonmail.com"
        cd
fi

# create link to host config file
ln -sf ~/.dotfiles/ssh/config ~/.ssh/config

# add ssh-key to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github
