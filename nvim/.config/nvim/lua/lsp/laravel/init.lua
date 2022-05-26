local configs = require 'lspconfig.configs'
local setup = require('utils').lsp
local util = require('lspconfig.util')

-- Configure it
configs.blade = {
		default_config = {
				-- Path to the executable: laravel-dev-generators
				cmd = { "laravel-dev-tools", "lsp" },
				filetypes = {'blade'};
				root_dir = function(fname)
						local cwd = vim.loop.cwd()
						local root = util.root_pattern('composer.json', '.git')(fname)
						return util.path.is_descendant(root, cwd) and cwd or root
				end;
				settings = {};
		};
}
-- Set it up
setup('blade')
