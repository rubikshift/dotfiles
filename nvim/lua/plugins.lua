local execute = vim.api.nvim_command
local fn = vim.fn

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    
    use 'norcalli/nvim_utils'
    
    use 'neovim/nvim-lspconfig'
    -- use 'glepnir/lspsaga.nvim'
    -- use 'kosayoda/nvim-lightbulb'
    use 'hrsh7th/nvim-compe'

    use 'hoob3rt/lualine.nvim'

    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    --use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

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
    use 'terrortylor/nvim-comment'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-sleuth'
    use 'christoomey/vim-sort-motion'
    use 'Yggdroot/indentLine'

    use 'jalvesaq/Nvim-R'

end)
