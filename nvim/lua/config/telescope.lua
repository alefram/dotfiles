require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"node_modules", "vendor", "venv"},
        border = true,
        sorting_strategy = "ascending",
    }
}



--Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

