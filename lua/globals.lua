vim.env.PATH = "/usr/bin/java" .. vim.env.PATH
vim.g.nvim_start_cwd = vim.fn.getcwd()
TAB_WIDTH = 4 -- for real languages, like c, c++ etc

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.cursorline = true
vim.opt.colorcolumn = "100"
vim.o.cursorlineopt = "number"
vim.o.signcolumn = "yes"
vim.opt.expandtab = true
vim.opt.tabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH

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
