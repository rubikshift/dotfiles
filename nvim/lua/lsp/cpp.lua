
require'lspconfig'.clangd.setup{
    on_attach=require'completion'.on_attach,
    capabilities=require('lsp/capabilities')
}
