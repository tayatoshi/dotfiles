-- mapping to open telescope in vim
vim.api.nvim_set_keymap("n", "<leader>ff", [[<Cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fm", [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gb", [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]], { noremap = true })

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous
			},
			n = {
				["q"] = actions.close,
				["v"] = actions.file_vsplit,
				["s"] = actions.file_split,
			},
		},
		file_ignore_patterns = {
			"%.DS_Store",
			"%.git/.*",
			"%.vim/.*",
			"node_modules/.*",
			"%.idea/.*",
			"%.vscode/.*",
			"%.history/.*"
		},
	},
}
