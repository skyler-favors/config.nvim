-- Specifies the languages to be installed and their configurations
-- setups lsp server and treesitter

local servers = {
	rust_analyzer = {},
	jsonls = {},
	tsserver = {},
	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
		},
	},
	tailwindcss = {},
}

local treesitter = { 'lua', 'rust', 'javascript', 'tsx', 'typescript', 'vimdoc', 'vim', 'html', 'css', 'json' }

return {
	servers = servers,
	treesitter = treesitter,
}
