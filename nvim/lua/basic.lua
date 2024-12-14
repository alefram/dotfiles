vim.opt.softtabstop = 4 --tab of 4 spaces
vim.opt.tabstop = 4 -- tab of 4
vim.opt.expandtab = true -- use space instead of tab
vim.opt.shiftwidth = 4  --indent size

vim.opt.smartindent = true -- automatic insert extra level of indentation e.g if
vim.opt.wrap = false -- no wrap
vim.opt.signcolumn = 'yes' --show left columns to show markers
vim.opt.wildmode = {'list:longest', 'list:full'} --complete the longest common match in command line

vim.opt.completeopt = 'menuone,longest,preview' --preview completion in command line
vim.opt.termguicolors = true -- true color support
vim.cmd("syntax on") --allow syntax highlight
vim.opt.number = false -- add numer of lines
vim.opt.relativenumber = false --relative number 

vim.opt.title = true -- show current file being edited in terminal
vim.opt.splitbelow = true --split window below of the current window
vim.opt.splitright = true -- split window right of the current window
vim.cmd("set colorcolumn=80") -- set colorcolumn

vim.opt.mouse = 'a' --allow mouse
vim.opt.smartcase = true --case sensitive
vim.opt.cursorline = false -- disable line highlight
vim.opt.showmatch = true --show matching parenthesis, brackets etc

vim.opt.clipboard = 'unnamedplus' --use system clipboard
vim.opt.showcmd = true --show history
vim.opt.ruler = true

