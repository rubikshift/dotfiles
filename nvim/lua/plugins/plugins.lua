return {
	"neovim/nvim-lspconfig",
	"onsails/lspkind.nvim",
	"zivyangll/git-blame.vim",
	"tpope/vim-repeat",
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
	{
		"chrisgrieser/nvim-recorder",
		dependencies = "rcarriga/nvim-notify", -- optional
		opts = {}, -- required even with default settings, since it calls `setup()`
	},
	"nvim-tree/nvim-web-devicons",

	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	main = "ibl",
	-- 	opts = {},
	-- 	---@module "ibl"
	-- 	---@type ibl.config
	-- },
	-- "tpope/vim-sleuth",
	-- "airblade/vim-rooter",
	-- "windwp/nvim-autopairs",
	-- "tpope/vim-surround",
	-- 'vim-scripts/groovy.vim',
	-- 'tpope/vim-fugitive'
}
