#!/usr/bin/env bash

# ssh files
ln -sf ~/.dotfiles/ssh/config 			~/.ssh/config

# Vim files
ln -sf ~/.dotfiles/vim/vimrc 			~/.vimrc

# Bash files
ln -sf ~/.dotfiles/bash/bashrc	 		~/.bashrc
ln -sf ~/.dotfiles/bash/bash_history		~/.bash_history 
ln -sf ~/.dotfiles/bash/bash_profile		~/.bash_profile 
ln -sf ~/.dotfiles/bash/bash_logout 		~/.bash_logout
ln -sf ~/.dotfiles/bash/bash_aliases 		~/.bash_aliases

# i3 files
ln -sf ~/.dotfiles/i3/config 			~/.i3/config

# Others
ln -sf ~/.dotfiles/.profile 			~/.profile
