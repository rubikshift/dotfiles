-- inspired by https://github.com/ChristianChiarulli/nvcode
-- other cool stuff https://github.com/rockerBOO/awesome-neovim#treesitter-support

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

if vim.g.vscode then
else
	require("settings").load_options()
	require("keymap")
	require("lazy_config")
	require("autocmd")

	-- require("lsp.yaml")
	-- require('lsp.cmake')
	-- require('lsp.cpp')
	-- require("lsp.python")
	-- require('lsp.r')
	-- require("lsp.ltex-ls")
	-- require('lsp.texlab')
end
