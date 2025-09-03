return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		-- CTRL + N toggles explorer
		{
			"<C-n>",
			"<cmd>NvimTreeToggle<CR>",
			noremap = true,
			silent = true,
			desc = "toggle file explorer",
		},
	},
	opts = {
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
	},
}
