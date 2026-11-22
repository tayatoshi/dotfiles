return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "ruff" } },
  },
}
