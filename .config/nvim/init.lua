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
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
opt.cursorline = true
opt.cursorcolumn = true

opt.ignorecase = true

opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'split'
vim.o.signcolumn = "yes"

opt.swapfile = false

opt.statusline = "%{%v:lua.require'nvim-navic'.get_location()%}"
vim.g.python3_host_prog='$HOME/.anyenv/envs/pyenv/versions/3.10.6/bin/python3'
vim.g.doge_doc_standard_python = 'google'

vim.g['fern#default_hidden'] = 1

