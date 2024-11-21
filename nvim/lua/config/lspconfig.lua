local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "cmake",
        "clangd",
        "pyright",
        "phpactor",
        "ts_ls",
        "lua_ls",
        "gopls",
        "tailwindcss",
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
    capabilities = capabilities,
    on_attach = on_attach,
})

--phpactor
require('lspconfig').phpactor.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    init_options = {
        ["language_server_phpstan.enabled"] = false,
        ["language_server_psalm.enabled"] = false,
    }
})

--typescript
require('lspconfig').ts_ls.setup({
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

--cmake
require('lspconfig').cmake.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

--C++
require('lspconfig').clangd.setup({
    capabilities = capabilities,
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
vim.o.updatetime = 500
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})
