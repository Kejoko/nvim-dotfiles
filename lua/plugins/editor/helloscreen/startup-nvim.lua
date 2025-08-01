return {
    "max397574/startup.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
        -- vim.g.startup_disable_on_startup = true

        require("startup").setup {
            -- theme = "evil",
            header = {
                type = "text",
                align = "center",
                fold_section = false,
                title = "Header",
                margin = 0,
                content = {
                    [[                        ]],
                    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⣴⣷⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢿⣾⣿⣿⣴⡆⠀⠀⠀⠀⠀  ]],
                    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⣾⢏⣾⠟⠁⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⠀⠀⠀⠀⠀⣠⣾⠟⠀⠀⣴⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⠀⠀⠀⢀⣴⡿⠁⠀⠀⢀⣿⠇⠀⠀⠀⠀⠀⢰⣦⡀⠀  ]],
                    [[⠀⠀⠀⣠⡿⠋⠀⠀⠀⢀⣼⡿⠀⠀⠀⠀⠀⠀⠀⠹⣷⡀  ]],
                    [[⠀⢀⣾⠟⠁⠀⠀⢀⣤⡌⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇  ]],
                    [[⠀⣿⠇⠀⠀⠀⣴⣿⣯⡀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⣿⡇  ]],
                    [[⠐⣿⢰⣷⠀⠀⠉⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⣿⢅⣼⡟⠀  ]],
                    [[⠀⣿⡇⣿⣆⣠⣤⣴⣶⣷⡀⠀⠀⠀⠀⠀⣼⣿⡿⠋⠀⠀  ]],
                    [[⠀⢻⡟⣿⠛⠋⠉⠁⢸⣿⣷⠀⠀⠀⢀⣼⡿⠋⠀⠀⠀⠀  ]],
                    [[⠀⢹⣗⣿⠀⠀⠀⠀⢸⡟⢿⣇⢀⣴⡿⠋⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⢸⡗⣿⠀⠀⠀⠀⣾⡏⠈⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⣽⡇⣿⠀⠀⠀⠀⣿⠇⢰⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⣿⣇⡏⠀⠀⠀⣸⡿⢀⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⢠⣿⣹⠃⠀⠀⣠⣿⢃⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⣾⣯⡏⠀⢀⣴⡿⣡⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⢿⣟⢠⣴⡿⢋⣴⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠘⢿⣼⣿⣾⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[⠀⠈⠻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
                    [[                        ]],
                },
                highlight = "Statement",
                default_color = "",
                oldfiles_amount = 0,
            },

            header_2 = {
                type = "text",
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "Quote",
                margin = 0,
                content = require("startup.functions").quote(),
                highlight = "Constant",
                default_color = "",
                oldfiles_amount = 0,
            },

            clock = {
                type = "text",
                content = function()
                    local clock = " " .. os.date "%H:%M"
                    local date = " " .. os.date "%d-%m-%y"
                    return { clock, date }
                end,
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "",
                margin = 0,
                highlight = "TSString",
                default_color = "#FFFFFF",
                oldfiles_amount = 10,
            },

            body = {
                type = "mapping",
                oldfiles_directory = false,
                align = "center",
                fold_section = false,
                title = "Basic Commands",
                margin = 0,
                content = {
                    { " Find File", "Telescope find_files", "<leader>ff" },
                    { "󰍉 Find Word", "Telescope live_grep", "<leader>lg" },
                    { " Recent Files", "Telescope oldfiles", "<leader>of" },
                    { " File Browser", "Telescope file_browser", "<leader>fb" },
                    { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
                    { " New File", "lua require'startup'.new_file()", "<leader>nf" },
                },
                highlight = "String",
                default_color = "",
                oldfiles_amount = 0,
            },

            options = {
                after = function()
                    require("startup.utils").oldfiles_mappings()
                end,
                mapping_keys = true,
                cursor_column = 0.5,
                empty_lines_between_mappings = false,
                disable_statuslines = false,
                paddings = { 1, 1, 1, 1 },
            },

            parts = {
                "header",
                "header_2",
                "body",
                "clock",
            },
        }
    end,
}
