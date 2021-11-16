local fn = vim.fn

vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function(use)
        use {'wbthomason/packer.nvim', opt = true}

        use {
            'norcalli/nvim_utils',
            config = [[require('config.nvim_utils')]]
        }

        use 'neovim/nvim-lspconfig'

        use {
            'onsails/lspkind-nvim',
            config = [[require('lspkind').init({})]]
        }
        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-cmdline',
                'saadparwaiz1/cmp_luasnip',
                'L3MON4D3/LuaSnip',
            },
            config = [[require('config.nvim-cmp')]]
        }

        use {
            'RishabhRD/nvim-lsputils',
            requires = {'RishabhRD/popfix'}
        }

        use {
            'hoob3rt/lualine.nvim',
            require = {'SmiteshP/nvim-gps'},
            config = [[require('config.lualine')]]
        }

        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                {'nvim-lua/popup.nvim'},
                {'nvim-lua/plenary.nvim'}
            }
        }

        use {
            'lewis6991/gitsigns.nvim',
            config = [[require('gitsigns').setup()]],
            requires = {
                'nvim-lua/plenary.nvim'
            }
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            require = {'nvim-treesitter/nvim-treesitter-refactor'},
            run = ':TSUpdate',
            config = [[require('config.nvim-treesitter')]]
        }
        use {
            'code-biscuits/nvim-biscuits',
            require = 'nvim-treesitter/nvim-treesitter',
            config = [[require('config.nvim-biscuits')]]
        }

        use {
            'SmiteshP/nvim-gps',
            requires = 'nvim-treesitter/nvim-treesitter',
            config = [[require('nvim-gps').setup()]]
        }

        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons',
            config = [[require('config.nvim-tree')]]
        }

        use {
            'bluz71/vim-moonfly-colors',
            config = [[require('config.vim-moonfly-colors')]]
        }
        use {
            'norcalli/nvim-colorizer.lua',
            config = [[require('colorizer').setup()]]
        }

        use 'zivyangll/git-blame.vim'
        use 'tpope/vim-fugitive'

        use {
            'goolord/alpha-nvim',
            requires = { 'kyazdani42/nvim-web-devicons' },
            config = function ()
                require'alpha'.setup(require'alpha.themes.startify'.opts)
            end
        }
        use 'airblade/vim-rooter'

        use {
            'windwp/nvim-autopairs',
            config = [[require('nvim-autopairs').setup()]]
        }

        use {
            'numToStr/Comment.nvim',
            config = [[require('Comment').setup()]]
        }

        use 'tpope/vim-surround'
        use 'tpope/vim-repeat'
        use 'tpope/vim-sleuth'

        use {
            'lukas-reineke/indent-blankline.nvim',
            config = [[require('config.indent-blankline')]]
        }

        use {
            'ray-x/lsp_signature.nvim',
            config = [[require('config.lsp_signature')]]
        }
        use 'simrat39/symbols-outline.nvim'

        use {
            'vimwiki/vimwiki',
            config = [[require('config.vimwiki')]]
        }
        use 'lewis6991/impatient.nvim'

        -- use 'jalvesaq/Nvim-R'
        -- use 'metakirby5/codi.vim'

        use {
            'tami5/lspsaga.nvim',
            config = [[require('lspsaga').setup({})]]
        }

    end,

    config = {
        compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua',
        display = {
            open_fn = function()
              return require('packer.util').float({ border = 'single' })
            end
        }
    }
})
