filetype plugin on

source $HOME/.config/nvim/base.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/codi.vim

source $HOME/.config/nvim/lsp-config.vim
luafile $HOME/.config/nvim/compe-config.lua

luafile $HOME/.config/nvim/lsp/r-ls.lua
luafile $HOME/.config/nvim/lsp/python-ls.lua

nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

set termguicolors
colorscheme koehler
" hi Pmenu guibg=DarkGray

nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR> 

"rainbow
let g:rainbow_active = 1

