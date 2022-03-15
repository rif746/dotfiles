local setup = require('utils').plugins

setup('nvim-treesitter.configs', {
	highlight = {
		enable = true
	},
	ensure_installed = { "http", "json", "lua", "go", "gomod" },
	sync_install = true
})
