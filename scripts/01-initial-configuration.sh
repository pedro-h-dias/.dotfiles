#!/bin/bash

# cd into ~
cd

# update all packages
sudo apt update && sudo apt upgrade -y
snap refresh 

# install essential tools
sudo apt install build-essential cmake pkg-config libfontconfig-dev -y

# install programming tools
sudo apt install curl -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -- -y
source "$HOME/.cargo/env"
sudo apt install nodejs npm -y

# clean packages
sudo apt autoremove -y
