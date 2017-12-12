"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=/home/tim/.config/nvim/./repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tim/.config/nvim/.')
  call dein#begin('/home/tim/.config/nvim/.')

  " Let dein manage dein
  " Required:
  call dein#add('/home/tim/.config/nvim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
  
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-clang')

  call dein#add('octol/vim-cpp-enhanced-highlight')

  call dein#add('editorconfig/editorconfig-vim')


  call dein#add('dracula/vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif


"End dein Scripts-------------------------

" Deoplete setup.

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'
let g:deoplete#sources#clang#sort_algo = 'priority'

" C++ class scope highlighting
"let g:cpp_class_scope_highlight = 1
" " C++ library concepts
"let g:cpp_concepts_highlight = 1

set t_Co=256 
colorscheme dracula

hi Visual term=reverse cterm=reverse guibg=Grey

set history=1000
set title
set tabpagemax=50
set encoding=utf-8
set dictionary=/usr/share/dict/words
set undofile
set undodir=~/.vim/tmp/undo

set cursorline                      "Highlight the line the cursor is on
set colorcolumn=99                  "Highlight the character limit
set backspace=indent,eol,start      "Allow backspace in insert mode
set showcmd                         "Show incomplete cmds down the bottom
set gcr=a:blinkon0                  "Disable cursor blink
set visualbell 

set spelllang=en

set showcmd
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
"inoremap kj <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set foldmethod=manual
