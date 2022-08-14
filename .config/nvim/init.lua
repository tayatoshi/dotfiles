vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

require('options')
require('keymaps')
require('plugins')
require('lsp')
require('nvim-cmp')
require('colors')

