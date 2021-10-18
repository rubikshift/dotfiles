-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

require('impatient')
require('packer_compiled')

require('lsputils')
require('plugins')
require('settings').load_options()
require('keymap')

require('gitsigns').setup()
require('lualine').setup{
	options = {
		theme = 'moonfly'
	}
}

require('nvim-autopairs').setup()
require('nvimtree')

require('my-cmp-cfg')
require('lsp.python')
require('lsp.cpp')
-- require('lsp.r')
require('lsp.efm-general')
--require('lsp.lua')
--require('lsp.json-ls')

require('treesitter')

require('lspkind').init({})
require('lsp_signature').setup({
	-- bind=false,
	hint_enable=false,
	hi_parameter = "IncSearch",
})

require('vimwiki')
