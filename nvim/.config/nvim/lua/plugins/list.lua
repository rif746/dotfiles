local M = {
  -- { "savq/paq-nvim" },
	{ "wbthomason/packer.nvim" },
  { "rktjmp/hotpot.nvim" },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "onsails/lspkind-nvim" },
  { "tami5/lspsaga.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "terrortylor/nvim-comment" },

	-- Prettier
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "MunifTanjim/prettier.nvim" },

  -- Database Support
  { 'tpope/vim-dadbod' },
  { 'kristijanhusak/vim-dadbod-ui' },
  { 'kristijanhusak/vim-dadbod-completion' },

  -- Flutter Support
  { "akinsho/flutter-tools.nvim" },

  -- Completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },

	-- Smooth Scrolling
	{ 'karb94/neoscroll.nvim' },

  -- Snippets
  { "SirVer/ultisnips" },
  { "quangnguyen30192/cmp-nvim-ultisnips" },

	-- Tagbar
	{ "preservim/tagbar" },

  -- Theming
	{ "marko-cerovac/material.nvim" },
  { "akinsho/bufferline.nvim" },
  { "rcarriga/nvim-notify" },
  { 'nvim-lualine/lualine.nvim' },

  -- VCS sign
  { 'mhinz/vim-signify' },

  -- Telescope
  { 'nvim-telescope/telescope.nvim' },
  { 'nvim-lua/popup.nvim' },
  { 'nvim-telescope/telescope-media-files.nvim' },

  -- File Manager
  { "kyazdani42/nvim-web-devicons" },
  { "kyazdani42/nvim-tree.lua" },

  -- Matlab Support
  { "jvirtanen/vim-octave" },

  -- CSV Support
  { "chrisbra/csv.vim" },

  -- pair
  {'jiangmiao/auto-pairs'},
  {'alvan/vim-closetag'},

  -- Shortcut Helper
  {'folke/which-key.nvim'},

  -- RestAPI
  {"NTBBloodbath/rest.nvim"},
  {"nvim-lua/plenary.nvim"},

  -- Markdown Support
  {'iamcco/markdown-preview.nvim'},
}

return M
