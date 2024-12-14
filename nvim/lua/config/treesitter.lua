require('nvim-treesitter.configs').setup{
    ensure_installed = {
        "c",
        "cpp",
        "php",
        "phpdoc",
        "php_only",
        "python",
        "vue",
        "go",
        "json",
        "javascript",
        "typescript",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "lua",
        "vim",
        "comment",
        "cmake",
        "tsx",
    },
    auto_install = false,

    highlight = {
        enable=true,
        additional_vim_regex_highlighting = true,
    },
    context_commentstring = {
        enable = true,
        config = {
            javascriptreact = {
                style_element = '{/*%s*/}'
            }
        }
    },
    indent = {
        enable = true
    }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
    install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
    },
    filetype = "blade",
}

vim.filetype.add({
    pattern = {
        ['.*%.blade%.php'] = 'blade',
    }
})
