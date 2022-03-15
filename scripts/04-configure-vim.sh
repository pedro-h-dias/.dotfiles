#!/bin/bash

if ! which nvim; then
  yay --needed --noconfirm -S neovim-git
fi

# link neovim config files
mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# install dein at ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh ~/.cache/dein

# install nodejs for coc.nvim
yay --needed --noconfirm -S nodejs yarn

# install neovim plugins
nvim +"call dein#install()" +qa

# for some reason, yarn compilation is failing with dein
cd ~/.cache/dein/repos/github.com/neoclide/coc.nvim
git clean -xfd
yarn install --frozen-lockfile

nvim +"call dein#update()" +qa

# install rust language server
rustup component add rls rust-analysis rust-src

# install coc-rls plugin
nvim +":CocInstall coc-rls" +qa

# install python language server
nvim +":CocInstall coc-python" +qa
ln -sf ~/.dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

# python environment setup
yay --needed --noconfirm -S python-pip
pip install mypy
