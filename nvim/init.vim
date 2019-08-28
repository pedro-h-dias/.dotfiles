source ~/.dotfiles/nvim/plugins.vim
source ~/.dotfiles/nvim/lightline.vim

filetype plugin indent on
syntax enable

set clipboard=unnamedplus

" Use deoplete.
" let g:deoplete#enable_at_startup = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Better behaviour from autocomplete popup
set completeopt=noinsert,menuone,noselect

" Colorscheme configs
let g:gruvbox_italic = 1
let g:gruvbox_gruvbox_plugin_hi_groups = 1
let g:gruvbox_filetype_hi_groups = 1
colorscheme gruvbox 

set background=dark 
set termguicolors

set laststatus=2
set noshowmode 

" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Indent new line the same as the preceding line
set autoindent

" Nerdtree configs
map <C-t> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }      

" GitGutter configs
let g:gitgutter_map_keys = 0

" Better glyphs
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'
let g:gitgutter_override_sign_column_highlight = 0
let g:indentLine_char = '▏'

" Update changes faster
set updatetime=100

" Relative line numbers
set number relativenumber	" Relative line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Configure undo history
set undofile
set undodir=$HOME/.vimundo
set undolevels=1000
set undoreload=10000
