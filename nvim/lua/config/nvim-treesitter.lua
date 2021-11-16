require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    highlight = {
        enable = true,
    },
    refactor = {
        highlight_current_scope = { enable = true },
        highlight_definitions = { enable = true },
        smart_rename = { enable = true },
        navigation = { enable = true },
    }
}
