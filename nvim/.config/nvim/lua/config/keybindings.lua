local map = require('utils').map

map('', '<A-f>', ':NvimTreeToggle<CR>', {silent=true, noremap=false})
map('', '<A-r>', ':NvimTreeRefresh<CR>', {silent=true, noremap=false})
map('', '<A-F>', ':NvimTreeFindFile<CR>', {silent=true, noremap=false})

-- Copy Pasta (xclip required)
map('v', 'cc', '"+y')
map('i', 'cv', '<ESC>"+p')
map('v', 'cv', '"+p')
map('n', 'cv', '"+p')

-- Center Cursor
map('n', 'j', 'jzz')
map('n', 'k', 'kzz')

-- Buffer
map('n', 'q', ':bdelete<CR>')
map('n', '<A-q>', ':qa<CR>')
map('n', '<S-h>', ':bprev<CR>')
map('n', '<S-l>', ':bnext<CR>')

map('n', '<F8>', ':TagbarToggle<CR>')

map('n', '<S-t>', ':split | resize 20 | term<CR>')

-- Save
map('n', 's', ':write<CR>')

-- Undo Redo
map('n', 'u', ':undo<CR>')
map('n', 'z', ':redo<CR>')

-- Better Indentation Key
map('v', '<Tab>', '>', {noremap=false, silent=true})
map('v', '<S-Tab>', '<', {noremap=false, silent=true})

-- Move Window
map('n', '<A-h>', '<C-w>h')
map('n', '<A-l>', '<C-w>l')
map('n', '<A-k>', '<C-w>k')
map('n', '<A-j>', '<C-w>j')

-- Comment Line
map('n', '<A-/>', ':CommentToggle<CR>')
map('v', '<A-/>', ':CommentToggle<CR>')

-- Rest Nvim
map('n', 're', "<cmd>lua require('rest-nvim').run()<cr>", { silent = true, noremap = true })

-- Telescope
map('n', 'ff', ":Telescope find_files<cr>")
map('n', 'fg', ":Telescope live_grep<cr>")
map('n', 'ft', ":Telescope help_tags<cr>")
map('n', 'fm', ":Telescope media_files<cr>")
map('n', 'fa', ":Telescope lsp_code_action<cr>")
map('n', 'fa', ":Telescope lsp_code_action<cr>")
