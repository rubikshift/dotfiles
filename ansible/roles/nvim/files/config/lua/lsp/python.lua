require("lspconfig").pylsp.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	pylsp = {
		plugins = {
			pycodestyle = {
				maxLineLength = 100,
			},
		},
	},
})
