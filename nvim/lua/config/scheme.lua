local set = vim.o

set.background = 'dark'
--vim.cmd("colorscheme jellybeans")

--material scheme
vim.g.material_style = "darker"
vim.cmd[[colorscheme material]]
require('material').setup({
    contrast = {
        cursor_line = false,
    },

    styles = {
        comments = {italic = true},
         
    }
})

-- moonfly
--vim.cmd[[colorscheme moonfly]]


