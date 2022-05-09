set number "agrega los numeros de linea"
set mouse=a "permite el uso del mouse"
set numberwidth=1 "espacio entre los numeros de linea"
set clipboard+=unnamedplus
syntax on 
set showcmd
set ruler
set cursorline 
set encoding=utf-8
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set pumheight=10
set fileencoding=utf-8
set autoindent
set nobackup
set nowritebackup
set formatoptions-=cro
set tw=0
set termguicolors "permitir soporte de colores reales"
set textwidth=80 "asegura que la linea no sea mas larga de 80 caracteres"
"********************************************
"             PLUGINS
"********************************************
call plug#begin('~/.nvim/plugged')

"RESALTADO DE SINTAXIS
Plug 'sheerun/vim-polyglot' 

"STATUS BAR
Plug 'maximbaz/lightline-ale' 
Plug 'itchyny/lightline.vim'

"TEMAS
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ackyshake/spacegray.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'nanotech/jellybeans.vim'

"TREE
Plug 'scrooloose/nerdtree' "barra lateral

"TIPEO
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag' "te cierra las etiquetas de html jsx etc
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter' "te comenta lineas

"AUTOCOMPLETADO
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"OTRAS WHATEVER
Plug 'mhinz/vim-signify' "te agrega un mas o menos si se agrego o quito algo de git
Plug 'yggdroot/indentline' "te muestra la linea de espaciado
Plug 'easymotion/vim-easymotion' "plugin de encontrar funciones en un archivo
Plug 'christoomey/vim-tmux-navigator' "plugin para cambiar de archivos
Plug 'mxw/vim-jsx' "sintax de jsx
Plug 'lervag/vimtex' "latex
Plug 'fladson/vim-kitty' "kitty terminal sintaxis
Plug 'nvim-lua/plenary.nvim' "funciona con telescope
Plug 'nvim-telescope/telescope.nvim'   "buscardor de archivos
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "es un buscador de archivos etc.
"Plug 'junegunn/fzf.vim'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
call plug#end()

"**************************************
"		CONFIGURACIONES
"**************************************

"CONFIGURACION DE LA BARRA DE STATUS
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ }


"CONFIGURACION DEL BUSCADOR FZF
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"


"CONFIGURACION DE LATEX
let g:vimtex_syntax_conceal = {
			\ 'math_bounds' : 0, 
			\	'styles' : 0,
			\ 'math_delimiters' : 0,
			\ 'fancy' : 0,
			\ 'greek' : 0,
			\ 'math_fracs' : 0,
			\ 'accents' : 1,
			\ 'cites' : 1,
			\ 'math_super_sub' : 0,
			\ 'math_symbols' : 0,
			\ 'sections' : 0,
\}

let g:vimtex_compiler_latexmk = {'build_dir' : 'build'}


"CONFIGURACION DEL TREE VIEW
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"


"CONFIGURACION DEL TEMA
set background=dark
colorscheme jellybeans



"CONFIGURACION DEL CLOSETAGS
let g:closetag_filenames = '*.html, *.xhtml, *.phtml, *.jsx, *.js, *.tsx, *.xml'

"*********************************************************
"			SHORCUTS Y MAPEOS
"*********************************************************

let mapleader=" " "tecla lider en modo normal

"te abre el tree view 
nnoremap <Leader>n :NERDTreeToggle<Enter>
"para usar easymotion
nmap <Leader>s <Plug>(easymotion-s2)
"para pasar a modo normal
imap aa <Esc>
"abrir buscador de archivos
nnoremap <silent> <c-p> :Files<CR>
"abrir el arbolito de git
nnoremap <silent> <Leader>g :Commits<CR>
"mover bloques de codigo en modo visual o V-line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
"mejor indentacion
vnoremap <silent><s-TAB> <gv
vnoremap <silent><TAB> >gv

