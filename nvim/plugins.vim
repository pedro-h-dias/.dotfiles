set runtimepath+=/home/locutor/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/locutor/.local/share/nvim/dein')
  call dein#begin('/home/locutor/.local/share/nvim/dein')

  call dein#add('/home/locutor/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('morhetz/gruvbox')
  call dein#add('shinchu/lightline-gruvbox.vim')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('morhetz/gruvbox')
  call dein#add('itchyny/lightline.vim') 
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('rust-lang/rust.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tpope/vim-surround')
  call dein#add('Valloric/YouCompleteMe')
  call dein#add('tpope/vim-fugitive')
  call dein#add('ryanoasis/vim-devicons')

  call dein#end()
  call dein#save_state()
endif
