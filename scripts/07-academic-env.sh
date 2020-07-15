#!/bin/bash

yay -Sy

# install latex
yay -S --noconfirm --needed texlive-most 

# TODO: install latex plugins for vim

# install dependencies for MATLAB
yay -S --noconfirm --needed libselinux

# install VirtualBox
yay -S --noconfirm --needed virtualbox virtualbox-ext-oracle

# load VirtualBox modules
kernel=linux$(uname -r | sed 's/\([^.]*\).\([^.]*\).*/\1\2/')
yay -S --noconfirm --needed $kernel-virtualbox-host-modules
sudo modprobe vboxdrv 

# load modules for _bridged_ or _hostonly_ networks
#sudo modprobe vboxnetadp vboxnetflt 

# TODO: find a way to automate kali machine
	
