-- space is my leader 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open the current file in the default program
vim.keymap.set('n', '<Leader>x', ':xdg-open %<CR><CR>') 
-- insert mode
vim.keymap.set('i', 'aa', '<Esc>')
--toggle tree view
vim.keymap.set('n', '<Leader>n', ':NERDTreeToggle<Enter>')
-- easy motion
vim.keymap.set('n', '<Leader>s', '<Plug>(easymotion-s2)')
--move code blocks in visual mode == not working
vim.keymap.set('x', 'K :move', "'<-2<CR>gv-gv") 
vim.keymap.set('x', 'J :move', "'>+1<CR>gv-gv")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
