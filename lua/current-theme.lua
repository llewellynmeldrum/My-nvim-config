vim.cmd("colorscheme catppuccin-macchiato")
local function TransparentBackground()
    local hl = vim.api.nvim_set_hl
    hl(0, "Normal", { bg = "NONE" })
    hl(0, "NormalNC", { bg = "NONE" })
    hl(0, "EndOfBuffer", { bg = "NONE" })
    hl(0, "SignColumn", { bg = "NONE" })
    hl(0, "FoldColumn", { bg = "NONE" })
    hl(0, "LineNr", { bg = "NONE" })
    hl(0, "CursorLineNr", { bg = "NONE" })

    -- If you use floats (Telescope, LSP hovers, etc.)
    hl(0, "NormalFloat", { bg = "NONE" })
    hl(0, "FloatBorder", { bg = "NONE" })

    -- 2) zen-mode backdrop highlight group (used for the dimmed area)
    hl(0, "ZenBg", { bg = "NONE" })
end

-- Re-apply after any :colorscheme change (most themes overwrite highlights)
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = TransparentBackground,
})

-- Call once on startup too
TransparentBackground()

