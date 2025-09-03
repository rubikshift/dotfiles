-- CTRL + S save
vim.keymap.set("i", "<C-s>", "<ESC><cmd>w<CR>", { noremap = true, silent = true, desc = "save file" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { noremap = true, silent = true, desc = "save file" })

-- Git Blame
vim.keymap.set("n", "<leader>b", ":<C-u>call gitblame#echo()<CR>", { noremap = true, desc = "show git blame" })

-- panes movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- easy indent
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "indent left" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "indent right" })

-- LSP
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true, desc = "hover?" })
-- vim.keymap.set(
-- 	"n",
-- 	"g[",
-- 	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
-- 	{ noremap = true, silent = true, desc = "goto next warning" }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"g]",
-- 	"<cmd>lua vim.diagnostic.goto_next()<CR>",
-- 	{ noremap = true, silent = true, desc = "goto prev warning" }
-- )
vim.keymap.set(
	"n",
	"<leader>r",
	"<cmd>lua vim.lsp.buf.rename()<CR>",
	{ noremap = true, silent = true, desc = "rename" }
)
vim.keymap.set(
	"n",
	"<leader>s",
	"<cmd>lua vim.lsp.buf.signature_help()<CR>",
	{ noremap = true, silent = true, desc = "show signature" }
)
vim.keymap.set(
	"n",
	"<leader>a",
	"<cmd>lua vim.lsp.buf.code_action()<CR>",
	{ noremap = true, silent = true, desc = "quick fix" }
)
vim.keymap.set(
	"n",
	"<leader>d",
	"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",
	{ noremap = true, silent = true, desc = "show warning" }
)
--
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>f",
-- 	"<cmd>lua vim.lsp.buf.format{async = true}<CR>",
-- 	{ noremap = true, silent = true, desc = "format file" }
-- )

-- vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', 'g[', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', 'g]', '<cmd>Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>r', '<cmd>Lspsaga rename<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>s', '<cmd>Lspsaga signature_help<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>a', '<cmd>Lspsaga code_action<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>d', '<cmd>Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true })
