return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/popup.nvim",
			"nvim-lua/plenary.nvim",
			"smartpde/telescope-recent-files",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
			},
		},
		keys = {
			-- CTRL+P find files like in VSCode
			{ "<C-p>", "<cmd>Telescope find_files<cr>", noremap = true, desc = "search file" },
			-- CTRL+F to 'find' things in the files
			{ "<C-f>", "<cmd>Telescope live_grep<cr>", noremap = true, desc = "find in files" },
			{ "<leader>b", "<cmd>Telescope buffers<cr>", noremap = true, desc = "buffers" },
		},
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						path_display = { "smart" },
					},
				},
				defaults = {
					layout_strategy = "vertical",
				},
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					},
					recent_files = {
						stat_files = false,
					},
				},
			})
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("recent_files")
			require("telescope").load_extension("notify")
		end,
	},
}
