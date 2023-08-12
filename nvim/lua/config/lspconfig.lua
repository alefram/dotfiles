require("mason").setup()
require("mason-lspconfig").setup({automatic_installation = false})

--Python
require('lspconfig').pyright.setup({
  capabilities = capabilities,
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"},
  settings = {
    {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true
        }
      }
    }
  }
})

--Rust
require('lspconfig').rust_analyzer.setup{
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}

--PHP
require('lspconfig').intelephense.setup({capabilities = capabilities})
--require('lspconfig').phpactor.setup({})

--Vue, Javascript, typescript
require('lspconfig').volar.setup({
  capabililites = capabilities,
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
})

-- JSON
require('lspconfig').jsonls.setup({})

--Tailwindcss
require('lspconfig').tailwindcss.setup({capabilities = capabilities})

-- Commands
--vim.api.nvim_create_user_command('Format', vim.lsp.buf.format, {}) --comando para formatear
