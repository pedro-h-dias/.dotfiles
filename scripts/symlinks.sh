#!/bin/bash

# ssh files
ln -sf ~/.dotfiles/ssh/config 			    ~/.ssh/config

# NeoVim files
ln -sf ~/.dotfiles/nvim/init.vim		    ~/.config/nvim/init.vim

# Bash files
ln -sf ~/.dotfiles/bash/bashrc	 		    ~/.bashrc
ln -sf ~/.dotfiles/bash/bash_history		~/.bash_history 
ln -sf ~/.dotfiles/bash/bash_profile		~/.bash_profile 
ln -sf ~/.dotfiles/bash/bash_logout 		~/.bash_logout
ln -sf ~/.dotfiles/bash/bash_aliases 		~/.bash_aliases

# i3 files
ln -sf ~/.dotfiles/i3/config 			      ~/.config/i3/config
ln -sf ~/.dotfiles/i3status/config 			~/.config/i3status/config

# Others
ln -sf ~/.dotfiles/.profile 			      ~/.profile
ln -sf ~/.dotfiles/alacritty.yml		    ~/.config/alacritty/
ln -sf ~/.dotfiles/gitconfig			      ~/.gitconfig
