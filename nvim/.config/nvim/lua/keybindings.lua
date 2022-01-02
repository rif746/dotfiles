local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('', '<A-f>', ':NvimTreeToggle<CR>', {silent=true, noremap=false})
map('', '<A-r>', ':NvimTreeRefresh<CR>', {silent=true, noremap=false})
map('', '<A-F>', ':NvimTreeFindFile<CR>', {silent=true, noremap=false})

-- Copy Pasta (xclip required)
map('v', 'cc', '"+y')
map('i', 'cv', '<ESC>"+p')
map('v', 'cv', '"+p')
map('n', 'cv', '"+p')

-- Buffer
map('n', 'q', ':bdelete<CR>')
map('n', '<A-q>', ':qa<CR>')
map('n', '<S-h>', ':bprev<CR>')
map('n', '<S-l>', ':bnext<CR>')

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

-- LSP Saga
map("n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
map("n", "ga", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
map("x", "ga", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
map("n", "gK",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
map("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
map("n", "gdn", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
map("n", "gdb", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
map("n", "<C-k>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>")
map("n", "<C-j>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>")

-- Rest Nvim
map('n', 're', "<cmd>lua require('rest-nvim').run()<cr>", { silent = true, noremap = true })
