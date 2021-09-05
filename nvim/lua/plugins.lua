local execute = vim.api.nvim_command
local fn = vim.fn

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    
    use 'norcalli/nvim_utils'
    
    use 'neovim/nvim-lspconfig'
    use 'kosayoda/nvim-lightbulb'
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/nvim-compe'
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/vim-vsnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        -- https://github.com/hrsh7th/vim-vsnip
        'hrsh7th/vim-vsnip',
        'hrsh7th/vim-vsnip-integ',
      }
    }
    use 'nvim-lua/completion-nvim'

    use {
        'RishabhRD/nvim-lsputils',
        requires = {'RishabhRD/popfix'}
    }

    use 'hoob3rt/lualine.nvim'

    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use 'ryanoasis/vim-devicons'

    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    use 'bluz71/vim-moonfly-colors'
    use 'norcalli/nvim-colorizer.lua'

    use 'zivyangll/git-blame.vim'
    use 'tpope/vim-fugitive'

    use 'mhinz/vim-startify'
    use 'airblade/vim-rooter'

    use 'windwp/nvim-autopairs'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-sleuth'
    use 'christoomey/vim-sort-motion'
    use 'Yggdroot/indentLine'

    use 'ray-x/lsp_signature.nvim'
    use 'simrat39/symbols-outline.nvim'

    -- use 'jalvesaq/Nvim-R'
    -- use 'metakirby5/codi.vim'

end)
