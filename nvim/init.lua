-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("settings")
require("keymap")
require("lazy_config")
require("autocmd")

vim.cmd.colorscheme("catppuccin")

-- require("lsp.yaml")
-- require('lsp.cmake')
-- require('lsp.cpp')
-- require("lsp.python")
-- require('lsp.r')
-- require("lsp.ltex-ls")
-- require('lsp.texlab')
