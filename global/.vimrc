set expandtab
set shiftwidth=2
set shiftround
set softtabstop=2
set textwidth=80
set colorcolumn=81

set ruler
set number

set splitbelow
set splitright

set showmatch

set hlsearch

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

inoremap <c-u> <esc>lviwUei
inoremap jk <esc>

nnoremap H 0
nnoremap L $
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>r :vs<bar>:b#<cr>

iabbrev @@ jde@cs.stanford.edu
iabbrev adn and
iabbrev teh the
iabbrev taht that

set nocompatible
filetype plugin indent on
syntax on

" Open files with cursor on last position {{{
augroup goto_last_line
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END
" }}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

execute pathogen#infect()

set tags+=~/tags

augroup VimwikiSettings
  autocmd!
  autocmd FileType vimwiki set textwidth=99|set colorcolumn=100
augroup END
