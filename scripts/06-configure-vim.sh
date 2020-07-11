#!/bin/bash

if ! which nvim; then
  yay --needed --noconfirm -S neovim-git
fi

# link neovim config files
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# install dein at ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh ~/.cache/dein

# install neovim plugins
nvim +"call dein#install()" +qa
nvim +"call dein#update()" +qa
