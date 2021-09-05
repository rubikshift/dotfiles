require'lspconfig'.r_language_server.setup{
    on_attach=require'completion'.on_attach,
    capabilities=require('lsp/capabilities'),
}
