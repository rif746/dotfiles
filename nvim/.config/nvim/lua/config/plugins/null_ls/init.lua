local setup = require('utils').plugins

setup('null-ls', {
		on_attach = function(client, bufnr)
				if client.resolved_capabilities.document_formatting then
						vim.cmd("nnoremap <silent><buffer> <C-f> :lua vim.lsp.buf.formatting()<CR>")
						-- format on save
						vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
				end

				if client.resolved_capabilities.document_range_formatting then
						vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
				end
		end,
})
