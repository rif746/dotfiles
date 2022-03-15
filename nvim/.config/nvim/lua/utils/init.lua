local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local M = {}

M.plugins = function (modul, config)
	 require(modul)['setup'](config)
end

M.lsp = function (lang, config)
	local mod = require('lspconfig')[lang]['setup']
	if type(config) ~= 'table' then
		config = {}
	end
	config['capabilities'] = capabilities
	config['on_attach'] = require('lsp.key')
	if type(mod) == 'table' then
		mod = config
	else
		mod(config)
	end
end

M.options = function (scope, key, value)
  vim[scope][key] = value
end

M.autocmd = function (event, target, command)
	vim.api.nvim_exec("au " .. event .. " " .. target .. " silent " .. command, false)
end

M.map = function (mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
