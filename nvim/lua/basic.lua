-- Identation

vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.signcolumn = 'yes:1'
--Filetypes

vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

--Theme

vim.opt.wildmode = 'longest:full,full' --complete the longest common match
vim.opt.completeopt = 'menuone,longest,preview'
vim.opt.termguicolors = true --permitir soporte de colores reales
vim.cmd("syntax on")
vim.opt.number = true -- agrega los numeros de line
vim.opt.title = true
vim.opt.splitbelow = true
vim.opt.splitright = true
--vim.opt.spell = true -- verifica ortografia
--vim.cmd("set signcolumn=yes")
vim.cmd("set colorcolumn=80")
vim.opt.mouse = 'a' --permitir el uso del mouse
vim.opt.smartcase = true --case sensitive
vim.opt.cursorline = true
vim.opt.showmatch = true --show matching
vim.opt.clipboard = 'unnamedplus' --use system clipboard
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.backup = true --automatically save a backup file
vim.opt.backupdir:remove('.') -- keep backups out of the current directory
vim.opt.tw = 0


