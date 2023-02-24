local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

--RESALTADO DE SINTAXIS
Plug 'sheerun/vim-polyglot' 

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

--TEMAS
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-moonfly-colors'
Plug 'EdenEast/nightfox.nvim'

--TERMINAL
Plug 'voldikss/vim-floaterm'

--TREE
Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons' --agrega iconos al nerdtree

--TIPEO
Plug 'jiangmiao/auto-pairs' --cierra pairs
Plug 'alvan/vim-closetag' --te cierra las etiquetas de html jsx etc
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter' --te comenta lineas
Plug 'JoosepAlviste/nvim-ts-context-commentstring' --para comentar con nvim-treesitter

--AUTOCOMPLETADO
--Plug ('neoclide/coc.nvim', {branch= 'release'})
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'


--OTRAS WHATEVER
Plug 'mhinz/vim-signify' --te agrega un mas o menos si se agrego o quito algo de git
Plug 'yggdroot/indentline' --te muestra la linea de espaciado
Plug 'christoomey/vim-tmux-navigator' --plugin para cambiar de archivos
Plug 'mxw/vim-jsx' --sintax de jsx
Plug 'lukas-reineke/indent-blankline.nvim' --indentación
Plug 'karb94/neoscroll.nvim' -- para hacer scroll con el teclado
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']}) ---mejorar el syntax highlight

vim.call('plug#end')
