-- encoding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number=true
vim.o.signcolumn = "yes"
vim.opt.autoindent=true
vim.opt.smartindent = true
vim.opt.cmdheight = 1
vim.opt.showcmd = true
vim.opt.ambiwidth = "single"
vim.opt.clipboard = 'unnamedplus'
vim.opt.swapfile = false

-- tab
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.expandtab = true
vim.opt.shiftwidth=4
vim.opt.smarttab = true

-- cursorline
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- popup window transparency
vim.opt.termguicolors=true
vim.opt.winblend = 20
vim.opt.pumblend = 20

-- search, replacement
vim.opt.smartcase = true
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true

-- Python path
vim.g.python3_host_prog='$HOME/.anyenv/envs/pyenv/versions/3.10.6/bin/python3'
-- generating documents type
vim.g.doge_doc_standard_python = 'google'

vim.g['fern#default_hidden'] = 1

