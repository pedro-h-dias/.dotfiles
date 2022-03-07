set runtimepath+=/home/locutor/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/locutor/.cache/dein')
  call dein#begin('/home/locutor/.cache/dein')

  call dein#add('/home/locutor/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('neoclide/coc.nvim', {
        \ 'merged':0, 
        \ 'build': 'yarn install --frozen-lockfile',
        \ 'on_ft': ['rust', 'python'],
	\ 'hook_source': 'source ~/.dotfiles/nvim/coc.vim'}) 
  call dein#add('Shougo/deoplete.nvim')	" Async completion
  call dein#add('sheerun/vim-polyglot.git') 
  call dein#add('morhetz/gruvbox') " Color scheme
  call dein#add('shinchu/lightline-gruvbox.vim') " Lightline
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('itchyny/lightline.vim') 
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('rust-lang/rust.vim', { 'on_ft': 'rust',
        \ 'hook_source': 'let g:rustfmt_autosave = 1'}) " Rust environment
  call dein#add('airblade/vim-gitgutter')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('ryanoasis/vim-devicons') 
  call dein#add('tell-k/vim-autopep8')
  call dein#add('pprovost/vim-ps1')
  call dein#add('xuhdev/vim-latex-live-preview', { 'for': 'text' })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
