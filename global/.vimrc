set expandtab
set shiftwidth=2
set shiftround
set softtabstop=2

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

" Setings for Vimwiki
augroup VimwikiSettings
  autocmd!
  autocmd FileType vimwiki set textwidth=99|set colorcolumn=100
  autocmd FileType vimwiki nmap <leader>we <Plug>VimwikiSplitLink
  autocmd FileType vimwiki nmap <leader>wq <Plug>VimwikiVSplitLink
  autocmd FileType vimwiki hi VimwikiHeader1 ctermfg=Blue
  autocmd FileType vimwiki hi VimwikiHeader2 ctermfg=Red
  autocmd FileType vimwiki hi VimwikiHeader3 ctermfg=Magenta
  autocmd FileType vimwiki hi VimwikiHeader4 ctermfg=Cyan
  autocmd FileType vimwiki hi VimwikiHeader5 ctermfg=Green
  autocmd FileType vimwiki hi VimwikiHeader6 ctermfg=Brown
augroup END

let g:vimwiki_list = [{'path': '~/vimwiki/stanford/'}, {'path': '~/vimwiki/ours/'}]

" Settings for C/C++
augroup CCPPSettings
  autocmd!
  autocmd FileType c set textwidth=80|set colorcolumn=81
  autocmd FileType cpp set textwidth=80|set colorcolumn=81
augroup END

" Settings for Java
augroup Java
  autocmd!
  autocmd FileType java set textwidth=80|set colorcolumn=81
augroup END

nnoremap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
