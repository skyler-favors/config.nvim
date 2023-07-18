-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
local actions = require('telescope.actions')
require('telescope').setup {
	defaults = {
		mappings = {
			i = {
				['<C-u>'] = false,
				['<C-d>'] = false,
				-- opens file in new tab
				['<CR>'] = actions.select_tab,
				-- replaces current window
				--['<C-i>'] = actions.select_default
			},
		},
	},
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

require('telescope').load_extension('luasnip')
