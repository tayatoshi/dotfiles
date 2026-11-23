return {
  {
    "Julian/lean.nvim",
    event = { "BufReadPre *.lean", "BufNewFile *.lean" },
    dependencies = { "nvim-lua/plenary.nvim" },
    -- 新しいlean.nvimは setup() を持たず vim.g.lean_config で設定する
    init = function()
      vim.g.lean_config = {
        mappings = true, -- <LocalLeader> 系 (\i で infoview など)
      }
    end,
    config = function() end,
  },
}
