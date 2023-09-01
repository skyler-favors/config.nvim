local wk = require("which-key")

wk.register({
	["<leader>c"] = {
		name = "𝑐"
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
