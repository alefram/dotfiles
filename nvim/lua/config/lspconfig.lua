require("mason").setup()
require("mason-lspconfig").setup({automatic_installation = true})

--PHP
require('lspconfig').intelephense.setup({})

--Vue, Javascript, typescript
require('lspconfig').volar.setup({
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
})

--Tailwindcss
require('lspconfig').tailwindcss.setup({})



-- Sign configuration
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
