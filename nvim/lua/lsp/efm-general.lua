require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
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
