--[[
This is a neovim config made by:
GustavPetterssonBjorklund

Please give credit if you use software or other made by made
--]]


-- Load basic settings
require("settings")

-- Load keymaps
require("keymaps")

-- Load plugins using Lazy.nvim
require("plugins")

-- Load autocommands
require("autocommands")

-- LSP Configuration
require("lsp")

-- Treesitter Configuration
require("treesitter")

-- Load custom configs
require("config.cmp") -- Autocomplete and snippets setup

-- require neo-tree
require("config.neo-tree")

-- toggleterm (terminal)
require("config.toggleterm")
