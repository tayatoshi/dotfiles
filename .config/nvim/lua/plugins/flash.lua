return {
  {
    "folke/flash.nvim",
    -- s 始まりのキー(ss, sv, sh/sj/sk/sl)を使うため、flash の s は無効化。ジャンプは <C-l>
    keys = {
      { "s", false, mode = { "n", "x", "o" } },
    },
  },
}
