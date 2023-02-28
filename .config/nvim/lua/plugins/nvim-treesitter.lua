require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {"python"},
  },
  ensure_installed = { "c", "fish", "javascript", "json", "julia", "lua", "markdown", "python", "r", "rust", "toml", "yaml" },
  -- autotag = {
  --   enable = true,
  -- }
}
