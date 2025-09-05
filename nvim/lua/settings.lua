-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1
vim.opt.colorcolumn = "80"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldmethod = "expr" -- folding, set to "expr" for treesitter based folding
vim.opt.foldenable = false
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
-- mouse = "a", -- allow the mouse to be used in neovim
vim.opt.number = true
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 10 --scroll offset, will start scrolling at this distance to the end of the screen
vim.opt.sidescrolloff = 8
vim.opt.shiftwidth = 2
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.title = true -- set the title of window to the value of the titlestring
-- undodir = CACHE_PATH .. "/undo", -- set an undo directory
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300
vim.opt.wrap = false
vim.opt.writebackup = false
vim.opt.shortmess:append("c")

if vim.fn.executable("rg") then
	-- if ripgrep installed, use that as a grepper
	vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
	vim.opt.grepformat = "%f:%l:%c:%m,%f:%l:%m"
end

vim.diagnostic.config({
	virtual_text = true,
})

-- sometimes I hit Wq or W, when trying to quickly escape from nvim
-- this trick helps me to make it work as intended
vim.cmd("command W w")
vim.cmd("command Q q")
vim.cmd("command Wq wq")
