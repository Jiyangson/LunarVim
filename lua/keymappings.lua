vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>i', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', {silent = true})

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.cmd([[
  nnoremap <silent> <Up>    :resize -2<CR>
  nnoremap <silent> <Down>  :resize +2<CR>
  nnoremap <silent> <Left>  :vertical resize +2<CR>
  nnoremap <silent> <Right> :vertical resize -2<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
-- vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', '<c-i>', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<c-k>', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

-- Basic Mappings
vim.api.nvim_set_keymap('n', ';', ':', {noremap = true})
-- save and quit
vim.api.nvim_set_keymap('n', 'Q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'S', ':w<CR>', {noremap = true, silent = true})
-- open config anytime
vim.api.nvim_set_keymap('n', '<Leader>rc', ':e ~/.config/nvim/init.lua<CR>', {noremap = true, silent = true})
-- cursor movement
vim.api.nvim_set_keymap('n', 'i', 'k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', 'h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'h', 'i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'H', 'I', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gi', 'gk', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gk', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'J', '0', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'L', 'g_', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'W', '5w', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'B', '5b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'i', 'k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'k', 'j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'j', 'h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'J', '0', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'L', 'g_', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'h', 'i', {noremap = true, silent = true})
-- fast movement
vim.api.nvim_set_keymap('n', 'I', '5k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'K', '5j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'I', '5k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'K', '5j', {noremap = true, silent = true})
