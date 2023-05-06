-- space is my leader 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open the current file in the default program
vim.keymap.set('n', '<Leader>x', ':xdg-open %<CR><CR>') 
-- insert mode
vim.keymap.set('i', 'aa', '<Esc>')
--move code blocks in visual mode == not working
vim.cmd([[vnoremap K :move '<-2<CR>gv-gv]])
vim.cmd([[vnoremap J :move '>+1<CR>gv-gv]])
--mejor identacion
vim.cmd([[vnoremap <silent><TAB> >gv]])
vim.cmd([[vnoremap <silent><s-TAB> <gv]])

