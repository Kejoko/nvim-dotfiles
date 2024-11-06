-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
        { "<leader>n", ":Neotree reveal<CR>", desc = "[N]eoTree reveal", silent = true },
        { "<leader>ns", ":Neotree show<CR>", desc = "[N]eoTree [s]how", silent = true },
        { "<leader>nc", ":Neotree close<CR>", desc = "[N]eoTree [c]lose", silent = true },
    },
    config = function()
        require("neo-tree").setup {
            close_if_last_window = true,
            -- hijack_netrw_behavior = "open_default", -- TODO: fix this so we can use neo-tree when we first start Neovim
            enable_git_status = true,

            filesystem = {
                window = {
                    mappings = {
                        ["nc"] = "close_window",
                    },
                },
                filtered_items = {
                    visible = false, -- when true, they will just be displayed differently than normal items
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = true, -- only works on Windows for hidden files/directories
                    hide_by_name = {
                        ".DS_Store",
                        "thumbs.db",
                        --"node_modules",
                    },
                    hide_by_pattern = {
                        --"*.meta",
                        --"*/src/*/tsconfig.json",
                    },
                    always_show = { -- remains visible even if other settings would normally hide it
                        --".gitignored",
                    },
                    always_show_by_pattern = { -- uses glob style patterns
                        --".env*",
                    },
                    never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                        "DS_Store",
                        --"thumbs.db",
                    },
                    never_show_by_pattern = { -- uses glob style patterns
                        --".null-ls_*",
                    },
                },
            },

            buffers = {
                follow_current_file = {
                    enabled = true, -- This will find and focus the file in the active buffer every time the current file is changed while the tree is open.
                    leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                },
            },
        }
    end,
}
