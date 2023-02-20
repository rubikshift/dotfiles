local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.offsetEncoding = { "utf-16" }
require'lspconfig'.clangd.setup{
    capabilities = capabilities
-- capabilities = require('coq').lsp_ensure_capabilities(vim.lsp.protocol.make_client_capabilities()),
}
