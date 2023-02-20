require'lspconfig'.pylsp.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    pylsp = {
        plugins = {
            pycodestyle ={
                maxLineLength = 100
            }
        }
    }
}
-- capabilities = require('cmp_nvim_lsp').default_capabilities(),
-- capabilities = require('coq').lsp_ensure_capabilities(vim.lsp.protocol.make_client_capabilities()),
