-- CTRL + S save
vim.keymap.set("i", "<C-s>", "<ESC><cmd>w<CR>", { noremap = true, silent = true, desc = "save file" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { noremap = true, silent = true, desc = "save file" })

-- Git Blame
vim.keymap.set("n", "<leader>b", ":<C-u>call gitblame#echo()<CR>", { noremap = true, desc = "show git blame" })

-- LazyGit
vim.keymap.set("n", "<leader>lg", ":<C-u><cmd>LazyGit<CR>", { noremap = true })

-- panes movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- CTRL + N toggles explorer
vim.keymap.set(
	"n",
	"<C-n>",
	"<cmd>NvimTreeToggle<CR>",
	{ noremap = true, silent = true, desc = "toggle file explorer" }
)

-- which key
vim.keymap.set(
	"n",
	"<leader>?",
	'<cmd>lua require("which-key").show({ global = false })<CR>',
	{ noremap = true, silent = true, desc = "Buffer Local Keymaps (which-key)" }
)

-- easy indent
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "indent left" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "indent right" })

-- CTRL+P find files like in VSCode
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { noremap = true, desc = "search file" })

-- CTRL+F to 'find' things in the files
vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { noremap = true, desc = "find in files" })
-- CTRL+D to list buffers  (no good mnemonic idea)
vim.keymap.set("n", "<C-d>", "<cmd>Telescope buffers<cr>", { noremap = true, desc = "show buffers" })

-- LSP
vim.keymap.set(
	"n",
	"gd",
	"<cmd>lua vim.lsp.buf.definition()<CR>",
	{ noremap = true, silent = true, desc = "goto definition" }
)
vim.keymap.set(
	"n",
	"gD",
	"<cmd>lua vim.lsp.buf.declaration()<CR>",
	{ noremap = true, silent = true, desc = "goto declaration" }
)
vim.keymap.set(
	"n",
	"gr",
	"<cmd>lua vim.lsp.buf.references()<CR>",
	{ noremap = true, silent = true, desc = "show references" }
)
vim.keymap.set(
	"n",
	"gi",
	"<cmd>lua vim.lsp.buf.implementation()<CR>",
	{ noremap = true, silent = true, desc = "goto implementation" }
)
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true, desc = "hover?" })
vim.keymap.set(
	"n",
	"g[",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true, desc = "goto next warning" }
)
vim.keymap.set(
	"n",
	"g]",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true, desc = "goto prev warning" }
)
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
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { noremap = true, silent = true, desc = "open outline" })
vim.keymap.set(
	"n",
	"<leader>f",
	"<cmd>lua vim.lsp.buf.format{async = true}<CR>",
	{ noremap = true, silent = true, desc = "format file" }
)
-- vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', 'g[', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', 'g]', '<cmd>Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>r', '<cmd>Lspsaga rename<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>s', '<cmd>Lspsaga signature_help<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>a', '<cmd>Lspsaga code_action<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>d', '<cmd>Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true })
