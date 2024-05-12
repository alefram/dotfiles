require('nvim-treesitter.configs').setup{
    ensure_installed = {
        "c",
        "cpp",
        "php",
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
        "bash",
        "lua",
        "vim",
        "comment",
        "cmake",
        "tsx",
    },
    auto_install = true,
    sync_install = false,
    highlight = {
        enable=true,
        additional_vim_regex_highlighting = false,
    },
    context_commentstring = {
        enable = true,
    },
    indent = {
        enable = true
    }
}
