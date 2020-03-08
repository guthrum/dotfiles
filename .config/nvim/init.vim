"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=/home/tim/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tim/.config/nvim/.')
  call dein#begin('/home/tim/.config/nvim/.')

  " Let dein manage dein
  " Required:
  call dein#add('/home/tim/.config/nvim/repos/github.com/Shougo/dein.vim')

  call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})
  call dein#add('jackguo380/vim-lsp-cxx-highlight')
  
  call dein#add('plytophogy/vim-virtualenv')
  call dein#add('airblade/vim-gitgutter')

  call dein#add('dracula/vim')
  call dein#add('agude/vim-eldar')
  call dein#add('arcticicestudio/nord-vim')

  call dein#add('vim-airline/vim-airline')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax on
let mapleader = "\<Space>"

"End dein Scripts-------------------------

let g:gitgutter_log=1


" CoC key bindings
"
nmap <leader>rn <Plug>(coc-rename)
" end CoC key bindings

" let g:nord_italic = 1
" let g:nord_italic_comments = 1

set t_Co=256 
set termguicolors
colorscheme eldar

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

set autoindent

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
noremap <C-c> <esc>
"inoremap jk <esc>
"inoremap kj <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set foldmethod=manual
