local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

--RESALTADO DE SINTAXIS
Plug 'sheerun/vim-polyglot' 

--BUSCADOR DE ARCHIVOS
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

--STATUS BAR
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale' 

--TEMAS
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'marko-cerovac/material.nvim'
Plug 'bluz71/vim-moonfly-colors'
--TREE
Plug 'scrooloose/nerdtree'

--TIPEO
--Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag' --te cierra las etiquetas de html jsx etc
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter' --te comenta lineas

--AUTOCOMPLETADO
Plug ('neoclide/coc.nvim', {branch= 'release'})

--OTRAS WHATEVER
Plug 'mhinz/vim-signify' --te agrega un mas o menos si se agrego o quito algo de git
Plug 'yggdroot/indentline' --te muestra la linea de espaciado
Plug 'easymotion/vim-easymotion' --plugin de encontrar funciones en un archivo
Plug 'christoomey/vim-tmux-navigator' --plugin para cambiar de archivos
Plug 'mxw/vim-jsx' --sintax de jsx
Plug 'lukas-reineke/indent-blankline.nvim' --indentación

vim.call('plug#end')
