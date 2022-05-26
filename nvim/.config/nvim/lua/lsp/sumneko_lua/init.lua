local setup = require('utils').lsp

setup('sumneko_lua', {
		cmd = {'lua-language-server'},
		settings = {
				Lua = {
						diagnostics = {
								-- Get the language server to recognize the `vim` global
								globals = {'vim'},
						},
						workspace = {
								-- Make the server aware of Neovim runtime files
								library = {
										vim.api.nvim_get_runtime_file("", true),
										"/usr/share/awesome/lib/"
								},
						},
						-- Do not send telemetry data containing a randomized but unique identifier
						telemetry = {
								enable = false,
						},
				},
		},
})
