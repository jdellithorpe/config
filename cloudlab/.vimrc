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

iabbrev @@ jde@cs.stanford.edu
iabbrev adn and
iabbrev teh the

filetype plugin indent on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

execute pathogen#infect()
