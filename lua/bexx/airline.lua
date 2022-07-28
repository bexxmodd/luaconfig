vim.cmd([[ 
" Set airline theme
let g:airline_theme='tomorrow'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=0

" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid 
" accidentally overwriting its contents.

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
]])
