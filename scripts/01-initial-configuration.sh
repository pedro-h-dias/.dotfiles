#!/bin/bash

# cd into ~
cd

# enable colors in pacman and yay
sudo sed -i 's/#Color/Color/' /etc/pacman.conf

# update key-ring
sudo pacman --noconfirm -Syy archlinux-keyring

# update all packages
sudo pacman --noconfirm -Syyuu

# install base-devel packages
sudo pacman --noconfirm -S base-devel 

# install git
sudo pacman --noconfirm -S git

# create link to git config
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

# install yay
if ! which yay; then
	git clone https://aur.archlinux.org/yay.git
	pushd yay
	makepkg -si --needed --noconfirm
	popd
	rm -rf yay
fi

# install base packages
yay --needed --noconfirm -S \
	curl \
	cmake \
	diff-so-fancy \
	exa \
	fd \
	man-pages \
	tar \
	unrar \
	unzip \
	wget \
	veracrypt

# create link to .profile
ln -sf ~/.dotfiles/.profile ~/.profile
