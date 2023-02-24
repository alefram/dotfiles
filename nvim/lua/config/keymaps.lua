-- space is my leader 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open the current file in the default program
vim.keymap.set('n', '<Leader>x', ':xdg-open %<CR><CR>') 
-- insert mode
vim.keymap.set('i', 'aa', '<Esc>')
--toggle tree view
vim.keymap.set('n', '<Leader>n', ':NERDTreeToggle<Enter>')
--move code blocks in visual mode == not working
vim.keymap.set('x', 'K :move', "'<-2<CR>gv-gv") 
vim.keymap.set('x', 'J :move', "'>+1<CR>gv-gv")

--TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--TERMINAL
vim.keymap.set('n', '<leader>t', ':FloatermToggle<CR>')
vim.keymap.set('t', '<leader>t', '<C-\\><C-n>:FloatermToggle<CR>')

--GIT
vim.keymap.set('n',']h', ':Gitsigns next_hunk<CR>')
vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
vim.keymap.set('n', 'gS', 'Gitsigns undo_stage_hunk<CR>')
vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')

--LSPCONFIG
vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
