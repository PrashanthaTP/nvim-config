-- global function should start with uppercase
function SetupColorscheme(color)
    -- set given color theme with transparent background
    color = color or DEFAULT_COLOR_THEME
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetupColorscheme("rose-pine")
