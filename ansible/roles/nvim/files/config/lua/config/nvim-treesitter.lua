require("nvim-treesitter.configs").setup({
	ensure_installed = { "python", "dockerfile", "bash", "fish", "yaml", "markdown", "awk" },
	auto_install = true,
	prefer_git = true,
	highlight = {
		enable = true,
	},
	refactor = {
		highlight_current_scope = { enable = false },
		highlight_definitions = { enable = true },
		smart_rename = { enable = true },
		navigation = { enable = true },
	},
	additional_vim_regex_highlighting = false,
})
