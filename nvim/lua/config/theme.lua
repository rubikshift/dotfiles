require("github-theme").setup({
  options = {
    styles = {
      functions = "italic"
    },
    darken = {
      sidebars = {
        list = {"qf", "vista_kind", "terminal", "packer"},
      }
    }
  },
})

vim.cmd('colorscheme github_dark')
