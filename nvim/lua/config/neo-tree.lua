require("neo-tree").setup({
    close_if_last_window = true, -- Close Neo-tree if it's the last window
    popup_border_style = "rounded", -- Border style for popups
    enable_git_status = true, -- Show git status
    enable_diagnostics = true, -- Show diagnostics
    default_component_configs = {
        indent = {
            padding = 1, -- Add padding on the left
        },
        icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "ﰊ",
            default = "*",
        },
        git_status = {
            symbols = {
                added = "✚",
                modified = "",
                deleted = "✖",
                renamed = "",
                untracked = "★",
                ignored = "◌",
            },
        },
    },
    filesystem = {
        follow_current_file = {
            enabled = true, -- Enable highlighting of the current file
        },
        hijack_netrw_behavior = "open_default", -- Replace netrw
        filtered_items = {
            visible = true, -- Show hidden files
            hide_dotfiles = false,
            hide_gitignored = false,
        },
    },
    window = {
        width = 30, -- Width of the Neo-tree window
        mappings = {
            ["<space>"] = "none", -- Disable space for select
        },
    },
})

