vim.g.nvim_tree_ignore = { '.git', '.cache' }
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1

require('nvim-tree').setup({
  hijack_cursor = true,
  auto_close = true,
  update_focused_file = {
    enable = true,
  },
  diagnostics = {
    enable = true,
  },
})

