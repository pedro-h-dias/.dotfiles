source ~/.dotfiles/nvim/plugins.vim
source ~/.dotfiles/nvim/lightline.vim

filetype plugin indent on
syntax enable

set clipboard=unnamedplus

" Colorscheme configs
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard' 
let g:gruvbox_gruvbox_plugin_hi_groups = 1
let g:gruvbox_filetype_hi_groups = 1
colorscheme gruvbox 

set background=dark 
set termguicolors

set laststatus=2
set noshowmode

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

" Better behaviour from autocomplete popup
set completeopt=noinsert,menuone,noselect

" Yaml configs
" foldmethod=indent
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml 
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Disable SQL autocomplete
let g:omni_sql_no_default_maps = 1
" Sql configs
au! BufNewFile,BufReadPost *.sql set filetype=sql 
autocmd FileType sql setlocal ts=2 sts=2 sw=2 expandtab

" Markdown configs
au! BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown setlocal ts=2 sts=2 sw=2 expandtab

" Relative line numbers
:set number relativenumber	" Relative line numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Rust autocomplete
let g:ycm_rust_src_path="/home/locutor/.src/rust-master/src/"

" Rust configs
" let g:rust_fold = 1
let g:rustfmt_autosave = 1
