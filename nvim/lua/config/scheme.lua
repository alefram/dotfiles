-- Opciones de esquemas de color disponibles
local color_schemes = {
    "github_dark_colorblind",
    "github_dark_tritanopia",
    "nightfox",
    "nordfox",
    "carbonfox",
    "github_dark_dimmed",
    "github_light",
    "github_light_high_contrast",
    "github_dark_default"
}

-- Selecciona aquí el esquema de color que prefieras
local selected_scheme = "nightfox" -- Cambia este valor por el nombre del esquema que quieras

function ColorMyPencil(color)
    color = color or selected_scheme
    vim.cmd.colorscheme(color)

 --    vim.api.nvim_set_hl(0, "Normal", { bg =  "none" })
 --    vim.api.nvim_set_hl(0, "Normalfloat", { bg = "none" })
 --    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
 --    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
 --    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
end

ColorMyPencil()

