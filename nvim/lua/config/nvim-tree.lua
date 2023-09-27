-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

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
    },
})
