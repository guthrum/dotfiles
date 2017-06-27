set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'tpope/vim-fugitive'

  Plugin 'octol/vim-cpp-enhanced-highlight' " C++ syntax highlighting
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on 

" C++ class scope highlighting
let g:cpp_class_scope_highlight = 1
" C++ library concepts
let g:cpp_concepts_highlight = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1


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
