require'cfg.tree'
require'cfg.cmp'
require'cfg.buffline'
require'cfg.notify'
require'cfg.statusline'

require('nvim_comment').setup{}
require('lspsaga').init_lsp_saga()
require('which-key').setup()
require('nvim-treesitter.configs').setup{
	highlight = {
		enable = true
	},
	ensure_installed = { "http", "json" }
}

require("rest-nvim").setup{
	-- Open request results in a horizontal split
	result_split_horizontal = false,
	-- Skip SSL verification, useful for unknown certificates
	skip_ssl_verification = false,
	-- Highlight request on run
	highlight = {
		enabled = true,
		timeout = 150,
	},
	result = {
		-- toggle showing URL, HTTP info, headers at top the of result window
		show_url = true,
		show_http_info = true,
		show_headers = true,
	},
	-- Jump to request line on run
	jump_to_request = false,
	env_file = '.env',
	custom_dynamic_variables = {},
	yank_dry_run = true,
}

local cmd = vim.cmd
local scopes = {o = vim.o, b = vim.bo, w = vim.wo, g = vim.g}

local function opt(scope, key, value)
  scopes[scope][key] = value
end

vim.notify = require("notify")

local indent = 2
cmd 'colorscheme dracula'

vim.api.nvim_exec(
    [[
function! DisableST()
  return " File Tree "
endfunction
au BufEnter NvimTree setlocal statusline=%!DisableST()
]],
    false
)
-- Capslock
cmd 'au VimEnter * silent !xmodmap -e "clear lock" -e "keycode 0x42 = Escape"'
cmd 'au VimLeave * silent !xmodmap -e "clear lock" -e "keycode 0x42 = Caps_Lock"'

-- Code Documentation on Hover
cmd 'au CursorHold * :Lspsaga hover_doc'

-- Vim Config
opt('b', 'expandtab', true)                           -- Use spaces instead of tabs
opt('o', 'shiftwidth', indent)                        -- Size of an indent
opt('o', 'background', 'dark')                        -- Setup Background to Dark
opt('o', 'smartindent', true)                         -- Insert indents automatically
opt('o', 'tabstop', indent)                           -- Number of spaces tabs count for
opt('o', 'completeopt', 'menu,menuone,noselect')      -- Completion options (for deoplete)
opt('o', 'termguicolors', true)												-- Colorize background
opt('o', 'hidden', true)                              -- Enable modified buffers in background
opt('o', 'guifont', 'Fira Code:14')
opt('o', 'lazyredraw', true)													--
opt('o', 'regexpengine', 1)												  	--
opt('o', 'showmode', false)														-- Hide Mode Text
opt('o', 'smartcase', true)                           -- Don't ignore case with capitals
opt('o', 'splitbelow', true)                          -- Put new windows below current
opt('o', 'splitright', true)                          -- Put new windows right of current
opt('o', 'mouse', 'a')													      -- Activate Mouse Click
opt('w', 'number', true)                              -- Print line number
opt('w', 'relativenumber', true)                      -- Print line number
opt('w', 'cursorline', true)			      							-- Highlihgt Cursor Line Number

-- ultisnips
opt('g', 'UltiSnipsExpandTrigger', '<Plug>(ultisnips_expand)')
opt('g', 'UltiSnipsJumpForwardTrigger', '<Plug>(ultisnips_jump_forward)')
opt('g', 'UltiSnipsJumpBackwardTrigger', '<Plug>(ultisnips_jump_backward')
opt('g', 'UltiSnipsListSnippets', '<c-x><c-s>')
opt('g', 'UltiSnipsRemoveSelectModeMappings', '0')
