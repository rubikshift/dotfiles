vim.lsp.cofnig("pylsp", {
	pylsp = {
		plugins = {
			pycodestyle = {
				maxLineLength = 100,
			},
		},
	},
})
vim.lsp.enable("pylsp")
