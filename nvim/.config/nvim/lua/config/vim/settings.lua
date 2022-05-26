local M = {
		-- Vim Config
		{'bo', 'expandtab', true},
		{'o', 'background', 'dark'},
		{'o', 'smartindent', true},
		{'o', 'shiftwidth', 2},
		{'o', 'tabstop', 2},
		{'o', 'softtabstop', 2},
		{'o', 'autoindent', true},
		{'o', 'completeopt', 'menu,menuone,noselect'},
		{'o', 'termguicolors', true},
		{'o', 'hidden', true},
		{'o', 'guifont', 'Fira Code:14'},
		{'o', 'lazyredraw', true},
		{'o', 'regexpengine', 1},
		{'o', 'showmode', false},
		{'o', 'smartcase', true},
		{'o', 'splitbelow', true},
		{'o', 'splitright', true},
		{'o', 'mouse', 'a'},
		{'o', 'scrolloff', 8},
		{'o', 'sidescrolloff', 8},
		{'o', 'scrollback', 8},
		{'wo', 'number', true},
		{'wo', 'relativenumber', true},
		{'wo', 'cursorline', true},

		-- ultisnips
		{'g', 'UltiSnipsExpandTrigger', '<Plug>(ultisnips_expand)'},
		{'g', 'UltiSnipsJumpForwardTrigger', '<Plug>(ultisnips_jump_forward),'},
		{'g', 'UltiSnipsJumpBackwardTrigger', '<Plug>(ultisnips_jump_backward)'},
		{'g', 'UltiSnipsListSnippets', '<c-x><c-s>'},
		{'g', 'UltiSnipsRemoveSelectModeMappings', '0'},

		{'g', 'did_load_filetypes', true}
}

return M
