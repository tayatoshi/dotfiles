vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

require('options')
require('mappings')
require('plugins')
require('lsp')
require('nvim-cmp')
require('colors')

