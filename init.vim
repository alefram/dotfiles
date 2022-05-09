" ****************************************
"             BASIC SETTINGS
"*****************************************

lua require('basic')

" ***************************************
"               PLUGINS
" ***************************************

lua require('plugins')

lua require('config.closetag')
lua require('config.scheme')
lua require('config.tree')
" ***************************************
"               KEYBINDINGS
" ***************************************

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



"set runtimepath^=~/.nvim runtimepath+=~/.nvim/after
"let &packpath=&runtimepath
"source ~/.config/nvim/.vimrc


