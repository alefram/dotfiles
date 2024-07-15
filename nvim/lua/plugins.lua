local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

-- HIGHLIGHT SYNTAX
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']}) ---improve syntax highlight

--FILE SEARCH
Plug 'nvim-lua/plenary.nvim'--telescope
Plug ('nvim-telescope/telescope.nvim', {tag='0.1.8'})

--STATUS BAR
Plug'nvim-lualine/lualine.nvim'

--GIT
Plug 'mhinz/vim-signify' --visualization of my changes

--SCHEMES
Plug 'EdenEast/nightfox.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'arzg/vim-colors-xcode'

--TREE
Plug 'scrooloose/nerdtree' --sidebar explorer

--TYPING
Plug 'jiangmiao/auto-pairs' --close [,{ 
Plug 'karb94/neoscroll.nvim' -- scrolling with keyboard
Plug 'numToStr/Comment.nvim' -- comment lines
Plug 'christoomey/vim-tmux-navigator' -- for change between splits

--LSP
Plug ('williamboman/mason.nvim') --Portable package manager for Neovim help with lsp, linters and formaters
Plug 'williamboman/mason-lspconfig.nvim' -- mason-lspconfig conection
Plug 'neovim/nvim-lspconfig' --language server protocol

--AUTOCOMPLETE cmp
Plug 'hrsh7th/nvim-cmp' -- autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'-- cmp
Plug 'hrsh7th/cmp-buffer' -- cmp
Plug 'hrsh7th/cmp-path' -- cmp

Plug 'hrsh7th/cmp-nvim-lsp-signature-help'-- explanation of functions
Plug 'onsails/lspkind-nvim' --adds vscode-like pictograms to neovim

Plug ('L3MON4D3/LuaSnip', {tag = 'v2.*', ['do'] = 'make install_jsregexp'}) --snippets Replace <CurrentMajor> by the latest released major (first number of latest release)
Plug 'saadparwaiz1/cmp_luasnip' --cmp
Plug 'b0o/schemastore.nvim' --JSON schemas

vim.call('plug#end')
