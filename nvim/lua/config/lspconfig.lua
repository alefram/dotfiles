local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.cmd [[ autocmd BufNewFile,BufRead *.blade.php setlocal filetype=blade ]]

local on_attach = function(client, bufnr)
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
        "ruff",
        "ts_ls",
        "lua_ls",
        "tailwindcss",
        "html",
        "lemminx",
        "yamlls",
        "dockerls",
        "docker_compose_language_service",
    },
    automatic_enable = false,
})

local function setup(server, config)
    vim.lsp.config(server, vim.tbl_deep_extend("force", {
        capabilities = capabilities,
        on_attach = on_attach,
    }, config or {}))
    vim.lsp.enable(server)
end

setup("ruff")

--tailwindcss
setup("tailwindcss", {
    init_options = {
        ["language_server.diagnostic_exclude_paths"] = {
            "node_modules/**/*"  -- Exclude node_modules if present
        },
    },
    on_attach = function (client, bufnr)
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

        local filetype = vim.bo[bufnr].filetype
        if filetype == 'php' then
            client.stop()  -- Stop tailwindcss LSP for PHP files
            return
        end
    end,
})

--xml
setup("lemminx")

--typescript
setup("ts_ls", {
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
setup("cmake")

--C++
setup("clangd", {
    cmd = {
        "/usr/bin/clangd-14",
        "--background-index",
        "--all-scopes-completion",
        "--completion-style=detailed",
        "--header-insertion=never",
        "--header-insertion-decorators",
        "--pch-storage=memory",
    },
})

--python
setup("pyright", {
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"},
})

--Lua
setup("lua_ls", {
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

--yaml
setup("yamlls", {
  settings = {
    yaml = {
      schemaStore = {
        enable = false,
        url = "",
      },
      schemas = require('schemastore').yaml.schemas(),
      validate = true,
      completion = true,
      hover = true,
    },
  },
})

--html
setup("html")

--docker
setup("dockerls")

setup("docker_compose_language_service")
