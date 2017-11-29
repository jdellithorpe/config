set expandtab
set shiftwidth=2
set softtabstop=2

set ruler
set number

set textwidth=80
set colorcolumn=81

" Open new split windows either below or to the right of current window
set splitbelow
set splitright

" Show matching open bracket on insertion of closing bracket
set showmatch

filetype plugin indent on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
