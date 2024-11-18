local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "

-- Save file
map("n", "<leader>w", ":w<CR>", opts)

-- Quit
map("n", "<leader>q", ":q<CR>", opts)

-- Telescope bindings
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- neotree
map("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
map("n", "<leader>o", ":Neotree focus<CR>", { noremap = true, silent = true })


map("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true, silent = true }) -- Open terminal
map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true }) -- Exit terminal mode

