" Lightline configs
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \	  'left': [['mode', 'paste'], 
      \	  	    ['gitbranch', 'readonly', 'filename', 'modified']],
      \   'right': [['percent', 'lineinfo']]
      \	},
      \ 'component_function': {
      \	  'gitbranch': 'LightlineGitBranch',
      \   'filename': "LightlineFileName",
      \ },
      \ }

function! LightlineGitBranch()
  if exists('*fugitive#head')
    let branch = fugitive#head(8)
    if branch !=# ''
      return ' '.branch
    endif
  endif
  return ''
endfunction

function! LightlineFileName() abort
  return winwidth(0) > 70 ? WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:t') : ''
endfunction
