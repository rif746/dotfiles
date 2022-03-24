local setup = require("utils").plugins

vim.g.material_style = "deep ocean"

setup("material", {
	contrast = {
		popup_menu = true
	},
	italics = {
		functions = true,
		comments = true,
		variables = true,
	},
	high_visibility = {
		darker = true,
	},
})

vim.cmd "colorscheme material"
