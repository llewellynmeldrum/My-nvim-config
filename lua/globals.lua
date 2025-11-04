TAB_WIDTH_BASED = 8 -- for real languages, like c, c++ etc
TAB_WIDTH_CRINGE = 4 -- for heavy indentation languages, like js, lua,
TAB_WIDTH_EXTRA_CRINGE = 2 -- for the really bad ones.

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.cursorline = true
vim.o.cursorlineopt = "number"
vim.o.signcolumn = "yes"
vim.opt.expandtab = false
vim.opt.tabstop = TAB_WIDTH_BASED
vim.opt.shiftwidth = TAB_WIDTH_BASED

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"

vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

vim.opt.breakindent = true

vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 1000
vim.opt.timeoutlen = 3000

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 12
