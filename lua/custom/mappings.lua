-- [[ Basic Keymaps ]]
-- also check "custom/whick-key.lua" for more bindings
-- See `:help vim.keymap.set()` `:help nvim_set_keymap()`

-- Remap space to Nothing(<Nop>), because space is the leader key (kinda confusing) I guess this stops conflicts for whick-key???
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
-- See `:help g` & `:help v:count`
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- cycle through tabs with <tab> & <shift-tab>
vim.keymap.set('n', '<Tab>', '<cmd>tabnext<cr>', { silent = true })
vim.keymap.set('n', '<S-Tab>', '<cmd>tabprevious<cr>', { silent = true })

-- binds esc to clear search highlight
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>', { silent = true })

-- changes ":q" -> ":qa" to close all buffers
vim.cmd.cnoremap('q', 'qa')

-- these stop del char and visual paste from replacing you clipboard
-- allows you to paste without fucking up your clipboard
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('v', 'p', '"_dP')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- toggle the file tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree float<cr>', { silent = false })

-- toggle relative line numbers
vim.keymap.set('n', '<leader>rl', '<cmd>set relativenumber!<cr>', { silent = true })

-- toggle word wrap
vim.keymap.set('n', '<leader>ww', '<cmd>set wrap!<cr>', { silent = true })

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

vim.keymap.set('n', '<leader>fm', '<cmd>Format<cr>', { desc = 'LSP Format current buffer', silent = true })

vim.keymap.set('n', '<leader>f', function()
	vim.diagnostic.open_float()
end
, { desc = 'LSP diagnostics', silent = false })

-- icon picker mappings
--vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", { noremap = true, silent = true })
--vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", { noremap = true, silent = true }) --> Yank the selected icon into register
vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", { noremap = true, silent = true })

-- [[window navigation]]
vim.keymap.set("n", "<leader>x", "<cmd>close<cr>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<cr>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<cr>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<cr>", { silent = true })
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<cr>", { silent = true })
