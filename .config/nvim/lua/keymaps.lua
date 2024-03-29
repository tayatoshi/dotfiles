local comment_opt = { expr = true, remap = true, replace_keycodes = false }
local opt = {noremap = true, silent = true}
-- change <leader> to <space>
vim.g.mapleader = " "
vim.g.maplocalleader = ','

vim.keymap.set('i', '<C-j>', '<Esc>', opt)
vim.keymap.set('v', '<C-j>', '<Esc>', opt)
vim.keymap.set('n', ';', ':', {noremap = true, silent = false})

vim.keymap.set("n", "<leader>w", [[<Cmd>HopWord<CR>]], opt)

-- vim.keymap.set('n', '--', "v:count == 0 ? '<Plug>(comment_toggle_current_linewise)' : '<Plug>(comment_toggle_linewise_count)'", comment_opt)
-- vim.keymap.set('x', '---', '<Plug>(comment_toggle_linewise_visual)', opt)

-- settings for buffer
vim.keymap.set('n', 'te', '<cmd>enew<Return>', opt)
vim.keymap.set('n', '<Tab>', '<cmd>bnext<Return>', opt)
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<Return>', opt)

-- split window and move window
vim.keymap.set('n', '<leader>s', '<cmd>split<Return>', opt)
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<Return>', opt)
vim.keymap.set('n', '<leader>h', '<C-w>h', opt)
vim.keymap.set('n', '<leader>l', '<C-w>l', opt)
vim.keymap.set('n', '<leader>k', '<C-w>k', opt)
vim.keymap.set('n', '<leader>j', '<C-w>j', opt)

vim.keymap.set('n', '<Esc><Esc>', '<cmd>nohlsearch<Return>', opt)
vim.keymap.set('n', '<C-e>', '<cmd>Fern . -reveal=%<Return>', opt)

-- Telescope
vim.keymap.set("n", "<C-p>", [[<Cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>]], { noremap = true })
vim.keymap.set("n", "<C-g>", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true })
vim.keymap.set("n", "<leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true })
vim.keymap.set("n", "<leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })
vim.keymap.set("n", "<leader>fm", [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]], { noremap = true })
vim.keymap.set("n", "<leader>gb", [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]], { noremap = true })
