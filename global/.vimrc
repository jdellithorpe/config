""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Global Settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

set tabstop=2
set shiftwidth=2
set expandtab

set ruler
set number

set splitbelow
set splitright

set showmatch

set hlsearch

filetype plugin indent on
syntax on

" Open files with cursor on last position
augroup GotoLastLine
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" Save and restore folds automatically
"augroup AutoSaveFolds
"  autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent loadview
"augroup END

" Shortcut for toggling paste mode
nnoremap <c-p> :set invpaste paste?<cr>
set pastetoggle=<c-p>
set showmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Global Key Mappings / Abbreviations
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround word under cursor in quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Capitalize word under cursor in insert mode
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Language Settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup CCPP
  autocmd!
  autocmd FileType c set textwidth=80|set colorcolumn=81
  autocmd FileType cpp set textwidth=80|set colorcolumn=81
augroup END

augroup Java
  autocmd!
  autocmd FileType java set textwidth=100|set colorcolumn=101
augroup END

augroup Python
  autocmd!
  autocmd FileType python set textwidth=100|set colorcolumn=101
augroup END

augroup Vimscript
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Install Plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Vimwiki Plugin Settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! VimwikiAddDiaryTemplateIfNew()
  if getline(1) == ""
    :0r ~/.vim/templates/diary.wiki
    :%s/DATE/\=substitute(system("date \"+\%a \%b \%d \%Y (\%j)\""), '\n', '', 'g')/g
  endif
endfunction

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
  autocmd FileType vimwiki nmap <silent> <leader>w<leader>w <Plug>VimwikiMakeDiaryNote<bar>:call VimwikiAddDiaryTemplateIfNew()<cr>
augroup END

let g:vimwiki_conceal_pre = 1

let g:vimwiki_list = [{'path': '~/vimwiki/stanford/'}, {'path': '~/vimwiki/ours/'}, {'path': '~/vimwiki/personal/'}]

"command DiaryEntry -1r ~/.vim/templates/diary.wiki|0r! date "+\%a \%b \%d \%Y (\%j)" 
