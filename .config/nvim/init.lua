require('plugins')

require('lsp')

local opt = vim.opt

opt.background = 'dark'
opt.termguicolors = true
-- vim.cmd 'colorscheme eldar'

opt.spelllang = 'en'

opt.colorcolumn = '120'
opt.cursorline = true
opt.number = true

opt.ignorecase = true

opt.copyindent = true
opt.expandtab = true
opt.shiftwidth=2
opt.smartindent = true
opt.tabstop = 2
opt.wrap = true

vim.g.mapleader = [[ ]]
vim.g.maplocalleader = [[,]]

-- git
require('gitsigns').setup()


