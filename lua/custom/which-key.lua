local wk = require("which-key")

wk.register({
	["<leader>c"] = {
		name = "𝑐",
		r = { "<cmd>CellularAutomaton make_it_rain<cr>", "Make it rain!" },
		g = { "<cmd>CellularAutomaton game_of_life<cr>", "Game of Life" },
		s = { "<cmd>CellularAutomaton scramble<cr>", "Scramble" }
	}
}, {})

wk.register({
	["<leader>d"] = {
		name = "Đ"
	}
}, {})

wk.register({
	["<leader>p"] = {
		f = { "<cmd>!yapf -i %:p<cr>", "Format Current Python File" }
	}
}, {})

wk.register({
	["<leader>d"] = {
		p = { "<cmd>diffput<cr>", "Diff Put" }
	}
}, {})

wk.register({
	["<leader>r"] = {
		t = { "<cmd>set tabstop=2 shiftwidth=2 expandtab | retab<cr>", "Set Tabs" }
	}
}, {})
