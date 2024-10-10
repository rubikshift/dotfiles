local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.offsetEncoding = { "utf-16" }
require("lspconfig").clangd.setup({
	capabilities = capabilities,
})
