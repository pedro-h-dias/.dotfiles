" Lightline configs
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \	  'left': [['mode', 'paste'], 
      \	  	    ['gitbranch', 'readonly', 'filename', 'modified']],
      \   'right': [['percent', 'lineinfo'],
      \		    ['cocstatus']]
      \	},
      \ 'component_function': {
      \	  'gitbranch': 'LightlineGitBranch',
      \   'cocstatus': 'LightlineDiagnostic',
      \   'filename': 'LightlineFileName',
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

function! LightlineDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})

  let errors = get(info, 'error', 0)
  let warnings = get(info, 'warning', 0)

  let status = ''
  if errors > 0
    let status .= '' . string(errors)

    if warnings > 0
      let status .= ' '
    endif
  endif

  if warnings > 0
    let status .= '' . string(warnings)
  endif

  if errors + warnings == 0
    return ''
  else
    return status
  endif
endfunction

function! LightlineFileName() abort
  return winwidth(0) > 70 ? WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:t') : ''
endfunction
