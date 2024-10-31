return {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
        -- Load the colorscheme here.
        -- Like many other themes, this one has different styles, and you could load
        -- any other, such as 'kanagawa-wave', 'kanagawa-dragon', or 'kanagawa-lotus'.
        vim.cmd.colorscheme "kanagawa-dragon"

        -- You can configure highlights by doing something like:
        -- vim.cmd.hi "Comment gui=none"
    end,
}
