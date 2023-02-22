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
lua require('config.statusBar')
lua require('config.indentation')
lua require('config.dashboard')
lua require('config.git')
lua require('config.terminal')
lua require('config.treesitter')
" ***************************************
"               KEYBINDINGS
" ***************************************

"mejor indentacion
vnoremap <silent><s-TAB> <gv
vnoremap <silent><TAB> >gv

"coc completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" coc extensions
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-pairs']
let g:AutoPairsShortcuts = 1

" scroll setup
lua require('neoscroll').setup()
