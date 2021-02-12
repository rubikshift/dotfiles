"PLUGINS
call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

Plug 'zivyangll/git-blame.vim'

" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'

" Plug 'morhetz/gruvbox'
" Plug 'ayu-theme/ayu-vim'

Plug 'takac/vim-hardtime' "developing good habits

Plug 'mhinz/vim-startify'
Plug 'metakirby5/codi.vim'

call plug#end()

