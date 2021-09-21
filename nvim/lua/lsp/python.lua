 -- pip3 install -U jedi-language-server
require'lspconfig'.pyright.setup{
    on_attach=require'completion'.on_attach,
    capabilities=require('lsp/capabilities'),
}
