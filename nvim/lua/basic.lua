vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.signcolumn = 'yes:1'

vim.opt.encoding = 'UTF-8'
vim.opt.fileencoding = 'UTF-8'

vim.opt.wildmode = 'longest:full,full' --complete the longest common match
vim.opt.completeopt = 'menuone,longest,preview'
vim.opt.termguicolors = true --permitir soporte de colores reales
vim.cmd("syntax on")
vim.opt.number = false-- agrega los numeros de line
vim.opt.title = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd("set colorcolumn=80")
vim.opt.mouse = 'a' --permitir el uso del mouse
vim.opt.smartcase = true --case sensitive
vim.opt.cursorline = true
vim.opt.showmatch = true --show matching
vim.opt.clipboard = 'unnamedplus' --use system clipboard
vim.opt.showcmd = true
vim.opt.ruler = false
vim.opt.backup = true --automatically save a backup file
vim.opt.backupdir:remove('.') -- keep backups out of the current directory
vim.opt.tw = 0
vim.cmd("autocmd FileType * autocmd BufLeave <buffer> silent! write") -- guardar archivos automaticamente

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
