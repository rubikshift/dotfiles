require'nvim-tree'.setup({
    renderer = {
        indent_markers = {
          enable = true,
        },
      },
    hijack_cursor = true,
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
