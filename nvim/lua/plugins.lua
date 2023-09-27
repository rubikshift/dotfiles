local fn = vim.fn

vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function(use)
        use {'wbthomason/packer.nvim', opt = true}

        use 'neovim/nvim-lspconfig'

        use {
            "projekt0n/github-nvim-theme",
            config = [[require('config.theme')]]
        }

        use {
            'onsails/lspkind-nvim',
            config = [[require('lspkind').init({})]]
        }

        use {
            'freddiehaddad/feline.nvim',
            config = [[require('feline').setup()]]
        }

        -- use {
        --     'ms-jpq/coq_nvim',
        --     requires = {
        --         'ms-jpq/coq.artifacts',
        --         'ms-jpq/coq.thirdparty',
        --     },
        --     config = [[require('config.coq')]]
        -- }
        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-cmdline',
                'lukas-reineke/cmp-under-comparator',
                'saadparwaiz1/cmp_luasnip',
                'L3MON4D3/LuaSnip',
            },
            config = [[require('config.nvim-cmp')]]
        }

        use {
            'RishabhRD/nvim-lsputils',
            requires = {'RishabhRD/popfix'},
            config = [[require('config.lsputils')]]
        }

        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                {'nvim-lua/popup.nvim'},
                {'nvim-lua/plenary.nvim'},
                {
                    'nvim-telescope/telescope-fzf-native.nvim',
                    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
                }
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
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons',
            config = [[require('config.nvim-tree')]]
        }

        use {
            'norcalli/nvim-colorizer.lua',
            config = [[require('colorizer').setup()]]
        }

        use 'zivyangll/git-blame.vim'
        -- use 'tpope/vim-fugitive'

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

        use 'lewis6991/impatient.nvim'

        -- use 'jalvesaq/Nvim-R'

        use {
            'jose-elias-alvarez/null-ls.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            },
            config = [[require('config.null-ls')]]
        }

        use 'nkakouros-original/numbers.nvim'
        use {
            'kdheepak/lazygit.nvim',
        }

        use {
            'ckipp01/nvim-jenkinsfile-linter',
            requires = {
                "nvim-lua/plenary.nvim",
                "martinda/Jenkinsfile-vim-syntax"
            }
        }
        use 'vim-scripts/groovy.vim'

        use {
            'folke/which-key.nvim',
            config = [[require('config.which-key')]]
        }

        use {
            'gorbit99/codewindow.nvim',
            config = [[require('config.codewindow')]]
        }

        use {
          "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
          config = [[ require("lsp_lines").setup()]]
        }

        use {
            'simrat39/symbols-outline.nvim',
            config = [[require("symbols-outline").setup()]]
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
