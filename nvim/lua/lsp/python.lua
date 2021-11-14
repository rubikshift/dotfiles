 -- pip3 install -U jedi-language-server
require'lspconfig'.pyright.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}
