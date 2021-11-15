-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

require('impatient')
require('packer_compiled')

require('plugins')

require('settings').load_options()
require('keymap')


require('lsp.python')
require('lsp.cpp')
require('lsp.r')
require('lsp.efm-general')
require('lsp.cmake')



