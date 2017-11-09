set expandtab
set shiftwidth=2
set softtabstop=2

set ruler
set number

set textwidth=80
set colorcolumn=81

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
