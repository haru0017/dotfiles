" # General
set nocompatible
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
set visualbell
set belloff=all
set vb t_vb=
set smartindent
set showmatch
set laststatus=2

set wildmenu
set wildmode=longest,full

set cursorline
syntax enable
set hlsearch
set tabstop=4
set shiftwidth=4
set smartcase
set clipboard+=unnamed
set confirm

" Normal Mode:{{{

nnoremap j gj
nnoremap k gk

" Move between windows
nnoremap <Return><Return> <c-w><c-w>

" }}}


" Insert Mode:{{{

" Exit insert mode.
inoremap jj <ESC>

" }}}

