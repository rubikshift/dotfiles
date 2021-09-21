require'nvim-treesitter.configs'.setup {
  ignore_install = {"haskell", "kotlin", "fennel"}, -- ignore languages that generates errors on my setup
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
