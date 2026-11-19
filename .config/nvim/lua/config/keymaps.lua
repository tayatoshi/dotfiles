-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- VSCode風キーマップ
local map = vim.keymap.set
map("n", "<C-n>", function() Snacks.explorer() end, { desc = "Explorer (tree)" })
map({ "n", "x", "o" }, "<C-l>", function() require("flash").jump() end, { desc = "Flash jump" })
map("n", "<leader>j", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>r", function() require("telescope.builtin").lsp_references() end, { desc = "References" })

-- craftzdog風
map("n", "x", '"_x', { desc = "Delete char (no register)" })
map("n", "ss", "<cmd>split<CR>", { silent = true, desc = "Split horizontal" })
map("n", "sv", "<cmd>vsplit<CR>", { silent = true, desc = "Split vertical" })
map("n", "sh", "<C-w>h", { desc = "Window left" })
map("n", "sj", "<C-w>j", { desc = "Window down" })
map("n", "sk", "<C-w>k", { desc = "Window up" })
map("n", "sl", "<C-w>l", { desc = "Window right" })
