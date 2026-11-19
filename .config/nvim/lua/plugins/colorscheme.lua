return {
  {
    "folke/tokyonight.nvim",
    opts = {
      dim_inactive = true, -- 非アクティブなウィンドウを少し暗くする
      on_highlights = function(hl, c)
        -- ウィンドウ分割線の色
        hl.WinSeparator = { fg = "#7aa2f7", bold = true } -- tmuxのステータスラインと同じ青
      end,
    },
  },
}
