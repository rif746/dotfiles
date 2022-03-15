local indent = 2
local M = {
	-- Vim Config
	{'bo', 'expandtab', true},
	{'o', 'shiftwidth', indent},
	{'o', 'background', 'dark'},
	{'o', 'smartindent', true},
	{'o', 'tabstop', indent},
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
	{'wo', 'number', true},
	{'wo', 'relativenumber', true},
	{'wo', 'cursorline', true},

	-- ultisnips
	{'g', 'UltiSnipsExpandTrigger', '<Plug>(ultisnips_expand)'},
	{'g', 'UltiSnipsJumpForwardTrigger', '<Plug>(ultisnips_jump_forward),'},
	{'g', 'UltiSnipsJumpBackwardTrigger', '<Plug>(ultisnips_jump_backward)'},
	{'g', 'UltiSnipsListSnippets', '<c-x><c-s>'},
	{'g', 'UltiSnipsRemoveSelectModeMappings', '0'},

	{'g', 'dracula_italic_comment', 1},
	{'g', 'dracula_transparent_bg', 1},
	{'g', 'dracula_show_end_of_buffer', 1}

}

return M
