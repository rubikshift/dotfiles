return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-refactor", "smartpde/tree-sitter-cpp-google" },
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"dockerfile",
				"fish",
				"go",
				"kotlin",
				"lua",
				"makrdown_inline",
				"markdown",
				"python",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			auto_install = false,
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
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	},
}
