-- CTRL + S save
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC><cmd>w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>w<CR>', { noremap = true, silent = true })

-- Git Blame
vim.api.nvim_set_keymap('n', '<leader>b', ':<C-u>call gitblame#echo()<CR>', { noremap = true })

-- panes movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- jj in interactive as ESC
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- CTRL + N toggles explorer
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

-- easy indent
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- CTRL+P find files like in VSCode
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>', {noremap = true})

-- CTRL+F to 'find' things in the files
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Telescope live_grep<cr>', {noremap = true})

-- gd/GD like goto definition/Declaration
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
-- gi like goto implementation
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })

-- idk
vim.api.nvim_set_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'g[', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'g]', '<cmd>lua vim.lsp.diagnostic.goto_next()()<CR>', { noremap = true, silent = true })

-- lspsaga movement [ ]
vim.api.nvim_set_keymap('n', '<C-[>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-]>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', { noremap = true, silent = true })

-- tab completions
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
