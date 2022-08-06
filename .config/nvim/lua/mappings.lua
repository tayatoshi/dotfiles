local api = vim.api
local comment_opt = { expr = true, remap = true, replace_keycodes = false }

-- change <leader> to <space>
vim.g.mapleader = " "

api.nvim_set_keymap('i', '<C-j>', '<Esc>', {noremap = true, silent = false})
api.nvim_set_keymap('v', '<C-j>', '<Esc>', {noremap = true, silent = false})
api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = false})

api.nvim_set_keymap("n", "<leader>w", [[<Cmd>HopWord<CR>]], { noremap = true })

vim.keymap.set('n', '--', "v:count == 0 ? '<Plug>(comment_toggle_current_linewise)' : '<Plug>(comment_toggle_linewise_count)'", comment_opt)
vim.keymap.set('x', '--', '<Plug>(comment_toggle_linewise_visual)')

-- settings for buffer
vim.keymap.set('n', 'te', '<cmd>enew<Return>')
vim.keymap.set('n', '<Tab>', '<cmd>bnext<Return>')
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<Return>')

-- split window and move window
vim.keymap.set('n', '<leader>s', '<cmd>split<Return>')
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<Return>')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>j', '<C-w>j')

vim.keymap.set('n', '<Esc><Esc>', '<cmd>nohlsearch<Return>')
vim.keymap.set('n', '<C-e>', '<cmd>Fern . -reveal=%<Return>')
