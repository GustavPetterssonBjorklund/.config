-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        -- Web Development LSPs
        "html",
        "cssls",
        "ts_ls",
        "eslint",
        "tailwindcss",
        "emmet_ls",
        "jsonls",

        -- Low-Level Programming LSPs
        "clangd",
        "rust_analyzer",
        "pyright",
        "bashls",
        "cmake",
        "zls",
    },
})
-- LSPConfig setup
local lspconfig = require("lspconfig")

-- Common on_attach function for keymaps
local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

-- LSP configurations
local servers = {
    "html", "cssls", "ts_ls", "eslint", "tailwindcss", "emmet_ls", "jsonls",
    "clangd", "rust_analyzer", "pyright", "bashls", "cmake", "zls",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
end

