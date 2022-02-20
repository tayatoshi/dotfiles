-- mapping to open telescope in vim
vim.api.nvim_set_keymap("n", "<leader>ff", [[<Cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fe", [[<Cmd>lua require('telescope').extensions.file_browser.file_browser({hidden=true})<CR>]], { noremap = true })

local telescope = require('telescope')
local actions = require('telescope.actions')
local fb_actions = require('telescope._extensions.file_browser.actions')

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
  extensions = {
    file_browser = {
      mappings = {
        i = {
          ["H"] = fb_actions.goto_parent_dir,
          ["N"] = fb_actions.create,
          ["R"] = fb_actions.rename,
          ["D"] = fb_actions.remove,
          ["~"] = fb_actions.goto_cwd,
        },
      },
    },
  },
}
require("telescope").load_extension "file_browser"
