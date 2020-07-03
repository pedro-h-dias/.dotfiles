#!/bin/bash

# ssh files
ln -sf ~/.dotfiles/ssh/config 			~/.ssh/config
ln -sf ~/.dotfiles/systemd/ssh-agent.service 	~/.config/systemd/user/ssh-agent.service
ln -sf ~/.dotfiles/systemd/load-keys.service  	~/.config/systemd/user/load-keys.service

# NeoVim files
ln -sf ~/.dotfiles/nvim/init.vim		~/.config/nvim/init.vim

# Others
ln -sf ~/.dotfiles/.profile 			~/.profile
ln -sf ~/.dotfiles/alacritty.yml	        ~/.config/alacritty/
ln -sf ~/.dotfiles/gitconfig			~/.gitconfig

