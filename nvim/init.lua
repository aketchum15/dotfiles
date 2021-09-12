vim.g.mapleader = ','
vim.b.mapleader = ','

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.cmdheight = 2

vim.wo.signcolumn = 'number'

vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.scrolloff = 5

vim.o.wildmenu = true
vim.o.wildignore = "*.jpg,*.png,*.bmp,*.gif,*.jpeg"

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.clipboard = "unnamedplus"

vim.o.termguicolors = true

vim.o.completeopt = "menuone,noselect"

vim.cmd('syntax on')

vim.g.tokyonight_enable_italic = 1
vim.g.tokyonight_transparent_background = 1
vim.g.lightline = {colorscheme = 'tokyonight'}

vim.cmd([[
call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'mfussenegger/nvim-jdtls'

call plug#end()

filetype indent on
filetype plugin on

colorscheme tokyonight

"auto resize splits when window is resized
au VimResized * :wincmd =

]])

require('maps')
require('lsp')
