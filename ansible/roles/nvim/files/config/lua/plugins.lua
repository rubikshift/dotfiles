local fn = vim.fn

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
	"neovim/nvim-lspconfig",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"onsails/lspkind-nvim",
		config = function()
			require("lspkind").init({})
		end,
	},
	{
		"freddiehaddad/feline.nvim",
		opts = {},
		dependencies = {
			"catppuccin/nvim",
		},
		config = function(_, opts)
			local ctp_feline = require("catppuccin.groups.integrations.feline")
			ctp_feline.setup()
			require("feline").setup({
				components = ctp_feline.get(),
			})
			-- require('feline').winbar.setup()       -- to use winbar
			-- require('feline').statuscolumn.setup() -- to use statuscolumn
		end,
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"lukas-reineke/cmp-under-comparator",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	{
		"RishabhRD/nvim-lsputils",
		dependencies = { "RishabhRD/popfix" },
		config = function()
			require("config.lsputils")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
			},
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-refactor" },
		build = ":TSUpdate",
		config = function()
			require("config.nvim-treesitter")
		end,
	},

	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("config.nvim-tree")
		end,
	},

	{
		"norcalli/nvim-colorizer.lua",
		main = "colorizer",
	},
	"zivyangll/git-blame.vim",
	-- use 'tpope/vim-fugitive'

	{
		"goolord/alpha-nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").opts)
		end,
	},
	"airblade/vim-rooter",
	{
		"windwp/nvim-autopairs",
		opts = {},
	},
	"tpope/vim-surround",
	"tpope/vim-repeat",
	"tpope/vim-sleuth",
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {
			bind = true,
			handler_opts = {
				border = "rounded",
			},
		},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},

	{
		"nkakouros-original/numbers.nvim",
		opts = {},
	},
	-- 'vim-scripts/groovy.vim',
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"gorbit99/codewindow.nvim",
		config = function()
			local codewindow = require("codewindow")
			codewindow.setup()
			codewindow.apply_default_keybinds()
		end,
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	},
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				yaml = { "yq" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
})
