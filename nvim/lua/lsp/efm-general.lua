require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    on_attach=require'completion'.on_attach,
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    -- capabilities=require('lsp/capabilities'),
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
