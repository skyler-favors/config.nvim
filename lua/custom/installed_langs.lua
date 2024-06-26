-- Specifies the languages to be installed and their configurations
-- setups lsp server and treesitter

local servers = {
	--rust_analyzer = {},
	jsonls = {},
	tsserver = {},
	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
		},
	},
	--tailwindcss = {},
	pyright = {},
	html = {
		filetypes = { "html", "htmldjango" }
	},
}

local treesitter = { 'lua', 'javascript', 'tsx', 'typescript', 'vimdoc', 'vim', 'html', 'css', 'json', 'python' }

require 'lspconfig'.html.setup {
	filetypes = { "html", "htmldjango" }
}

return {
	servers = servers,
	treesitter = treesitter,
}
