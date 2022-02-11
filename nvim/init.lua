-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

require('impatient')

require('settings').load_options()
require('keymap')

require('packer_compiled')
require('plugins')

require('lsp.cmake')
require('lsp.cpp')
require('lsp.python')
require('lsp.r')
require('lsp.ltex-ls')
require('lsp.texlab')
