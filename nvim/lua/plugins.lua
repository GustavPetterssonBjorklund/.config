-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",

        "clone",
        "--filter=blob:none",

        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    -- Other plugins
    { "williamboman/mason.nvim" },           -- Mason
    { "williamboman/mason-lspconfig.nvim" }, -- Mason-LSP integration
    { "neovim/nvim-lspconfig" },             -- Core LSP support

    -- Autocompletion
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- treesitter
    { "hrsh7th/nvim-cmp" },           -- Autocompletion plugin
    { "hrsh7th/cmp-nvim-lsp" },       -- LSP source for nvim-cmp
    { "hrsh7th/cmp-buffer" },         -- Buffer source for nvim-cmp
    { "hrsh7th/cmp-path" },           -- Path source for nvim-cmp
    { "L3MON4D3/LuaSnip" },           -- Snippet engine
    { "saadparwaiz1/cmp_luasnip" },   -- Snippet source for nvim-cmp
    { "rafamadriz/friendly-snippets" }, -- Predefined snippet

    -- colorschemes
    { "ellisonleao/gruvbox.nvim" }, -- colorscheme (gruvbox)
    -- neotree
    { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- Optional for file icons
        "MunifTanjim/nui.nvim",
    }},

    -- telescope
    { "nvim-telescope/telescope.nvim", dependencies = {
        "nvim-lua/plenary.nvim" }
    },

    -- toggleterm (terminal)
    { "akinsho/toggleterm.nvim", version = "*", config = true },
})

