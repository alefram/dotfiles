local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "cmake",
        "clangd",
        "pyright",
        "phpactor",
        "tsserver",
        "lua_ls",
        "gopls",
        "jsonls",
        "tailwindcss",
        "vuels",
        "html",
    },
    automatic_installation = false,
    lazy_load = true,
})

local on_attach = function(client, bufnr)
    -- Set up keybindings here
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

-- Add the border on hover and on signature help

--tailwindcss
require('lspconfig').tailwindcss.setup({
    on_attach = on_attach,
})

--phpactor
require('lspconfig').phpactor.setup({
    on_attach = on_attach,
})

--typescript
require('lspconfig').tsserver.setup({
  capabilities = capabilities,
  on_attach = on_attach,
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
require('lspconfig').clangd.setup({
    on_attach = on_attach,
})

--python
require('lspconfig').pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"},
})

--Lua
require('lspconfig').lua_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT'
            },
            diagnostics = { globals = {'vim'} }
        }
    }
})

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
    on_attach = on_attach,
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
vim.o.updatetime = 100
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})
