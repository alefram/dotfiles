-- Identation
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

--Filetypes
vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")

--Theme
vim.cmd("set termguicolors") --permitir soporte de colores reales
vim.cmd("syntax on") 
vim.cmd("set nowrap")
vim.cmd("set number") -- agrega los numeros de linea
--vim.cmd("set signcolumn=yes")
--vim.cmd("set colorcolumn=80")

vim.cmd("set mouse=a") -- permite el uso del mouse

vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set cursorline") 
vim.cmd("set showmatch") -- show matching
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set showcmd")
vim.cmd("set ruler")
vim.cmd("set autoindent")
vim.cmd("set nobackup")
vim.cmd("set tw=0")
vim.cmd('let mapleader=" "') --tecla lider
