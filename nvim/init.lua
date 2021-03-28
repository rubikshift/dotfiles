-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

require('plugins')
require('settings')
require('keymap')

require('gitsigns').setup()
require('lualine').setup{
	options = {
		theme = 'auto'
	}
}

require('nvim-autopairs').setup()
require('nvimtree')

require('lsp.python')
require('lsp.r')
require('lsp.efm-general')
--require('lsp.lua')
--require('lsp.json-ls')

require('compe-config')

-- require('treesitter')

require('saga')
require('lspkind').init({})
