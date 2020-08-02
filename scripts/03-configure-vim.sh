#!/bin/bash

if ! which nvim; then
  yay --needed --noconfirm -S neovim-git
fi

# link neovim config files
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# install dein at ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh ~/.cache/dein

# install nodejs for coc.nvim
yay --needed --noconfirm -S nodejs yarn

# for some reason, yarn compilation is failing with dein
cd ~/.cache/dein/repos/github.com/neoclide/coc.nvim
git clean -xfd
yarn install --frozen-lockfile

# install neovim plugins
nvim +"call dein#install()" +qa
nvim +"call dein#update()" +qa

# install rust language server
rustup component add rls rust-analysis rust-src

# install coc-rls plugin
nvim +":CocInstall coc-rls" +qa
