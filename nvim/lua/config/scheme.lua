function ColorMyPencil(color)
    color = color or "github_dark_dimmed"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg =  "none" })
    vim.api.nvim_set_hl(0, "Normalfloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    --vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    --vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
end

--options
--github_dark_colorblind
--github_dark_tritanopia
--nightfox
--nordfox
--github_dark_dimmed
--github_light
--github_light_high_contrast
--github_dark_default

ColorMyPencil()
