return {
	"neovim/nvim-lspconfig",
	"onsails/lspkind.nvim",
	"zivyangll/git-blame.vim",
	-- "airblade/vim-rooter",
	-- "windwp/nvim-autopairs",
	-- "tpope/vim-surround",
	"tpope/vim-repeat",
	-- "tpope/vim-sleuth",
	"smartpde/neoscopes",
	{
		"norcalli/nvim-colorizer.lua",
		main = "colorizer",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		opts = {},
	},

	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	main = "ibl",
	-- 	opts = {},
	-- 	---@module "ibl"
	-- 	---@type ibl.config
	-- },
	-- 'vim-scripts/groovy.vim',
	-- use 'tpope/vim-fugitive'
}
