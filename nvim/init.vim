"****************************************
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
lua require('config.telescope')
lua require('config.keymaps')
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

"coc completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

"telescope
nnoremap <leader>p <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" coc extensions
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-pairs']
let g:AutoPairsShortcuts = 1
let g:lightline = { 'colorscheme': 'moonfly'}

 " scheme cambiar a scheme despues
 let g:xcodedarkhc_green_comments = 1
