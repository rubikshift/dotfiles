require("lspconfig").yamlls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	settings = {
		yaml = {
			format = {
				enable = true,
			},
			schemaStore = {
				enable = true,
			},
		},
	},
})
