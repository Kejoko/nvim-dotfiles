return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require "alpha"
        local dashboard = require "alpha.themes.startify"

        dashboard.section.header.val = {
            [[ w  ]],
            [[  j ]],
            [[ w  ]],
            [[  j ]],
            [[ wj ]],
            [[ jw ]],
        }

        alpha.setup(dashboard.opts)
    end,
}
-- return {
--     "goolord/alpha-nvim",
--     -- dependencies = { "echasnovski/mini.icons" },
--     dependencies = { "nvim-tree/nvim-web-devicons" },
--     config = function()
--         local startify = require "alpha.themes.startify"
--         -- available: devicons, mini, default is mini
--         -- if provider not loaded and enabled is true, it will try to use another provider
--         startify.file_icons.provider = "devicons"
--         require("alpha").setup(startify.config)
--     end,
-- }
