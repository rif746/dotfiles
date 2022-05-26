local setup = require('utils').plugins
require('telescope').load_extension('media_files')

setup('telescope', {
		pickers = {
				find_files = {
						theme = "dropdown"
				},
		},
		extensions = {
				media_files = {
						filetypes = {"png", "webp", "jpg", "jpeg"},
						find_cmd = "rg"
				},
		},
})

