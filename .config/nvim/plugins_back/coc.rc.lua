-- coc.nvimのためのキーマッピング(定義ジャンプとリファレンス)
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {})
