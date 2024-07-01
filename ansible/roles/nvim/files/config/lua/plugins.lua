local fn = vim.fn

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require('lazy').setup({
    'neovim/nvim-lspconfig',
    {
        "projekt0n/github-nvim-theme",
        config = function()
            require('config.theme')
        end
    },
    {
        'onsails/lspkind-nvim',
        config = function()
            require('lspkind').init({})
        end
    },
    {
        'freddiehaddad/feline.nvim',
        opts = {},
    },
    -- use {
    --     'ms-jpq/coq_nvim',
    --     dependencies = {
    --         'ms-jpq/coq.artifacts',
    --         'ms-jpq/coq.thirdparty',
    --     },
    --     config = [[require('config.coq')]]
    -- }
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'lukas-reineke/cmp-under-comparator',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
        },
        config = function()
            require('config.nvim-cmp')
        end
    },
    {
        'RishabhRD/nvim-lsputils',
        dependencies = {'RishabhRD/popfix'},
        config = function()
            require('config.lsputils')
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
            }
        }
    },
    {
        'lewis6991/gitsigns.nvim',
        opts = {},
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },

    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {'nvim-treesitter/nvim-treesitter-refactor'},
        build = ':TSUpdate',
        config = function()
            require('config.nvim-treesitter')
        end
    },

    {
        'kyazdani42/nvim-tree.lua',
        dependencies = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('config.nvim-tree')
        end
    },

    {
        'norcalli/nvim-colorizer.lua',
        main='colorizer',
    },
    'zivyangll/git-blame.vim',
    -- use 'tpope/vim-fugitive'

    {
        'goolord/alpha-nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.opts)
        end
    },
    'airblade/vim-rooter',
    {
        'windwp/nvim-autopairs',
        opts = {},
    },
    'tpope/vim-surround',
    'tpope/vim-repeat',
    'tpope/vim-sleuth',
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        main='ibl',
        opts={}
    },
    {
        'ray-x/lsp_signature.nvim',
        config = function()
            require('config.lsp_signature')
        end
    },
    -- use 'jalvesaq/Nvim-R'
    {
        'jose-elias-alvarez/null-ls.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('config.null-ls')
        end
    },

    {
        'nkakouros-original/numbers.nvim',
        opts = {},
    },
    'vim-scripts/groovy.vim',
    {
        'folke/which-key.nvim',
        config = function()
            require('config.which-key')
        end
    },
    {
        'gorbit99/codewindow.nvim',
        config = function()
            require('config.codewindow')
        end
    },
    {
        'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
        config = function()
          require("lsp_lines").setup()
        end
    },
    {
        'simrat39/symbols-outline.nvim',
        opts = {},
    },
    {
      'stevearc/conform.nvim',
      opts = {
          formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            yaml = { "yq" }
          },
      },
    }
})
