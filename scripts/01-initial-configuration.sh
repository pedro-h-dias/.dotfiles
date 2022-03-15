#!/bin/bash


# cd into ~
cd

# enable colors in pacman and yay
sudo sed -i 's/#Color/Color/' /etc/pacman.conf

# update key-ring
sudo pacman -Syy archlinux-keyring

# update all packages
sudo pacman --noconfirm -Syyuu

# Install base-devel packages
sudo pacman -S base-devel

# install yay
if ! which yay; then
	git clone https://aur.archlinux.org/yay.git
	pushd yay
	makepkg -si --needed --noconfirm
	popd
	rm -rf yay
fi

# install programming languages
yay --needed --noconfirm -S \
	rust \
	nodejs

# install base packages
yay --needed --noconfirm -S \
	curl \
	cmake \
	diff-so-fancy \
	exa \
	fd \
	firefox \
	make \
	man-pages \
	pavucontrol \
	sudo \
	tar \
	unrar \
	unzip \
	wget \
	xclip \
	veracrypt

# install monitoring packages
yay --needed --noconfirm -S \
	htop \
	iotop

# create link to .profile
ln -sf ~/.dotfiles/.profile ~/.profile

# install rust and go
yay --needed --noconfirm -S go rustup
rustup default stable


# create alias to exa, fd and diff
alias ls='exa'
alias ll='exa -lh'
alias la='exa -lha'
alias find='fd'
alias diff='diff-so-fancy'
