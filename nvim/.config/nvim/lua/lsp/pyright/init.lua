local setup = require('utils').lsp

setup('pyright', {
		python = {
				analysis = {
						diagnosticMode = 'workspace',
						useLibraryCodeForTypes = true
				}
		}
})
