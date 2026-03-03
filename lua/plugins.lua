local lazy = require("plugin-init")
--<-------------------------------->--
-- 	   COLORPICKER
--<-------------------------------->--
vim.opt.termguicolors = true
local ccc = require("ccc")
-- local mapping = ccc.mapping
-- local picker = ccc.picker
ccc.setup({
    --    alpha_show = "show",
    highlighter = {
        auto_enable = true,
        lsp = true,
    },
})
vim.keymap.set("n", "<leader>cc", "<cmd>CccPick<CR>", { silent = true })

--<-------------------------------->--
-- 	    TOGGLETERM
--<-------------------------------->--
local ROOT = vim.loop.cwd()

require("toggleterm").setup({
    open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
    direction = "float",
    autochdir = false,
    start_in_insert = true,
})

-- Ctrl+\ toggles terminal #1 (first time it opens, it uses ROOT)
vim.keymap.set({ "n", "t" }, "<C-\\>", function()
    local root = vim.fn.fnameescape(vim.g.toggleterm_root)
    vim.cmd("1ToggleTerm direction=float dir=" .. root)
end, { silent = true })

-- In the terminal: Esc or Ctrl+C hides the window
-- (This is the same idea as the docs' terminal keymaps example, just calling ToggleTerm) :contentReference[oaicite:2]{index=2}
-- Make sure terminals aren't discarded when closed, otherwise you’ll keep getting “new” buffers :contentReference[oaicite:2]{index=2}
vim.o.hidden = true

function _G._toggleterm_keymaps()
    local opts = { buffer = 0, silent = true }

    -- Hide on Esc / Ctrl+C (works every time you enter a toggleterm terminal)
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n><Cmd>1ToggleTerm<CR>]], opts)
    vim.keymap.set("t", "<C-c>", [[<C-\><C-n><Cmd>1ToggleTerm<CR>]], opts)

    vim.keymap.set("n", "<Esc>", [[<Cmd>1ToggleTerm<CR>]], opts)
    vim.keymap.set("n", "<C-c>", [[<Cmd>1ToggleTerm<CR>]], opts)
end

-- Apply mappings whenever you enter a ToggleTerm terminal buffer (recommended pattern) :contentReference[oaicite:3]{index=3}
vim.cmd([[autocmd! TermEnter term://*toggleterm#* lua _toggleterm_keymaps()]])
