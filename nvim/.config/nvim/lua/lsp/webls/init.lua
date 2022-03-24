local setup = require('utils').lsp

setup('jsonls', {
	cmd = {"vscode-json-languageserver", "--stdio"}
})
setup('cssls', {
	cmd = {"vscode-css-languageserver", "--stdio"}
})
setup('html', {
	cmd = {"vscode-html-languageserver", "--stdio"}
})
