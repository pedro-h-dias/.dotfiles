#!/bin/bash

# cd into ~
cd

# enable colors in pacman and yay
sudo sed -i 's/#Color/Color/' /etc/pacman.conf

# update all packages
sudo pacman --noconfirm -Syu

# install yay
if ! which yay; then
	git clone https://aur.archlinux.org/yay.git
	pushd yay
	makepkg -i --needed --noconfirm
	popd
	rm -rf yay
fi

# install appearance stuff
yay --needed --noconfirm -S \
	arc-gtk-theme \
  arc-icon-theme \
  gtk-chtheme \
  lxappearance \
	polybar 


# install base packages
yay --needed --noconfirm -S \
	alacritty-git \
	diff-so-fancy \
	docker \
	docker-compose \
	exa \
	fd \
	git \
	go \
	go-tools \
	htop \
	httpie \
	iotop \
	libgit2 \
	make \
	man-pages \
	neovim-git \
	ntfs-3g \
	openssh \
	pavucontrol \
	qemu \
	ranger \
	rutsup \
	sudo \
	tar \
	unrar \
	unzip \
	veracrypt \
	virt-manager \
	wget \
	xclip 

# install networking stuff
yay --needed --noconfirm -S \
	iptables \
	iproute2 \
	iputils \
	net-tools \
	networkmanager \
	nmap 

# install hacking stuff
yay --needed --noconfirm -S \
	aircrack-ng \
	binwalk \
	crunch \
  hashcat \
	#metasploit \
	wireshark

# install extra applications
yay --needed --noconfirm -S \
	audacity \
	deluge \
	firefox \
	google-chrome \
	obs-studio \
	vlc 

# install remaining applications
yay --needed --noconfim -S \
	minecraft-launcher \
	slack-desktop \
	spotify

# TODO: use spotify daemon instead, and a cli

# install dotfiles
git clone --recursive https://github.com/pedro-h-dias/.dotfiles || true
~/.dotfiles/scripts/symlinks.sh

# install neovim plugins
nvim +"call dein#install()" +qa
nvim +"call dein#update()" +qa

# install zsh stuff
yay --needed --noconfirm -S \
	zsh \
	zsh-syntax-highlighting \
	zsh-you-should-use

# change the shell to zsh
sudo chsh -s /usr/bin/zsh
sudo chsh -s /usr/bin/zsh "$USER"

# Install rust
# curl https://sh.rustup.rs -sSf | sh
# source $HOME/.cargo/env

# configure rust
# - install nightly
# - install clippy

# configure ssh-agent

####### INSTALL SSH-AGENT
## install bing-background
#go get github.com/reujab/bing-background
#mkdir -p .config/autostart
#cat > .config/autostart/bing-background.desktop << EOF
#[Desktop Entry]
#Type=Application
#Name=Bing Background
#Exec=go/bin/bing-background
#EOF

## enable vertical and horizontal edge scroll
#sudo tee /etc/X11/xorg.conf.d/00-synaptics.conf > /dev/null << EOF
#Section "InputClass"
#	Identifier "synaptics"
#	Driver "synaptics"
#	MatchIsTouchpad "on"
#	Option "TapButton1" "1"
#	Option "VertEdgeScroll" "on"
#	Option "HorizEdgeScroll" "on"
#EndSection
#EOF
