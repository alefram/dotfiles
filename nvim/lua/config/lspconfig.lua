local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "cmake",
        "clangd",
        "pyright",
        "intelephense",
        "phpactor",
        "tsserver",
        "lua_ls",
        "rust_analyzer",
        "gopls",
        "jsonls",
        "tailwindcss",
        "vuels",
        "html",
    },
    automatic_installation = false,
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

-- Add the border on hover and on signature help



--typescript
require('lspconfig').tsserver.setup({
  capabilities = capabilities,
  settings = {
    tsserver = {
      -- Enable HTML autocompletion
      completion = {
        enable = true,
        include = {
          "html",
        },
      },
    },
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

-- JSON
require('lspconfig').jsonls.setup {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
}


--go
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

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})
