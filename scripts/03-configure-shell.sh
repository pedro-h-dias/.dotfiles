#!/bin/bash

# install zsh
yay --needed --noconfirm -S \
	zsh \
	zsh-autosuggestions \
	zsh-completions \
	zsh-history-substring-search \
	zsh-syntax-highlighting

# install silver prompt
cargo install silver

# install nerd-font-completes
# TODO: find out how to install only a smaller patch
#
# this check is here because '--needed' isn't working 
# with AUR packages
if [ -n $(yay -Qi nerd-fonts-complete 2>&1 >/dev/null | cut -d "'" -f2) ]; then
  yay --noconfirm -R manjaro-ranger-settings nerd-fonts-terminus
  yay --needed --noconfirm -S nerd-fonts-complete
fi

# link zsh config files
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
