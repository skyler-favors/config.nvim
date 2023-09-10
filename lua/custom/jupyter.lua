-- Jupytext

-- let g:jupytext_fmt = 'py'
-- let g:jupytext_style = 'hydrogen'
vim.g.jupytext_fmt = 'py'
vim.g.jupytext_style = 'hydrogen'

-- -- " Send cell to IronRepl and move to next cell.
-- -- " Depends on the text object defined in vim-textobj-hydrogen
-- -- " You first need to be connected to IronRepl
-- nmap ]x ctrih/^# %%<CR><CR>
-- vim.keymap.set({ 'n' }, ']x', '', { silent = true })

local iron = require "iron.core"
iron.setup({
	config = {
		should_map_plug = false,
		scratch_repl = true,
		repl_definition = {
			python = {
				command = { "ipython" },
				format = require("iron.fts.common").bracketed_paste,
			},
		},
	},
	keymaps = {
		send_motion = "ctr",
		visual_send = "ctr",
	},
})
