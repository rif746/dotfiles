local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) == 1 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

local paq = require('paq').paq

paq { "savq/paq-nvim" }

-- LSP
paq { "neovim/nvim-lspconfig" }
paq { "onsails/lspkind-nvim" }
paq { "tami5/lspsaga.nvim" }
paq { "nvim-treesitter/nvim-treesitter" }
paq { "terrortylor/nvim-comment" }

-- Flutter Support
paq { "akinsho/flutter-tools.nvim" }

-- Completion
paq { "hrsh7th/nvim-cmp" }
paq { "hrsh7th/cmp-nvim-lsp" }
paq { "hrsh7th/cmp-buffer" }
paq { "hrsh7th/cmp-path" }
paq { "hrsh7th/cmp-cmdline" }

-- Snippets
paq { "SirVer/ultisnips" }
paq { "quangnguyen30192/cmp-nvim-ultisnips" }

-- Theming
paq { "Mofiqul/dracula.nvim" }
paq { "akinsho/bufferline.nvim" }
paq { "rcarriga/nvim-notify" }
paq { 'nvim-lualine/lualine.nvim' }

-- VCS sign
paq { 'mhinz/vim-signify' }

-- File Manager
paq { "kyazdani42/nvim-web-devicons" }
paq { "kyazdani42/nvim-tree.lua" }

-- Matlab Support
paq { "jvirtanen/vim-octave" }

-- CSV Support
paq { "chrisbra/csv.vim" }

-- pair
paq {'jiangmiao/auto-pairs'}
paq {'alvan/vim-closetag'}

-- Shortcut Helper
paq {'folke/which-key.nvim'}

-- RestAPI
paq {"NTBBloodbath/rest.nvim"}
paq {"nvim-lua/plenary.nvim"}

-- Markdown Support
paq {'iamcco/markdown-preview.nvim'}
