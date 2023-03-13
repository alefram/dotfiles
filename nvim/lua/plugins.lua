local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

--RESALTADO DE SINTAXIS
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']}) ---mejorar el syntax highlight

--BUSCADOR DE ARCHIVOS
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

--STATUS BAR
Plug'nvim-lualine/lualine.nvim' --barra de abajo
Plug ('akinsho/bufferline.nvim', { tag= 'v3.*' })

--DASHBOARD
Plug  'glepnir/dashboard-nvim'

--GIT
Plug 'lewis6991/gitsigns.nvim'
Plug 'mhinz/vim-signify' --te agrega un mas o menos si se agrego o quito algo de git

--TEMAS
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-moonfly-colors'
Plug 'EdenEast/nightfox.nvim'

--TREE
Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons' --agrega iconos al nerdtree

--TIPEO
Plug 'jiangmiao/auto-pairs' --cierra pairs
Plug 'alvan/vim-closetag' --te cierra las etiquetas de html jsx etc
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter' --te comenta lineas
Plug 'JoosepAlviste/nvim-ts-context-commentstring' --para comentar con nvim-treesitter no configurado
Plug 'lukas-reineke/indent-blankline.nvim' --indentación
Plug 'christoomey/vim-tmux-navigator' --plugin para cambiar de archivos
Plug 'karb94/neoscroll.nvim' -- para hacer scroll con el teclado

--AUTOCOMPLETADO
Plug 'williamboman/mason.nvim' --ayuda para lsp
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' --language server protocol
Plug 'hrsh7th/cmp-nvim-lsp' --herramienta de autocompletado
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'b0o/schemastore.nvim' --JSON schemas

--LINTING FORMATTING
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jay-babu/mason-null-ls.nvim'

--Otras whatever
Plug ('toppair/peek.nvim', { ['run'] = 'deno task --quiet build:fast'} ) --markdown preview

vim.call('plug#end')
