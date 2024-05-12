local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "cmake",
        "clangd",
        "pyright",
        "intelephense",
        "tsserver",
        "lua_ls",
        "rust_analyzer",
        "gopls",
        "jsonls",
        "tailwindcss",
        "vuels",
    },
    automatic_installation = false,
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

--C++
require('lspconfig').clangd.setup({})

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

-- JSON
require('lspconfig').jsonls.setup {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
}

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
