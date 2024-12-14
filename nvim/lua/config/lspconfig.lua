local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.cmd [[ autocmd BufNewFile,BufRead *.blade.php setlocal filetype=blade ]]

-- Add the border on hover and on signature help
local on_attach = function(client, bufnr)
    -- Set up keybindings here
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

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
})

--tailwindcss
require('lspconfig').tailwindcss.setup({
    capabilities = capabilities,
    init_options = {
        ["language_server.diagnostic_exclude_paths"] = {
            "node_modules/**/*"  -- Exclude node_modules if present
        },
    },
    on_attach = function (client, bufnr)
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

        local filetype = vim.api.nvim_buf_get_option(bufnr, 'filetype')
        if filetype == 'php' then
            client.stop()  -- Stop tailwindcss LSP for PHP files
            return
        end
    end,
})

--phpactor
require('lspconfig').phpactor.setup({
    capabilities = capabilities,
    filetypes = { 'blade', 'php' },
    on_attach = on_attach,
    root_dir = function(start_path)
        return require('lspconfig.util').root_pattern('composer.json', '.git')(start_path)
    end,
    init_options = {
        ["language_server.diagnostic_exclude_paths"] = {
            "vendor/**/*",  -- Exclude vendor directory
            "node_modules/**/*"  -- Exclude node_modules if present
        },
        ["language_server.diagnostics_on_update"] = false,
        ["language_server.diagnostics_on_open"] = false,
        ["language_server.diagnostics_on_save"] = false,
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
            telemetry = { enable = false },
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

