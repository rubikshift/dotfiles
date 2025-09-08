vim.api.nvim_create_autocmd("QuitPre", {
	callback = function()
		local tree_wins = {}
		local floating_wins = {}
		local wins = vim.api.nvim_list_wins()
		for _, w in ipairs(wins) do
			local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
			if bufname:match("NvimTree_") ~= nil then
				table.insert(tree_wins, w)
			end
			if vim.api.nvim_win_get_config(w).relative ~= "" then
				table.insert(floating_wins, w)
			end
		end
		if 1 == #wins - #floating_wins - #tree_wins then
			-- Should quit, so we close all invalid windows.
			for _, w in ipairs(tree_wins) do
				vim.api.nvim_win_close(w, true)
			end
		end
	end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	command = [[set norelativenumber]],
})

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = [[set relativenumber]],
})
-- remove trailing whitespace on save
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	command = [[%s/\s\+$//e]],
-- })

-- set spellcheck for given filetypes
vim.api.nvim_command([[autocmd FileType markdown setlocal spell]])
vim.api.nvim_command([[autocmd FileType text setlocal spell]])
vim.api.nvim_command([[autocmd FileType gitcommit setlocal spell]])
vim.api.nvim_command([[autocmd FileType vimwiki setlocal spell]])

-- color column for gitcommits
vim.api.nvim_command([[autocmd FileType gitcommit set colorcolumn=72]])

-- formatting text files
vim.api.nvim_command([[autocmd FileType markdown setlocal textwidth=80]])
vim.api.nvim_command([[autocmd FileType text setlocal textwidth=80]])
vim.api.nvim_command([[autocmd FileType gitcommit setlocal textwidth=72]])

-- markdown formatting
-- vim.api.nvim_command([[autocmd FileType markdown setlocal tabstop=4]])
-- vim.api.nvim_command([[autocmd FileType markdown setlocal noexpandtab]])
-- vim.api.nvim_command([[autocmd FileType markdown %retab!]])
