local M = {}

-- checks for lazy.nvim, if it doesnt exist, clone it.
function M.check_lazy_install()
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not (vim.uv or vim.loop).fs_stat(lazypath) then
        local lazyrepo = "https://github.com/folke/lazy.nvim.git"
        local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
        if vim.v.shell_error ~= 0 then
            error("Error cloning lazy.nvim:\n" .. out)
        end
    end ---@diagnostic disable-next-line: undefined-field
    vim.opt.rtp:prepend(lazypath)
end

-- checks for lazy.nvim, if it doesnt exist, clone it.
function M.getcfg(name)
    return function()
        require(name)
    end
end
return M
