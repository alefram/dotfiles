local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

--RESALTADO DE SINTAXIS
Plug 'sheerun/vim-polyglot' 

--STATUS BAR
Plug 'maximbaz/lightline-ale' 
Plug 'itchyny/lightline.vim'

--TEMAS
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ackyshake/spacegray.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'nanotech/jellybeans.vim'

--TREE
Plug 'scrooloose/nerdtree'

--TIPEO
Plug 'jiangmiao/auto-pairs'
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
Plug ('rodrigore/coc-tailwind-intellisense', {['do'] = 'npm install'})

vim.call('plug#end')
