return {
    "folke/zen-mode.nvim",

    opts = function()
        -- create once, reuse by name
        local group = vim.api.nvim_create_augroup("ZenColorColumn", { clear = true })

        return {
            window = {
                backdrop = 1,
                width = 120,
                height = 1,
                options = {
                    signcolumn = "no",
                    number = false,
                    relativenumber = false,
                    foldcolumn = "0",
                },
            },

            plugins = {
                options = {
                    enabled = true,
                    ruler = false,
                    showcmd = false,
                    laststatus = 0,
                },
            },

            on_open = function()
                vim.w._zen_prev_colorcolumn = vim.wo.colorcolumn
                vim.wo.colorcolumn = ""

                vim.g._zen_active = true

                -- clear any previous autocmds in this group, then recreate
                vim.api.nvim_clear_autocmds({ group = group })
                vim.api.nvim_create_autocmd("WinEnter", {
                    group = group,
                    callback = function()
                        if vim.g._zen_active then
                            vim.wo.colorcolumn = ""
                        end
                    end,
                })
            end,

            on_close = function()
                vim.g._zen_active = false
                vim.api.nvim_clear_autocmds({ group = group })

                vim.wo.colorcolumn = vim.w._zen_prev_colorcolumn or "100"
                vim.w._zen_prev_colorcolumn = nil
            end,
        }
    end,

    config = function(_, opts)
        vim.keymap.set("n", "zm", function()
            require("zen-mode").toggle()
        end, { silent = true })

        require("zen-mode").setup(opts)
    end,
}
