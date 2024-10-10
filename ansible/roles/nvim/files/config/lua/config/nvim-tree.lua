require("nvim-tree").setup({
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
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
