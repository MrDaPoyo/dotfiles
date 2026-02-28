require("config.lazy")
require("ibl").setup()

-- better tab spacing
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Make nvim and OS share clipboards
vim.o.clipboard = 'unnamedplus'

-- Syntax Highlighting
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
