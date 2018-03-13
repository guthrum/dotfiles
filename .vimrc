set nocompatible              " be iMproved, required
filetype off                  " required

set background=dark 
set t_Co=256
syntax on
color dracula

set history=1000
set title
set tabpagemax=50
set encoding=utf-8
set dictionary=/usr/share/dict/words
set undofile
set undodir=~/.vim/tmp/undo

set backspace=2

set showcmd
set esckeys
set mouse=a
set mousehide

set number

set scrolloff=3
set sidescrolloff=3 

set wrap
set smartindent
set copyindent
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch

let g:mapleader=" "

noremap <s-k> <k>
inoremap <C-c> <esc>
"inoremap jk <esc>
""inoremap kj <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>


set foldmethod=manual
