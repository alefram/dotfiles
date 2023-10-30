local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

--HIGHLIGHT SYNTAX
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']}) ---improve syntax highlight

--FILE SEARCH
Plug 'nvim-lua/plenary.nvim'--telescope
Plug ('nvim-telescope/telescope.nvim', {tag='0.1.1'})

--STATUS BAR
Plug'nvim-lualine/lualine.nvim' --barra de abajo
--Plug ('akinsho/bufferline.nvim', { tag= 'v3.*' }) --barra de los archivos abiertos

--GIT
Plug 'mhinz/vim-signify' --te agrega un mas o menos si se agrego o quito algo de git

--SCHEMES
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-moonfly-colors'
Plug 'EdenEast/nightfox.nvim'
Plug 'projekt0n/github-nvim-theme'

--TREE
Plug 'scrooloose/nerdtree' --explorador de archivos sidebar
--Plug 'ryanoasis/vim-devicons' -- iconos para nerdtree
--Plug 'nvim-tree/nvim-web-devicons' --iconos para status bar y telescope

--TYPING
Plug 'jiangmiao/auto-pairs' --cierra pares como [,{
Plug 'alvan/vim-closetag' --te cierra las etiquetas de html jsx etc
Plug 'scrooloose/nerdcommenter' --te comenta lineas 
Plug 'christoomey/vim-tmux-navigator' --plugin para cambiar de archivos
Plug 'karb94/neoscroll.nvim' -- para hacer scroll con el teclado

--AUTOCOMPLETE
Plug ('williamboman/mason.nvim', { ['do'] = ':MasonUpdate' }) --Portable package manager for Neovim help with lsp, linters and formaters
Plug 'williamboman/mason-lspconfig.nvim' --puente entre mason y lspconfig
Plug 'neovim/nvim-lspconfig' --language server protocol

Plug 'hrsh7th/cmp-nvim-lsp'--de cmp
Plug 'hrsh7th/cmp-buffer' -- de cmp
Plug 'hrsh7th/cmp-path' --de cmp
Plug 'hrsh7th/cmp-cmdline' -- de cmp
Plug 'hrsh7th/nvim-cmp' -- autocompletado
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'-- te muestra la explicacion de las funciones

Plug 'b0o/schemastore.nvim' --JSON schemas
Plug 'onsails/lspkind-nvim' --adds vscode-like pictograms to neovim

--AI ASSISTANT
Plug ('codota/tabnine-nvim', { ['do'] = './dl_binaries.sh' })

--ANOTHERS
Plug ('toppair/peek.nvim', { ['run'] = 'deno task --quiet build:fast'} ) --markdown preview
Plug 'kdheepak/cmp-latex-symbols' --latex symbols

vim.call('plug#end')
