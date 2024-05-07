require('nvim-treesitter.configs').setup{
    ensure_installed = {
        "c",
        "cpp",
        "php",
        "python",
        "vue",
        "go",
        "latex",
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
        "tsx"
    },
    sync_install = false,
    highlight={
        enable=true,
        additional_vim_regex_highlighting = false,
    },

    context_commentstring = {
        enable = true,
    },
}
