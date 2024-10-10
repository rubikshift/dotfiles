local lsp = require("lspconfig")
require("null-ls").setup({
	sources = {
		-- require("null-ls").builtins.formatting.stylua,
		-- require("null-ls").builtins.diagnostics.eslint,
		require("null-ls").builtins.completion.spell,
		require("null-ls").builtins.formatting.npm_groovy_lint,
	},
	root_dir = lsp.util.root_pattern("src"),
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
