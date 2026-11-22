return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")
      opts.defaults = opts.defaults or {}
      opts.defaults.mappings = opts.defaults.mappings or {}
      -- Ctrl+j / Ctrl+k で候補を上下に移動する
      opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i or {}, {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      })
      opts.defaults.mappings.n = vim.tbl_extend("force", opts.defaults.mappings.n or {}, {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      })

      -- .gitignore 対象（tex/ など）もファイル検索・grep の対象にする
      opts.pickers = opts.pickers or {}
      opts.pickers.find_files = vim.tbl_extend("force", opts.pickers.find_files or {}, {
        no_ignore = true,
      })
      opts.pickers.live_grep = vim.tbl_extend("force", opts.pickers.live_grep or {}, {
        additional_args = { "--no-ignore" },
      })
    end,
  },
}
