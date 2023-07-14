-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()` `:help nvim_set_keymap()`
-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>e', '<cmd>Neotree float<cr>', { silent = true })
-- toggle relative line numbers
vim.keymap.set('n', '<leader>rl', '<cmd>set relativenumber!<cr>', { silent = true })
vim.keymap.set('n', '<Tab>', '<cmd>tabnext<cr>', { silent = true })
vim.keymap.set('n', '<S-Tab>', '<cmd>tabprevious<cr>', { silent = true })
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>', { silent = true })
vim.cmd.cnoremap('q', 'qa')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
