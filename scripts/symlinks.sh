#!/bin/bash

# ssh files
ln -sf ~/.dotfiles/ssh/config 			          ~/.ssh/config
ln -sf ~/.dotfiles/systemd/ssh-agent.service 	~/.config/systemd/user/ssh-agent.service
ln -sf ~/.dotfiles/systemd/load-keys.service  ~/.config/systemd/user/load-keys.service

# Vim files
ln -sf ~/.dotfiles/vim/vimrc			            ~/.vimrc

# NeoVim files
ln -sf ~/.dotfiles/nvim/init.vim		          ~/.config/nvim/init.vim

# Bash files
ln -sf ~/.dotfiles/bash/bashrc	 		          ~/.bashrc
ln -sf ~/.dotfiles/bash/bash_profile		      ~/.bash_profile 
ln -sf ~/.dotfiles/bash/bash_logout 		      ~/.bash_logout
ln -sf ~/.dotfiles/bash/bash_aliases 		      ~/.bash_aliases

# Zsh files
ln -sf ~/.dotfiles/zsh/zshrc			~/.zshrc

# X files
ln -sf ~/.dotfiles/X11/.xinitrc   ~/.xinitrc
ln -sf ~/.dotfiles/X11/.xprofile  ~/.xprofile

# i3 files
ln -sf ~/.dotfiles/i3/config 			            ~/.i3/config

# Others
ln -sf ~/.dotfiles/.profile 			            ~/.profile
ln -sf ~/.dotfiles/alacritty.yml	            ~/.config/alacritty/
ln -sf ~/.dotfiles/gitconfig			            ~/.gitconfig

