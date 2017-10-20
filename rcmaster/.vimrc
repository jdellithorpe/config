syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set ruler

execute pathogen#infect()

let delimitMate_expand_cr = 1

filetype plugin indent on

" nmap 2 :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

set path+=$PWD/**
"set autoindent
set formatoptions+=n

set shellcmdflag=-ic

" Uncomment the following to have Vim jump to the last position when                                     " reopening a file
"if has("autocmd")
""  au BufReadPost * if line("'\") > 0 && line("'\") <= line("$")
"      \| exe "normal! g'\" | endif
"endif
