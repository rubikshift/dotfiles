require"lspconfig".ltex.setup{
    capabilities = require('coq').lsp_ensure_capabilities(vim.lsp.protocol.make_client_capabilities()),
    filetypes = { 'bib', 'markdown', 'org', 'plaintex', 'rst', 'rnoweb', 'tex', 'vimwiki', 'gitcommit' },
    settings = {
        ltex = {
            enabled = true,
            languageToolHttpServerUri = "http://localhost:8081/v2",
            additionalRules = {
                languageModel = "$HOME/langtool/ngram",
                word2vecModel = "$HOME/langtool/word2vec",
                -- Need to figure out how to disable rules, picky mode is to verbose for me
                -- enablePickyRules = true,
                motherTongue = "pl-PL",
            },
            completionEnabled = true,
            checkFrequency = "edit",
            disabledRules = {
                ["en-US"] = {
                }
            }
        }
    }
}
