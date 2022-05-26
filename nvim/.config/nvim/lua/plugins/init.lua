local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
local plugin_list = require('plugins.list')

require('packer').startup(function(use)
		for _, v in ipairs(plugin_list) do
				use(v)
		end
end)

