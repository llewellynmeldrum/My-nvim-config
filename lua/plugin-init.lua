-- INSTALL LAZYVIM (plugin manager)
local M = {}
local plugin_helper = require("plugin-cfg.helper")
plugin_helper.check_lazy_install()

-- [[ PLUGINS ]] :Lazy
-- setup in such a way that you can 'gd' (goto definition) and check any config from here.
M = require("lazy").setup({
    require("plugin-cfg.zen-mode"), ------------------------------------------<-- Zen-mode
    require("plugin-cfg.gitsigns"), ------------------------------------------<-- Gitsigns
    require("plugin-cfg.which-key"), -----------------------------------------<-- Which-key
    require("plugin-cfg.telescope"), -----------------------------------------<-- Telescope
    require("plugin-cfg.lazydev"), -------------------------------------------<-- Lazydev
    require("plugin-cfg.nvim-lspconfig"), ------------------------------------<-- Nvim-lspconfig
    require("plugin-cfg.clangd-extensions"), ------------------------------------<-- Nvim-lspconfig
    require("plugin-cfg.conform"), -------------------------------------------<-- Conform
    require("plugin-cfg.nvim-cmp"), ------------------------------------------<-- Nvim-cmp
    require("plugin-cfg.tokyonight"), ----------------------------------------<-- Tokyonight
    require("plugin-cfg.todo-comments"), -------------------------------------<-- Todo-comments
    require("plugin-cfg.mini"), ----------------------------------------------<-- Mini
    require("plugin-cfg.nvim-treesitter"), ------------------------------------<--Nvim-treesitte
    require("plugin-cfg.nvim-jdtls"), ----------------------------------------<-- Nvim-jdtls
    require("plugin-cfg.vimtex"), --------------------------------------------<-- Vimtex
    require("plugin-cfg.ccc"), -----------------------------------------------<-- Color Picker
    require("plugin-cfg.toggleterm"), ----------------------------------------<-- Toggleterm
}, {
    require("nerdfont-icons"),
})

return M
