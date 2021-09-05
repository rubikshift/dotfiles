require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    on_attach=require'completion'.on_attach,
    capabilities=require('lsp/capabilities'),
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=100",
                    formatStdin = true
                }
            }
        }
    }
}
