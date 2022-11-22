#!/bin/bash

# cd into ~
cd

# update all packages
sudo apt update && sudo apt upgrade -y
snap refresh 

# install essential tools
sudo apt install build-essential -y

# clean packages
sudo apt autoremove -y