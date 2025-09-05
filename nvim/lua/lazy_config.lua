local fn = vim.fn

require("lazy").setup({
	import = "plugins",
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
				"rplugin",
				"editorconfig",
				"matchparen",
				"matchit",
			},
		},
	},
	checker = { enabled = false },
})
