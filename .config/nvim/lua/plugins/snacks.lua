return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- ツリーを右側に開く
            layout = { layout = { position = "right" } },
            -- .gitignore 対象（tex/ など）も表示する
            ignored = true,
          },
          -- <leader>ff / <leader>/ などでも .gitignore 対象を検索する
          files = { ignored = true },
          grep = { ignored = true },
        },
      },
    },
  },
}
