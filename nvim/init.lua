-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

require('plugins')
require('settings')
require('keymap')

require('lualine').setup{
	options = {
		theme = 'auto'
	}
}

require('autopairs')
require('nvimtree')

require('lsp.python')
require('lsp.r')
require('lsp.efm-general')
--require('lsp.lua')
--require('lsp.json-ls')

require('compe-config')

--require('treesitter')
