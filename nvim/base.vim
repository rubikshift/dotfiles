set nocompatible
syntax enable
filetype plugin indent on

set clipboard=unnamed

set cursorline
set colorcolumn=80
hi ColorColumn ctermbg=darkgray
set number relativenumber

set smarttab
"set cindent
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab
" set list
set spell spelllang=en_us

inoremap jj <ESC>
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>

vnoremap < <gv
vnoremap > >gv

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
