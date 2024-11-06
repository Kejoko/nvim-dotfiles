return {
    "b0o/incline.nvim",
    config = function()
        local c = require("vscode.colors").get_colors()

        require("incline").setup {
            window = {
                padding = 0,
                margin = { horizontal = 0 },
            },

            render = function(props)
                local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

                if filename == "" then
                    filename = "[no name]"
                end

                return {
                    { filename, gui = "italic" },
                    guifg = c.vscCursorLight,
                    guibg = c.vscBack,
                }
            end,
        }
    end,
}
