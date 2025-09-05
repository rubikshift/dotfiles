vim.lsp.config("yamlls", {
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
vim.lsp.enable("yamlls")
