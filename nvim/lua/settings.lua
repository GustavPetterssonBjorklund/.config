-- use line numbers 
vim.opt.number = true       -- Line numbers
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- default tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- set neotree file explorer as default
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


vim.api.nvim_create_autocmd("User", {
    pattern = "LazyDone",
    callback = function()
        local ok, _ = pcall(vim.cmd, "colorscheme gruvbox")
        if not ok then
            vim.notify("Gruvbox colorscheme not found!", vim.log.levels.ERROR)
        end
    end,
})

