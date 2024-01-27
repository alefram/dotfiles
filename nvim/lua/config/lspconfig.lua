require("mason").setup()
require("mason-lspconfig").setup({automatic_installation = false})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

--python
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

--Lua
require('lspconfig').lua_ls.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT'
            },
            diagnostics = { globals = {'vim'} }
        }
    }
})

--Rust
require('lspconfig').rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}

--PHP
require('lspconfig').intelephense.setup({})
--require('lspconfig').phpactor.setup({})

--Vue, Javascript, typescript
require('lspconfig').volar.setup({
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
})

-- JSON
require('lspconfig').jsonls.setup({})

--Tailwindcss
require('lspconfig').tailwindcss.setup({})

--goland
require('lspconfig').gopls.setup({
    capabilities = capabilities,
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            }
        }
    }
})

---- Commands
----vim.api.nvim_create_user_command('Format', vim.lsp.buf.format, {}) --comando para formatear
