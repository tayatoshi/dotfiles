vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

local opt = vim.opt

require('options')
require('mappings')
require('plugins')
require('lsp')
require('nvim-cmp')
require('colors')

vim.wo.number=true
opt.autoindent=true
opt.smartindent = true
opt.expandtab = true
opt.tabstop=4
opt.softtabstop=4
opt.shiftwidth=4
opt.cursorline = true
opt.cursorcolumn = true

vim.opt.ambiwidth = "single"
opt.clipboard = 'unnamedplus'

opt.ignorecase = true

opt.termguicolors=true
opt.winblend = 20
opt.pumblend = 20

opt.smartcase = true
opt.inccommand = 'split'
vim.o.signcolumn = "yes"

opt.swapfile = false

vim.g.python3_host_prog='$HOME/.anyenv/envs/pyenv/versions/3.10.6/bin/python3'
vim.g.doge_doc_standard_python = 'google'

vim.g['fern#default_hidden'] = 1

