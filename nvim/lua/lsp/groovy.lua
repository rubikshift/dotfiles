local function on_attach(client, bufnr)
    -- Enable completion triggered by <C-X><C-O>
    -- See `:help omnifunc` and `:help ins-completion` for more information.
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Use LSP as the handler for formatexpr.
    -- See `:help formatexpr` for more information.
    vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")
end

local lsp = require'lspconfig'
lsp.groovyls.setup{
        cmd = { "java", "-jar", "/Users/michal/repos/groovy-language-server/build/libs/groovy-language-server-all.jar" },
        root_dir = lsp.util.root_pattern('src'),
        on_attach=on_attach,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
    -- capabilities = require('coq').lsp_ensure_capabilities(vim.lsp.protocol.make_client_capabilities()),
