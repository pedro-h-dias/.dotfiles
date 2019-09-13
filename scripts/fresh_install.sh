#!/bin/bash

# cd into ~
cd

# enable colors in pacman and yay
sudo sed -i 's/#Color/Color/' /etc/pacman.conf

# update all packages
sudo pacman --noconfirm -Syu

# install go - dependency for yay
sudo pacman --noconfirm -Sy go

# install yay
if ! which yay; then
	git clone https://aur.archlinux.org/yay.git
	pushd yay
	makepkg -i --needed --noconfirm
	popd
	rm -fr yay
fi

yay --needed --noconfirm -S \
  xorg-server \
  xf86-input-mouse \
  xf86-input-keyboard \
  xf86-video-vesa \
  xorg-xinit \
  i3-gaps \
  i3status \
  i3lock \
  dmenu

# install all packages
yay --needed --noconfirm -S \
	alacritty-git \
	arc-gtk-theme \
	audacity \
	deluge \
	diff-so-fancy \
	docker \
	docker-compose \
	exa \
	fd \
	firefox \
	git \
	go \
	go-tools \
	google-chrome \
	htop \
	httpie \
	iotop \
	iptables \
	iproute2 \
	iputils \
	libgit2 \
	make \
	man-pages \
	neovim-git \
	net-tools \
	networkmanager \
	nmap \
	ntfs-3g \
	obs-studio \
	openssh \
	pavucontrol \
	polybar \
	qemu \
	ranger \
	rutsup \
	sudo \
	tar \
	unrar \
	unzip \
	veracrypt \
	virt-manager \
	vlc \
	wget \
	xclip \
	zsh \
	zsh-syntax-highlighting \
	zsh-you-should-use

# install hacking stuff
yay --needed --noconfirm -S \
	aircrack-ng \
	binwalk \
	crunch \
	#metasploit \
	wireshark

# install remaining applications
yay --needed --noconfim -S \
	minecraft-launcher \
	slack-desktop \
	spotify

# install dotfiles
git clone --recursive https://github.com/pedro-h-dias/.dotfiles || true
#~/.dotfiles/scripts/symlinks.sh
#ln -fs .dotfiles/.{gitconfig,vim{,rc},zshrc} .
#ln -fns ../.vim .config/nvim
#sudo ln -fs ~/.oh-my-zsh ~/.dotfiles .dotfiles/.{vim{,rc},zshrc} /root
#
## install neovim plugins
#nvim +PlugInstall +qa -E || true
#nvim +UpdateRemotePlugins +q

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
