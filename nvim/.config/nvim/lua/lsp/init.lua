local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local init = function(lsp)
	-- Setup lspconfig.
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')[lsp].setup {
    capabilities = capabilities
  }
end

-- init('pyright')
init('pylsp')
init('html')
init('cssls')
init('jsonls')
init('intelephense')
init('clangd')

-- pyright
-- require('lspconfig').pyright.setup{
-- 	python = {
-- 		analysis = {
-- 			diagnosticMode = 'workspace',
-- 			useLibraryCodeForTypes = true
-- 		}
-- 	}
-- }

-- lua lsp
require('lspconfig').sumneko_lua.setup {
	cmd = {'lua-language-server'},
  capabilities = capabilities,
	settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

