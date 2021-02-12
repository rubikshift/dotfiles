filetype plugin on

source $HOME/.config/nvim/base.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/coc.vim

nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

" let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox
set termguicolors
" let ayucolor="dark"
" colorscheme ayu

nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR> 

"rainbow
let g:rainbow_active = 1

