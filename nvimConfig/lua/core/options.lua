-- Options

vim.g.mapleader = ','

vim.opt.autoindent = true
vim.opt.breakindent = true

vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.expandtab = false

vim.opt.scrolloff = 10

vim.opt.wrap = true

vim.opt.incsearch = true

vim.opt.ignorecase = true

vim.opt.smartcase = true

vim.opt.hlsearch = true
vim.opt.showmatch = true

vim.opt.history = 5000

vim.opt.wildmenu = true
vim.opt.wildmode = { 'longest', 'list', 'full' }
vim.opt.wildignore = { '*.o', '*.a', '__pycache__', '*.docx', '*.jpg', '*.png', '*.gif', '*.pdf', '*.pyc', '*.exe', '*.flv', '*.img', '*.xlsx' }

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
