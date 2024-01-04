#!/bin/bash

# install python dependencies
yay -S --noconfirm python-poetry pyenv

# install docker
yay -S --noconfirm docker

# manage docker as non-root user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
	
# install Google Cloud Tools
yay -S --noconfirm --needed google-cloud-cli
gcloud init
gcloud auth application-default login