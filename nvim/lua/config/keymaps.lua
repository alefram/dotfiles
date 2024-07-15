-- space is my leader 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- insert mode
vim.keymap.set('i', 'aa', '<Esc>')

--move code blocks in visual mode
vim.cmd([[vnoremap K :move '<-2<CR>gv-gv]])
vim.cmd([[vnoremap J :move '>+1<CR>gv-gv]])

--identation
vim.cmd([[vnoremap <silent><TAB> >gv]])
vim.cmd([[vnoremap <silent><s-TAB> <gv]])

--lsp keymap
vim.keymap.set('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

-- Sign configuration
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

 --Telescope Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>") -- abrir el browser


-- Tree keymaps
vim.keymap.set('n', '<Leader>n', ':NERDTreeToggle<Enter>')
