#!/bin/bash

# install Vagrant
yay -S --noconfirm --needed vagrant

# install Kali VM
if command -v vagrant &> /dev/null
then
	vagrant box add kalilinux/rolling
fi

# launch Kali VM
if command -v vagrant &> /dev/null
then
	mkdir -p $HOME/Documents/vagrantfiles/kali
	cp $HOME/.dotfiles/scripts/VagrantfileKali ./Vagrantfile
	cd $HOME/Documents/vagrantfiles/kali;	vagrant up
	cd ~
fi

