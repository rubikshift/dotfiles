require'lspconfig'.texlab.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
-- capabilities = require('cmp_nvim_lsp').default_capabilities(),
-- capabilities = require('coq').lsp_ensure_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

