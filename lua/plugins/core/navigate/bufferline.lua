return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        -- local c = require("vscode.colors").get_colors()
        -- local c = require("kanagawa.colors").setup()

        require("bufferline").setup {
            options = {
                numbers = "buffer_id",
                indicator = {
                    -- style = "underline",
                    style = "icon",
                    icon = "▎",
                },
                buffer_close_icon = "󰅖",
                close_icon = " ",
                modified_icon = "●",
                left_trunc_marker = "",
                right_trunc_marker = "",
                color_icons = false, -- for file type icons
                offsets = { { filetype = "neo-tree", text = "File Explorer", text_align = "center", separator = false } },
                right_mouse_command = "bdelete! %d",
                close_command = "bdelete %d",
                show_close_icon = false,
                show_tab_indicators = true,
            },

            -- highlights = {
            --     ---------------------------------------------------------------
            --     -- General
            --     ---------------------------------------------------------------
            --     numbers = {
            --         fg = c.vscCursorDark,
            --         bg = c.vscDarkDark,
            --     },
            --     duplicate = {
            --         fg = c.vscCursorDark,
            --         bg = c.vscDarkDark,
            --     },
            --     background = {
            --         fg = c.vscCursorDark,
            --         bg = c.vscDarkDark,
            --     },
            --     modified = {
            --         fg = c.vscCursorDark,
            --         bg = c.vscDarkDark,
            --     },
            --     close_button = {
            --         fg = c.vscCursorDark,
            --         bg = c.vscDarkDark,
            --     },
            --     separator = {
            --         -- fg = c.vscPink,
            --         fg = c.vscCursorLight,
            --         bg = c.vscDarkDark,
            --     },

            --     ---------------------------------------------------------------
            --     -- The buffer is the one we're actively editing
            --     ---------------------------------------------------------------
            --     numbers_selected = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --         bold = false,
            --         italic = false,
            --     },
            --     duplicate_selected = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --         italic = false,
            --     },
            --     buffer_selected = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --         bold = false,
            --         italic = false,
            --     },
            --     modified_selected = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --     },
            --     close_button_selected = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --     },

            --     ---------------------------------------------------------------
            --     -- The buffer is the one we have open but it isn't active
            --     ---------------------------------------------------------------
            --     numbers_visible = {
            --         fg = c.vscFront,
            --         bg = c.vscDarkDark,
            --     },
            --     duplicate_visible = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --         italic = false,
            --     },
            --     buffer_visible = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --     },
            --     modified_visible = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --     },
            --     close_button_visible = {
            --         fg = c.vscFront,
            --         bg = c.vscBack,
            --     },
            -- },
        }
    end,
}
