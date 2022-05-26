local setup = require('utils').plugins

setup('nvim-treesitter.configs', {
		highlight = {
				enable = true
		},
		indent = {
				enable = true
		},
		ensure_installed = { "http", "json", "lua", "go", "gomod", "php" },
		sync_install = true
})
