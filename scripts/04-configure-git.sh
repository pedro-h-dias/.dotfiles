#!/bin/bash

# create link to git config
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

# clone repositories
mkdir -p ~/ITA_Sec
git clone git@github.com:pedro-h-dias/ITA.git ~/ITA
git clone git@github.com:pedro-h-dias/wargames.git ~/ITA_Sec/wargames
git clone git@github.com:pedro-h-dias/hackthebox.git ~/ITA_Sec/hackthebox
git clone git@github.com:pedro-h-dias/ctf.git ~/ITA_Sec/ctf
git clone git@github.com:ita-sec/images.git ~/ITA_Sec/images
