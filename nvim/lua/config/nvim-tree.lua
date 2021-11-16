vim.g.nvim_tree_indent_markers = 1
require'nvim-tree'.setup({
    hijack_cursor = true,
    auto_close = true,
    update_focused_file = {
        enable = true,
    },
    diagnostics = {
        enable = true,
    },
    filters = {
        dotfiles = true,
        custom = {
            '.git',
            '.cache',
        }
    },
})

