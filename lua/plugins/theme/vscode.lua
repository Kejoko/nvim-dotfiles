return {
    "Mofiqul/vscode.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
        -- Load the colorscheme here.
        vim.cmd.colorscheme "vscode"

        -- You can configure highlights by doing something like:
        -- vim.cmd.hi "Comment gui=none"
    end,
    opts = {
        -- Set style in setup
        style = "dark",

        -- Enable transparent background (this essentially uses Kitty's background)
        transparent = false,

        -- Enable italic comment
        italic_comments = true,

        -- Underline `@markup.link.*` variants
        underline_links = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Override colors (see ./lua/vscode/colors.lua in the github repository)
        color_overrides = {
            -- vscLineNumber = "#FFFFFF",
        },

        -- Override highlight groups (see ./lua/vscode/theme.lua in the github repository)
        group_overrides = {
            -- this supports the same val table as vim.api.nvim_set_hl
            -- use colors from this colorscheme by requiring vscode.colors!
            -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        },
    },
}
