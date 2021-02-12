set nocompatible
set number relativenumber
syntax enable
set colorcolumn=80
set cursorline
filetype plugin indent on
hi ColorColumn ctermbg=darkgray
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
