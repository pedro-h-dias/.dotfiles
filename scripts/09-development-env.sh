#!/bin/bash

# install VirtualBox
yay -S --noconfirm --needed virtualbox virtualbox-ext-oracle

# load VirtualBox modules
kernel=linux$(uname -r | sed 's/\([^.]*\).\([^.]*\).*/\1\2/')
yay -S --noconfirm --needed $kernel-virtualbox-host-modules
sudo modprobe vboxdrv 

# load modules for _bridged_ and _hostonly_ networks
sudo modprobe vboxnetadp vboxnetflt 

# install and enable docker
yay -S --noconfirm --needed docker
sudo systemctl enable --now docker

# manage docker as non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

# install Vagrant
yay -S --noconfirm --needed vagrant

# install Ansible
yay -S --noconfirm --needed ansible
	
# install Google Cloud Tools
yay -S --noconfirm --needed google-cloud-sdk

