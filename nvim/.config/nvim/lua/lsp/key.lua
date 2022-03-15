local opts = {silent = true, noremap = true}

local function on_attach(client, bufnr)

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Lspsaga rename<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "ga", "<cmd>Lspsaga code_action<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "x", "ga", ":<c-u>Lspsaga range_code_action<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gK",  "<cmd>Lspsaga hover_doc<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gdn", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gdb", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-j>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)
end
return on_attach
