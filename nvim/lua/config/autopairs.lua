local ok, autopairs = pcall(require, 'nvim-autopairs')

if not ok then
    vim.schedule(function()
        vim.notify(
            "nvim-autopairs not found; run :PlugInstall",
            vim.log.levels.WARN
        )
    end)
    return
end

autopairs.setup({})
