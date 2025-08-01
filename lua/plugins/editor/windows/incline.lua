return {
    "b0o/incline.nvim",
    config = function()
        -- local c = require("vscode.colors").get_colors()
        local c = require("kanagawa.colors").setup()

        require("incline").setup {
            window = {
                padding = 0,
                margin = { horizontal = 0 },
            },

            render = function(props)
                local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

                local is_modified = vim.bo[props.buf].modified
                local is_current = props.focused

                local fg = c.palette.sumiInk6
                if is_current then
                    fg = c.palette.dragonWhite
                end
                local bg = c.theme.ui.bg

                return {
                    " ",
                    { filename, gui = is_modified and "bold,italic" or "bold" },
                    " ",

                    -- kanagawa wave colors
                    guifg = fg,
                    guibg = bg,

                    -- vscode colors
                    -- guifg = c.vscCursorLight,
                    -- guibg = c.vscBack,
                }
            end,
        }
    end,
}
