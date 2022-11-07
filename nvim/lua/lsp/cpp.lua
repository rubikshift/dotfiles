require'lspconfig'.clangd.setup{
    capabilities = require('coq').lsp_ensure_capabilities(vim.lsp.protocol.make_client_capabilities()),
}
