local ok, treesitter = pcall(require, 'nvim-treesitter')

if not ok then
    vim.schedule(function()
        vim.notify(
            "nvim-treesitter not found; run :PlugInstall to enable Tree-sitter setup",
            vim.log.levels.WARN
        )
    end)
    return
end

local parsers = {
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
    "xml",
    "dockerfile",
    "bash",
    "blade",
}

vim.filetype.add({
    pattern = {
        ['.*%.blade%.php'] = 'blade',
        ['.*docker%-compose.*%.ya?ml'] = 'yaml.docker-compose',
        ['.*compose.*%.ya?ml'] = 'yaml.docker-compose',
        [ '.*%.sdf' ] = 'xml',
    }
})

treesitter.setup({
    install_dir = vim.fn.stdpath('data') .. '/site',
})

vim.treesitter.language.register('blade', { 'blade' })
vim.treesitter.language.register('tsx', { 'typescriptreact', 'javascriptreact' })
vim.treesitter.language.register('yaml', { 'yaml.docker-compose' })

vim.api.nvim_create_user_command('TSInstallConfigured', function()
    treesitter.install(parsers)
end, {
    desc = 'Install configured Tree-sitter parsers',
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        "blade",
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "lua",
        "markdown",
        "php",
        "phpdoc",
        "python",
        "typescript",
        "typescriptreact",
        "vim",
        "vue",
        "xml",
        "yaml",
        "yaml.docker-compose",
    },
    callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
