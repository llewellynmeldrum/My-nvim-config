vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Get treesitter for .metal files for syntax highlighting
vim.filetype.add({
    extension = { metal = "cpp" },
})
-- But disable lsp because it doesnt work properly
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local buf = args.buf
        local name = vim.api.nvim_buf_get_name(buf)
        if name:match("%.metal$") then
            vim.lsp.stop_client(args.data.client_id)
        end
    end,
})
vim.api.nvim_create_autocmd("User", {
    pattern = "ZenEnter",
    callback = function()
        vim.keymap.set("n", "q", ":qa<CR>", { buffer = true })
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "ZenLeave",
    callback = function()
        vim.keymap.del("n", "q", { buffer = true })
    end,
})
