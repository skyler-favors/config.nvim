-- autocmd FileType help wincmd L
--vim.api.nvim_create_autocmd("FileType", {pattern="help", command="wincmd L"})
local custom = vim.api.nvim_create_augroup("custom", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*/doc/*",
	group = custom,
	callback = function(opts)
		if vim.bo[opts.buf].filetype == 'help' then
			vim.cmd 'wincmd L'
		end
	end,
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})
