vim.diagnostic.config({
  virtual_text = false
})
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * :Lspsaga show_line_diagnostics]]

require('lsp.default')
require('lsp.pyright')
require('lsp.webls')
require('lsp.sumneko_lua')
require('lsp.laravel')
require('lsp.gopls')
