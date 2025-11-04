-- INSTALL LAZYVIM (plugin manager)
local plugins = require("plugin-cfg.helper")
plugins.check_lazy_install()

-- [[ PLUGINS ]] :Lazy
-- setup in such a way that you can 'gd' (goto definition) and check any config from here.
require("lazy").setup({
    require("plugin-cfg.zen-mode"),
    require("plugin-cfg.gitsigns"),
    require("plugin-cfg.which-key"),
    require("plugin-cfg.telescope"),
    require("plugin-cfg.lazydev"),
    require("plugin-cfg.nvim-lspconfig"),
    require("plugin-cfg.conform"),
    require("plugin-cfg.nvim-cmp"),
    require("plugin-cfg.tokyonight"),
    require("plugin-cfg.todo-comments"),
    require("plugin-cfg.mini"),
    require("plugin-cfg.nvim-treesitter"),
}, {
    require("nerdfont-icons"),
})
