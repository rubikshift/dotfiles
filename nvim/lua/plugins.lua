local execute = vim.api.nvim_command
local fn = vim.fn

vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function()
        use {'wbthomason/packer.nvim', opt = true}

        use {
            'norcalli/nvim_utils',
            config = function()
                require('lsputils')
            end
        }

        use 'neovim/nvim-lspconfig'
        -- use 'kosayoda/nvim-lightbulb'
        use {
            'onsails/lspkind-nvim',
            config = function()
                require('lspkind').init({})
            end
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
            config = function()
                require('my-cmp-cfg')
            end
        }

        use {
            'RishabhRD/nvim-lsputils',
            requires = {'RishabhRD/popfix'}
        }

        use {
            'hoob3rt/lualine.nvim',
            config = function()
                local gps = require("nvim-gps")
                require('lualine').setup{
                    options = {
                        theme = 'moonfly'
                    },
                    sections = {
                        lualine_c = {
                            { gps.get_location, cond = gps.is_available },
                        }
                    }
                }
            end
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
            config = function()
                require('gitsigns').setup()
            end,
            requires = {
                'nvim-lua/plenary.nvim'
            }
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = function()
                require'nvim-treesitter.configs'.setup {
                    ensure_installed = "maintained",
                    highlight = {
                        enable = true,
                    },
                }
            end
        }
        use {
            'code-biscuits/nvim-biscuits',
            require = 'nvim-treesitter/nvim-treesitter',
            config = function()
                require('nvim-biscuits').setup({
                    show_on_start = true,
                })
            end
        }
        use {
            'lewis6991/spellsitter.nvim',
            require = 'nvim-treesitter/nvim-treesitter',
            config = function()
                require('spellsitter').setup({
                    enable = true,
                })
            end
        }
        use {
            "SmiteshP/nvim-gps",
            requires = "nvim-treesitter/nvim-treesitter",
            config = function()
                require("nvim-gps").setup()
            end
        }

        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons',
            config = function()
                vim.g.nvim_tree_indent_markers = 1
                require'nvim-tree'.setup({
                    hijack_cursor = true,
                    auto_close = true,
                    update_focused_file = {
                        enable = true,
                    },
                    diagnostics = {
                        enable = true,
                    },
                    filters = {
                        dotfiles = true,
                        custom = {
                            '.git',
                            '.cache',
                        }
                    },

                })
            end
        }

        use {
            'bluz71/vim-moonfly-colors',
            config = function()
              vim.g.nvcode_termcolors=256
              vim.cmd('colorscheme moonfly')
            end
        }
        use {
            'norcalli/nvim-colorizer.lua',
            config = function()
                require'colorizer'.setup()
            end
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
            config = function()
                require('nvim-autopairs').setup()
            end
        }

        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }

        use 'tpope/vim-surround'
        use 'tpope/vim-repeat'
        use 'tpope/vim-sleuth'

        use {
            'lukas-reineke/indent-blankline.nvim',
            config = function()
                vim.opt.list = true
                require("indent_blankline").setup {
                    -- char = "|",
                    buftype_exclude = {"terminal"},
                    show_current_context = true,
                    show_current_context_start = true,
                }
            end
        }

        use {
            'ray-x/lsp_signature.nvim',
            config = function()
                require('lsp_signature').setup({
                    hint_enable= false,
                })
            end
        }
        use 'simrat39/symbols-outline.nvim'

        use {
            'vimwiki/vimwiki',
            config=function()
                vim.g.vimwiki_list = {
                  {
                    path = "$HOME/notes",
                    syntax = "markdown",
                    ext = ".md"
                  }
                }
            end
        }
        use 'lewis6991/impatient.nvim'

        -- use 'jalvesaq/Nvim-R'
        -- use 'metakirby5/codi.vim'

        use {
            'tami5/lspsaga.nvim',
            config = function()
                require('lspsaga').setup({
                })

            end
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
