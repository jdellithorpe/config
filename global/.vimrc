set expandtab
set shiftwidth=2
set shiftround
set softtabstop=2

set ruler
set number

set textwidth=80
set colorcolumn=81

set splitbelow
set splitright

set showmatch

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap <c-u> <esc>lviwUei
inoremap jk <esc>

nnoremap H 0
nnoremap L $
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

iabbrev @@ jde@cs.stanford.edu
iabbrev adn and
iabbrev teh the

filetype plugin indent on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

execute pathogen#infect()
