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
    pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
}
